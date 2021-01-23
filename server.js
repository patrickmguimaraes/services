var fs = require('fs');
var readline = require('readline');

var pathServiceApp = "/../services-user-mobile/src/models/";
const pathReadLine = readline.createInterface({ input: process.stdin, output: process.stdout });
var saveOn = Array();

saveOn.push(__dirname + "/model/items/");

pathReadLine.question('Would you like to generate models also on ' + (__dirname + pathServiceApp) + "? (Y/n): ", (answer) => {
  var writeOnModelServiceUserApp = (answer == 'Y' || answer == 'y') ? true : false;

  if (writeOnModelServiceUserApp) { saveOn.push(__dirname + pathServiceApp); }

  createFiles(__dirname + '/model/services.vuerd.json', saveOn, true);
  pathReadLine.close();
});

/**
 * Generete files TS with the models created on ERD Editor. The system will save the files on the paths sent on the list 'saveOn'.
 * @param {String} erdEditorFile - Path from the file where was build the model using ERD Editor
 * @param {Array<String>} saveOn - Folders paths on the system to save the files
 * @param {Boolean} addColumnFromRightTableOnLeftTable - When is One to One relationship, the system will generate models with the referenced column left table even if this table doens't have an fk from the right table.
 */
function createFiles(erdEditorFile, saveOn, addColumnFromRightTableOnLeftTable = true) {
  var mainFile = fs.readFileSync(erdEditorFile);
  if (!mainFile) { console.log("The file with models '" + erdEditorFile + "' couldn´t be read."); return; }

  var model = JSON.parse(mainFile);
  
  var tableName, columnName, referenceClass, columnValue;
  var tablesMatrix = generateTablesMatrix(model.table.tables);
  var relationshipsMatrix = generateRelationshipMatrix(tablesMatrix, model.relationship.relationships);

  //Fullfil the tableMatrix with more values (columns, colunmsReferencedAndList and allImports)
  model.table.tables.forEach(table => {
    tableName = table.name;

    //Search each column and resolve fks
    table.columns.forEach(column => {
      //Save pks and normal columns
      if (column.ui.fk == false) {
        columnName = column.name;
        referenceClass = getType(column.dataType, column.option.notNull);
        columnValue = column.default != "" ? column.default : getInitialValue(column.dataType);

        tablesMatrix[table.id].columns.push({ name: columnName, type: referenceClass, value: columnValue });
      }
      //Change and save the fks
      else {
        columnName = column.name.substring(2, 3).toLowerCase() + column.name.substring(3);
        referenceClass = relationshipsMatrix[column.id].leftTable;
        columnValue = "new " + relationshipsMatrix[column.id].leftTable + "()";

        //Save imports on the right table (where the fk is)
        tablesMatrix[table.id].allImports.push({ class: referenceClass });

        //Save the column with the properly name and type
        tablesMatrix[table.id].columns.push({ name: columnName, type: referenceClass, value: columnValue });

        switch (relationshipsMatrix[column.id].relationshiptType) {
          case "OneN": {
            //Save imports on the left table
            tablesMatrix[relationshipsMatrix[column.id].leftTableId].allImports.push({ class: tableName });

            //Save a list colunm on the other side table (left) 
            columnName = columnName + tableName + "List"
            referenceClass = "Array<" + tableName + ">";
            columnValue = "new Array<" + tableName + ">()";
            tablesMatrix[relationshipsMatrix[column.id].leftTableId].colunmsReferencedAndList.push({ name: columnName, type: referenceClass, value: columnValue });
            break;
          }
          case "OneOnly": {
            if (addColumnFromRightTableOnLeftTable) {
              //Save imports on the left table
              tablesMatrix[relationshipsMatrix[column.id].leftTableId].allImports.push({ class: tableName });

              //Save a referenced colunm on the other side table (left) 
              columnName = columnName + tableName + "Referenced"
              referenceClass = tableName;
              columnValue = "new " + tableName + "()";
              tablesMatrix[relationshipsMatrix[column.id].leftTableId].colunmsReferencedAndList.push({ name: columnName, type: referenceClass, value: columnValue });
            }
            break;
          }
          default: break;
        }
      }
    });
  });

  saveOn.forEach(saveOnFolder => {
    if (!saveOnFolder.endsWith("/")) { saveOnFolder = saveOnFolder + "/"; }

    if (fs.existsSync(saveOnFolder)) {
      console.log("==>Removing all files on " + saveOnFolder);

      fs.readdirSync(saveOnFolder, function (err, files) {
        if (err) { console.log(err); return; }

        files.forEach(file => {
          fs.unlinkSync(saveOnFolder + file, (err) => {
            if (err) { console.log(err); return; }
            console.log("Successfully removed " + file);
          });
        });
      });
    }
    else {
      console.log("==>Creating dir on " + saveOnFolder);
      fs.mkdirSync(saveOnFolder, { recursive: true }, (err) => {
        if (err) { throw err; }
      });
    }
  });

  console.log("==>Creating new files on " + saveOn.toString());

  model.table.tables.forEach(tableERDEditor => {
    var data = "";
    var importData, referencedOrListColumn, dataReferencedOrList = "";
    var importsAlreadyAdd = Array();

    //Add the imports
    tablesMatrix[tableERDEditor.id].allImports.forEach(importItem => {
      importData = "import { " + importItem.class + "} from \"./" + importItem.class + "\";\n";

      //Ignore the repeated imports
      if (importsAlreadyAdd.includes(importItem.class)==false) {
        data = data + importData;
        importsAlreadyAdd.push(importItem.class);
      }
    });

    data = data!="" ? data + "\n" : "";
  
    //Start the class declaration
    data = data + "export class " + tablesMatrix[tableERDEditor.id].name + " {\n";

    //Add all columns
    tablesMatrix[tableERDEditor.id].columns.forEach(column => {
      data = data + "  " + column.name + ": " + column.type + (column.value != null ? (" = " + column.value) : "") + ";\n";
    });

    //Add lists with tables connected on the left
    dataReferencedOrList = "";
    tablesMatrix[tableERDEditor.id].colunmsReferencedAndList.forEach(column => {
      referencedOrListColumn = "  " + column.name + ": " + column.type + (column.value != null ? (" = " + column.value) : "") + ";\n";

      if (column.name.endsWith("Referenced")) {
        dataReferencedOrList = referencedOrListColumn + dataReferencedOrList;
      }
      else {
        dataReferencedOrList = dataReferencedOrList + referencedOrListColumn;
      }
    });
    data = data + dataReferencedOrList;

    //Finish the class
    data = data + "}";

    saveOn.forEach(saveOnFolder => {
      if (!saveOnFolder.endsWith("/")) { saveOnFolder = saveOnFolder + "/"; }

      fs.writeFileSync(saveOnFolder + tablesMatrix[tableERDEditor.id].name + ".ts", data, (err) => {
        if (err) { console.log(err); return; }
        console.log("\nSuccessfully written " + fileName);
      });
    });
  });

  console.log("\n\nDone! on " + new Date(new Date().setHours(12, 0, 0, 0)));
}

