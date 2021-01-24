var fs = require('fs');
var readline = require('readline');
var mvcIntegrator = require('mvc-integrator');

//This call will generate model files from the ERD model test made on "/test/model.vuerd.json
mvcIntegrator(__dirname + '/model/services.vuerd.json');