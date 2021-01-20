var fs = require('fs');

var model;

fs.readFile(__dirname + '/model/services-classes.ts', function (err, bufferFile) {
  if (err) { console.log("File with all models not file on /model/services-classes.ts"); return; }

  model = bufferFile.toString();
  var models = model.split("}");

  if(models.length==0) { console.log("No files found"); return }

  if (fs.existsSync(__dirname + "/model/items/")) {
    console.log("==>Removing all files on /model/items/\n");

    fs.readdirSync(__dirname + "/model/items/", function (err, files) {
      if (err) { console.log(err); return; }

      files.forEach(file => {
        console.log(file);
        fs.unlinkSync(__dirname + "/model/items/" + file, (err) => {
          if (err) { console.log(err); return; }
          console.log("Successfully removed " + file);
        });
      });
    });
  }
  else {
    console.log("Creating dir /model/items/\n");
    fs.mkdirSync(__dirname + "/model/items", { recursive: true }, (err) => {
      if (err) throw err;
    });
  }

  console.log("==>Creating new files on /model/items/\n");

  models.forEach(item => {
    var fileName = item.substring(item.search("export interface") + 17, item.search("{") - 1);
    var data = "export class " + fileName + "{\n  constructor(fields: any) {\n    for (const f in fields) {\n      this[f] = fields[f];\n    }\n  }\n}";

    if (fileName.trim() != "") {
      data = data + item + "}";

      fs.writeFileSync(__dirname + "/model/items/" + fileName + ".ts", data, (err) => {
        if (err) { console.log(err); return; }
        console.log("Successfully written " + fileName);
      });
    }
  });

  console.log("Done!\n");
});