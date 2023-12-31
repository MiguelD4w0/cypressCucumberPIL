const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const addCucumberPreprocessorPlugin =
  require("@badeball/cypress-cucumber-preprocessor").addCucumberPreprocessorPlugin;
const createEsbuildPlugin =
  require("@badeball/cypress-cucumber-preprocessor/esbuild").createEsbuildPlugin;
module.exports = defineConfig({
  env:{
    TAGS: "not @ignore",
    //Configuración de las URLs
    YVYTU_URL: "https://vientosdelaselva.com.ar/",
    EDEN_URL: "https://www.edenentradas.com.ar/",
    CLARO_URL: "https://tienda.claro.com.ar/",
    DEXTER_URL: "https://www.dexter.com.ar/",
    STORE_URL: "https://automationteststore.com/",
    CINEMARK_URL: "https://www.cinemarkhoyts.com.ar/",
    //Configuración de los usuarios 
  },
  e2e: {
    specPattern: "cypress/e2e/features/**/*.feature",
    async setupNodeEvents(on, config) {
      const bundler = createBundler({
        plugins: [createEsbuildPlugin(config)],
      });
      on("file:preprocessor", bundler);
      await addCucumberPreprocessorPlugin(on, config);
      return config;
    },
  },
  viewportWidth: 1536,
  viewportHeight: 960,
  video: false,
  retries: {
    openMode: 0,
    runMode: 2,
  },
  defaultCommandTimeout: 8000,
  //numTestsKeptInMemory: 0,
});
