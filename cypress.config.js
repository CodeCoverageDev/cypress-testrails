const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      require('cypress-testrail-simple/src/plugin')(on, config)
    },
  },
});
