import $ from 'jquery'

const VideoLazyLoading = {
  init: function () {
    const $videoWrapper = $('.js-video-lazy-load')

    if (!$videoWrapper.length) return

    const videoUrl = $videoWrapper.data('embed')
    const [, videoId] = videoUrl.split('/embed/')

    const source = `https://img.youtube.com/vi/${videoId}/sddefault.jpg`

    $videoWrapper.append(
      $('<img/>', {
        src: source
      })
    )

    $videoWrapper.on('click', function (e) {
      e.preventDefault()
      const videoSource = `https://www.youtube.com/embed/${videoId}?rel=0&showinfo=0&autoplay=1`
      $(this).html('')
      $(this).append(
        $('<iframe/>', {
          frameborder: 0,
          allowfullscreen: true,
          src: videoSource
        })
      )

      const iframe = $('iframe')[0]

      const requestFullScreen =
        iframe.requestFullScreen ||
        iframe.mozRequestFullScreen ||
        iframe.webkitRequestFullScreen ||
        iframe.msRequestFullscreen

      if (requestFullScreen) {
        requestFullScreen.bind(iframe)()
      }
    })
  }
}

VideoLazyLoading.init()
