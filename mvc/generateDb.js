require('dotenv').config();
var mvcIntegratorDb2 = require('mvc-integrator/db/db2/mvc-integrator-db2');

//This call will get a connection
console.log("Initiating the database " + process.env.DB_DATABASE + "...");
mvcIntegratorDb2.connect(process.env.DB_DATABASE, process.env.DB_HOSTNAME, process.env.DB_PORT, process.env.DB_UID, process.env.DB_PWD,
  function startCompare(db, error) {
    if (db) {
        mvcIntegratorDb2.compareTables(process.env.DB_SCHEMA, __dirname + '/services.vuerd.json', __dirname + "/db/");
        db.close(function () {
          console.log('Done!');
        });
    }
    else {
      db.close(function () {
        console.log("Unfortunally something happened when initiating the database.\n" + error);
      });
    }
});