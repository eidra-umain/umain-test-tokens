module.exports = {
  source: ['dispatches/tokens.json'],
  platforms: {
    ios: {
      transformGroup: 'ios',
      buildPath: 'dist/ios/',
      files: [
        {
          destination: 'tokens.json',
          format: 'json/flat',
          options: {
            outputReferences: false
          }
        },
        {
          destination: 'tokens.plist',
          format: 'ios/plist'
        }
      ]
    },
    android: {
      transformGroup: 'android',
      buildPath: 'dist/android/',
      files: [
        {
          destination: 'tokens.json',
          format: 'json/flat',
          options: {
            outputReferences: false
          }
        },
        {
          destination: 'tokens.xml',
          format: 'android/xml'
        }
      ]
    }
  }
};
