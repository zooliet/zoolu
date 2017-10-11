# jQuery ->
#   adjustMainHeight = () =>
#     totalHeight = $('body').height()
#     marginHeight = $('main').outerHeight(true) - $('main').height()
#     headerHeight = $('nav#header').outerHeight(true)
#     footerHeight = $('nav#footer').outerHeight(true)
#     mainHeight = totalHeight - headerHeight - footerHeight - marginHeight
#     $('main').height(mainHeight)
#
#   $(window).resize () =>
#     adjustMainHeight()
#
#   $(window).resize()

jQuery ->
  adjustFooter = () =>
    windowHeight = $(window).height()
    contentHeight = $('div.content').outerHeight(true)
    headerHeight = $('nav#header').outerHeight(true)
    footerHeight = $('nav#footer').outerHeight(true)

    if windowHeight > contentHeight+headerHeight+footerHeight
      console.log(true)
      marginHeight = $('main').outerHeight(true) - $('main').height()
      mainHeight = windowHeight - headerHeight - footerHeight - marginHeight
      $('main').height(mainHeight)

  $(window).resize () =>
    adjustFooter()

  $(window).resize()
