import Swiper from 'swiper/dist/js/swiper'

const Sliders = {
  init: function () {
    this.latestNewsSlider()
    this.quickLinksSlider()
    this.ourStorySlider()
    this.ourStorySliderBullets()
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
  },
  ourStorySlider: function () {
    const sliderClass = '.js-slider-our-story'
    if (document.querySelector(sliderClass)) {
      Sliders.heroSwiper = new Swiper(sliderClass, {
        loop: false,
        autoplay: false,
        speed: 300,
        slidesPerView: 1,
        spaceBetween: 25,
        navigation: {
          nextEl: '.js-slider-our-story-next',
          prevEl: '.js-slider-our-story-prev'
        },
        breakpointsInverse: true,
        breakpoints: {
          768: {
            spaceBetween: 10
          },
          1200: {
            slidesPerView: 3,
            spaceBetween: 25
          }
        },
        on: {
          slideChange: this.ourStorySliderBulletsCallback
        }
      })
    }
  },
  ourStorySliderBullets: function () {
    const sliderClass = '.js-slider-our-story'
    if (document.querySelector(sliderClass)) {
      const slider = document.querySelector(sliderClass)
      const slides = slider.querySelectorAll('.swiper-slide')
      // const nav = slider.querySelector('.js-slider-our-story-nav')
      const dates = []
      Array.from(slides).forEach(slide => {
        const date = slide.querySelector('.js-slider-date').innerHTML
        dates.push(date)
      })
      console.log(dates)
    }
  },
  ourStorySliderBulletsCallback: function () {
    console.log('a')
  }
}

Sliders.init()
