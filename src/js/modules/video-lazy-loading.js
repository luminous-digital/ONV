import $ from 'jquery'

const VideoLazyLoading = {
  init: function () {
    const $videoWrapper = $('.js-video-lazy-load')

    if (!$videoWrapper.length) return
    
    $videoWrapper.each(function () {
        const $wrap = $(this)
        const videoUrl = $wrap.data('embed')
        const [, videoId] = videoUrl.split('/embed/')

        const source = `https://img.youtube.com/vi/${videoId}/sddefault.jpg`

        $wrap.append(
            $('<img/>', {
                src: source
            })
        )

        $wrap.on('click', function (e) {
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
        })
    })
  }
}

VideoLazyLoading.init()
