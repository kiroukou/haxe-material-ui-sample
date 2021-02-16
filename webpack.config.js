const webpackConfig = require('./webpack-config');

module.exports = webpackConfig({
  dirname: __dirname,
  isProd: false,
  isHttps: false,
  useFriendlyErrors: true,
  serverPort: 9161
});

