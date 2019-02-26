const { environment } = require('@rails/webpacker')
const typescript =  require('./loaders/typescript')

environment.loaders.prepend('typescript', typescript)
// so that modules in app/javascript don't shadow the ones in node_modules
environment.resolvedModules.delete('source')
module.exports = environment
