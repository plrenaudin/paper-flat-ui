module.exports =
  config:
    fontSize:
      title: 'Font Size'
      description: 'Change the UI font size. Needs to be between 10 and 20.'
      type: ['integer', 'string']
      minimum: 10
      maximum: 20
      default: 'Auto'

    useFancyStyle:
      type: 'boolean'
      description: 'Use fancy style. Uncheck if it breaks some features.'
      default: true

    color:
      type: 'string'
      default: 'Green'
      enum: [
        'Red',
        'Pink',
        'Purple',
        'Deep Purple',
        'Indigo',
        'Blue',
        'Light Blue',
        'Cyan',
        'Teal',
        'Green',
        'Light Green',
        'Lime',
        'Yellow',
        'Amber',
        'Orange',
        'Deep Orange',
        'Brown',
        'Grey',
        'Blue Grey'
      ]

  activate: (state) ->
    atom.themes.onDidChangeActiveThemes ->
      Config = require './config'
      Config.apply()
