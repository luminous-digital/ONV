import $ from 'jquery'

const ScrollToAnchor = {
  init: function () {
    const $scrollDownTrigger = $('.js-scroll-down')
    if ($scrollDownTrigger.length) {
      const $body = $('html, body')
      const scrollHeight = $('.l-hero').height() + 100
      const ANIMATION_SPEED = 500
      $scrollDownTrigger.on('click', function (e) {
        e.preventDefault()
        $body.animate({
          scrollTop: (scrollHeight)
        }, ANIMATION_SPEED)
      })
    }
  }
}

ScrollToAnchor.init()
