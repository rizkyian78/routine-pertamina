const fs = require("fs");
const node = require("node-cron");
const shell = require("shelljs");

node.schedule("0 0 */2 * * *", () => {
  shell.exec("sh ./dbDump.sh");
});
