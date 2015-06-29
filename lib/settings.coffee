module.exports =
  config:

    fontSize:
      title: 'Font Size'
      description: 'Change the UI font size. Needs to be between 10 and 20.'
      type: ['integer', 'string']
      minimum: 10
      maximum: 20
      default: 'Auto'

  activate: (state) ->
    atom.themes.onDidChangeActiveThemes ->
      Config = require './config'
      Config.apply()
