const fs = require("fs");
const node = require("node-cron");
const shell = require("shelljs");

node.schedule("0 1 * * *", () => {
  shell.exec("sh ./dbDump.sh");
});
