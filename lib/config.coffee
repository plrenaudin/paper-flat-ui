module.exports =

  apply: ->

    root = document.querySelector('body')

    # Font Size
    setFontSize = (currentFontSize) ->
      if Number.isInteger(currentFontSize)
        root.style.fontSize = currentFontSize + 'px'
      else if currentFontSize is 'Auto'
        root.style.fontSize = ''

    setTabColor = (color) ->
      root.setAttribute('tab-color', color?='Grey')

    atom.config.onDidChange 'paper-flat-ui.fontSize', ->
      setFontSize(atom.config.get('paper-flat-ui.fontSize'))

    atom.config.onDidChange 'paper-flat-ui.tabColor', ->
      setTabColor(atom.config.get('paper-flat-ui.tabColor'))

    setFontSize(atom.config.get('paper-flat-ui.fontSize'))
    setTabColor(atom.config.get('paper-flat-ui.tabColor'))
