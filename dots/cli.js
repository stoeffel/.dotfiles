#!/usr/bin/env node

var argv = require('yargs')
  .usage('dots <command>')
  .command('link', 'link all dot files to the root of your home')
  .argv;

var command = argv._[0];

if (command === 'link') {

} else {
  yargs.showHelp();
}
