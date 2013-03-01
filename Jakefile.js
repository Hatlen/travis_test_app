/*global desc, task, jake, fail, complete */
(function() {
"use strict";
desc("Default task");
task('default', ['lint', 'test']);

desc("Lint all code");
task('lint', [], function() {
  var lint = require('./build/lint/lint_runner.js');
  var files = new jake.FileList();
  files.include("**/*.js");
  files.exclude("node_modules")
  if (!lint.validateFileList(files.toArray(), nodeLintOptions(), {})) {
    fail('Lint fail');
  }
});

desc("Test the code");
task('test', [], function() {
  console.log('Running the tests');
});

function nodeLintOptions() {
  return {
    bitwise:true,
    curly:false,
    eqeqeq:true,
    forin:true,
    immed:true,
    latedef:true,
    newcap:true,
    noarg:true,
    noempty:true,
    nonew:true,
    regexp:true,
    undef:true,
    strict:true,
    trailing:true,
    node:true
  };
}
}());
