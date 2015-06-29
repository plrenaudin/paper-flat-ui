module.exports =

  apply: ->

    root = document.querySelector('body')

    # Font Size
    setFontSize = (currentFontSize) ->
      if Number.isInteger(currentFontSize)
        root.style.fontSize = currentFontSize + 'px'
      else if currentFontSize is 'Auto'
        root.style.fontSize = ''

    atom.config.onDidChange 'paper-flat-ui.fontSize', ->
      setFontSize(atom.config.get('paper-flat-ui.fontSize'))

    setFontSize(atom.config.get('paper-flat-ui.fontSize'))
    setTabColor(atom.config.get('paper-flat-ui.customTabColor'))
