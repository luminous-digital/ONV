import Swiper from 'swiper/dist/js/swiper'

const Sliders = {
  init: function () {
    this.latestNewsSlider()
    this.quickLinksSlider()
  },
  latestNewsSlider: function () {
    const sliderClass = '.js-slider-latest-news'
    if (document.querySelector(sliderClass)) {
      Sliders.heroSwiper = new Swiper(sliderClass, {
        loop: true,
        autoplay: false,
        speed: 300,
        slidesPerView: 1,
        navigation: {
          nextEl: '.c-latest-news-wrapper__next',
          prevEl: '.c-latest-news-wrapper__prev'
        },
        breakpointsInverse: true,
        breakpoints: {
          768: {
            slidesPerView: 2,
            spaceBetween: 35
          },
          1200: {
            slidesPerView: 3,
            spaceBetween: 25
          }
        }
      })
    }
  },
  quickLinksSlider: function () {
    const sliderClass = '.js-slider-quick-links'
    if (document.querySelector(sliderClass)) {
      Sliders.heroSwiper = new Swiper(sliderClass, {
        loop: true,
        autoplay: false,
        speed: 300,
        slidesPerView: 1,
        navigation: {
          nextEl: '.c-quick-links-wrapper__next',
          prevEl: '.c-quick-links-wrapper__prev'
        },
        breakpointsInverse: true,
        breakpoints: {
          768: {
            slidesPerView: 2,
            spaceBetween: 25
          },
          1200: {
            slidesPerView: 3,
            spaceBetween: 25
          }
        }
      })
    }
  }
}

Sliders.init()
