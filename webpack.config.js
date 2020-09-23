const path = require('path');
const loaders = require('./webpack/loaders.js');
const plugins = require('./webpack/plugins.js');

module.exports = {
  mode: process.env.NODE_ENV === 'production' ? 'production' : 'development',
  entry: {
    search: './source/javascripts/search.js',
    consent: './source/javascripts/consent.js',
    ga: './source/javascripts/ga.js',
  },
  module: {
    rules: [
      loaders.JSLoader,
      loaders.ESLintLoader,
      loaders.CSSLoader
    ]
  },
  plugins: [
    plugins.MiniCssExtractPlugin,
  ],
  output: {
    filename: 'javascripts/[name].js',
    path: path.resolve(__dirname, '.tmp/dist')
  }
};
