desc("Default task");
task('default', ['lint']);

desc("Lint all code");
task('lint', [], function() {
  var lint = require('./build/lint/lint_runner.js');
  var files = new jake.FileList();
  files.include("**/*.js");
  files.exclude("node_modules");

  var options = {
    node: true
  };

  lint.validateFileList(files.toArray(), options, {});
});
