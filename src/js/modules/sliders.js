import $ from 'jquery'
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
  ourStorySliderConfig: {
    sliderClass: '.js-slider-our-story'
  },
  ourStorySlider: function () {
    const sliderClass = this.ourStorySliderConfig.sliderClass
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
          }
        },
        on: {
          slideChange: this.ourStorySliderBulletsCallback
        }
      })
    }
  },
  ourStorySliderBullets: function () {
    const sliderClass = this.ourStorySliderConfig.sliderClass
    if (document.querySelector(sliderClass)) {
      const slider = document.querySelector(sliderClass)
      const slides = slider.querySelectorAll('.swiper-slide')
      const currentItem = Sliders.heroSwiper.activeIndex
      const nav = slider.querySelector('.js-slider-our-story-nav')
      let elemString = ''
      Array.from(slides).forEach((slide, index) => {
        const date = slide.querySelector('.js-slider-date').innerHTML
        let datePos
        if (index === currentItem) {
          datePos = 'current-slide is-active'
        } else if (index === currentItem + 1) {
          datePos = 'after-slide is-active'
        } else if (index === currentItem + 2) {
          datePos = 'after-after-slide is-active'
        } else if (index === currentItem - 1) {
          datePos = 'before-slide is-active'
        } else if (index === currentItem - 2) {
          datePos = 'before-before-slide is-active'
        }
        elemString += `<div class="c-our-history-slider-date js-slider-date-elem ${datePos}" data-order="${index}">
            <h3 class="t-h3 js-slider-date">${date}</h3>
        </div>`
      })
      nav.innerHTML = elemString
    }
  },
  ourStorySliderBulletsCallback: function () {
    const currentIndex = this.activeIndex
    const items = this.$el.find('.js-slider-date-elem')
    const beforeBeforeSlide = $(items[currentIndex - 2])
    const beforeSlide = $(items[currentIndex - 1])
    const currentSlide = $(items[currentIndex])
    const afterSlide = $(items[currentIndex + 1])
    const afterAfterSlide = $(items[currentIndex + 2])
    items.each(function () {
      $(this).removeClass('is-active').removeClass('before-before-slide before-slide current-slide after-slide after-after-slide')
    })
    beforeBeforeSlide.addClass('before-before-slide is-active')
    beforeSlide.addClass('before-slide is-active')
    currentSlide.addClass('current-slide is-active')
    afterSlide.addClass('after-slide is-active')
    afterAfterSlide.addClass('after-after-slide is-active')
  }
}

Sliders.init()