/**
 * Get the type of a column.
 * @param {String} dataType - Value of the dataType.
 * @param {Boolean} notNull - Value to indicate if the column can be null.
 */
function getType(dataType, notNull) {
  dataType = dataType.toUpperCase();

  if (dataType == "BIGINT" || dataType == "SMALLINT" || dataType == "INT" || dataType == "REAL") {
    if (notNull) { return "number"; }
    else { return "Number"; }
  }
  else if (dataType == "VARCHAR" || dataType == "TEXT") {
    if (notNull) { return "string"; }
    else { return "String"; }
  }
  else if (dataType == "DATE" || dataType == "DATETIME") {
    return "Date";
  }
  else if (dataType == "BOOLEAN") {
    if (notNull) { return "boolean"; }
    else { return "Boolean"; }
  }

  return null;
}

/**
 * Identify if the column needs be initiate and send the properly value.
 * @param {String} dataType - Value of the dataType.
 * @param {Boolean} notNull - Value to indicate if the column can be null.
 */
function getInitialValue(dataType) {
  if (dataType.toUpperCase() == "DATETIME") {
    return "new Date();";
  }
  else if (dataType.toUpperCase() == "DATE") {
    return "new Date(new Date().setHours(12, 0, 0, 0))";
  }
  else if (dataType.toUpperCase() == "REAL") {
    return "0.0";
  }

  return null;
}

/**
 * Generate a matrix with all tables with the key of the table and the name of the class
 * @param {Array} tables 
 */
function generateTablesMatrix(tables) {
  var tablesMatrix = {};

  tables.forEach(table => {
    tablesMatrix[table.id] = { name: table.name, columns: [], colunmsReferencedAndList: [], allImports: [] };
  });

  return tablesMatrix;
}

/**
 * Generate one matrix with all the relationships, returning an id as the key and other information indicating the relationship between one class and another.
 * @param {Array} tables - Array with key (matrix) with all the tables from ERD Editor.
 * @param {Array} relationships - Array with the all the relationships from ERD Editor.
 */
function generateRelationshipMatrix(tablesMatrix, relationships) {
  var relationshipsMatrix = {};

  //The key of the matrix is the fk on the right table
  relationships.forEach(relationship => {
    relationshipsMatrix[relationship.end.columnIds[0]] = { leftTable: tablesMatrix[relationship.start.tableId].name, leftTableId: relationship.start.tableId, rightTable: tablesMatrix[relationship.end.tableId].name, relationshiptType: relationship.relationshipType };
  });

  return relationshipsMatrix;
}