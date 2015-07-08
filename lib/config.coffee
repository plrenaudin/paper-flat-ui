module.exports =

  apply: ->

    root = document.querySelector('body')

    # Font Size
    setFontSize = (currentFontSize) ->
      if Number.isInteger(currentFontSize)
        root.style.fontSize = currentFontSize + 'px'
      else if currentFontSize is 'Auto'
        root.style.fontSize = ''

    setColor = (color) ->
      root.setAttribute('color', color?='Green')

    atom.config.onDidChange 'paper-flat-ui.fontSize', ->
      setFontSize(atom.config.get('paper-flat-ui.fontSize'))

    atom.config.onDidChange 'paper-flat-ui.color', ->
      setColor(atom.config.get('paper-flat-ui.color'))

    setFontSize(atom.config.get('paper-flat-ui.fontSize'))
    setColor(atom.config.get('paper-flat-ui.color'))
