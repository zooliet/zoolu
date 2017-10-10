jQuery ->
  adjustMainHeight = () =>
    totalHeight = $('body').height()
    marginHeight = $('main').outerHeight(true) - $('main').height()
    headerHeight = $('nav#header').outerHeight(true)
    footerHeight = $('nav#footer').outerHeight(true)
    mainHeight = totalHeight - headerHeight - footerHeight - marginHeight
    $('main').height(mainHeight)

  $(window).resize () =>
    adjustMainHeight()

  $(window).resize()
