module.exports = {
  source: ['dispatches/tokens.json'],
  platforms: {
    web: {
      transformGroup: 'web',
      buildPath: 'dist/',
      files: [
        {
          destination: 'tokens.json',
          format: 'json/flat',
          options: {
            outputReferences: false
          }
        },
        {
          destination: 'tokens-nested.json',
          format: 'json/nested',
          options: {
            outputReferences: false
          }
        },
        {
          destination: 'tokens-css.json',
          format: 'css/variables',
          options: {
            outputReferences: false
          }
        }
      ]
    }
  }
};
