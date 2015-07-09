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

    setFancy = (fancy) ->
      if fancy
        root.setAttribute('fancy','')
      else
        root.removeAttribute('fancy')

    atom.config.onDidChange 'paper-flat-ui.fontSize', ->
      setFontSize(atom.config.get('paper-flat-ui.fontSize'))

    atom.config.onDidChange 'paper-flat-ui.color', ->
      setColor(atom.config.get('paper-flat-ui.color'))

    atom.config.onDidChange 'paper-flat-ui.useFancyStyle', ->
      setFancy(atom.config.get('paper-flat-ui.useFancyStyle'))

    setFontSize(atom.config.get('paper-flat-ui.fontSize'))
    setColor(atom.config.get('paper-flat-ui.color'))
    setFancy(atom.config.get('paper-flat-ui.useFancyStyle'))
