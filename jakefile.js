desc("An example task");
task('example', ['dependency'], function() {
  console.log('Example!');
});

desc("A dependency task for the example task");
task('dependency', function() {
  console.log('Dependency!');
});
