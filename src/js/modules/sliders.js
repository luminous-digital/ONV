import $ from 'jquery'
import Swiper from 'swiper/dist/js/swiper'

const Sliders = {
  init: function () {
    this.latestNewsSlider()
    this.quickLinksSlider()
    this.ourStorySlider()
    this.ourStorySliderBullets()
    this.tabbedContentSlider()
    this.dataSlider()
    this.fourBlockSliders()
    this.logosSlider()
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
  dataSlider: function () {
    const sliderClass = '.js-slider-data'
    if (document.querySelector(sliderClass)) {
      Sliders.dataSwiper = new Swiper(sliderClass, {
        loop: true,
        autoplay: false,
        speed: 300,
        slidesPerView: 1,
        spaceBetween: 60,
        navigation: {
          nextEl: '.c-data-slider-wrapper__next',
          prevEl: '.c-data-slider-wrapper__prev'
        },
        breakpointsInverse: true,
        breakpoints: {
          768: {
            autoHeight: true,
            slidesPerView: 2,
            spaceBetween: 25
          },
          1200: {
            autoHeight: true,
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
        let currentElemPosition
        switch (index) {
          case currentItem:
            currentElemPosition = 'current-slide is-active'
            break
          case currentItem + 1:
            currentElemPosition = 'after-slide is-active'
            break
          case currentItem + 2:
            currentElemPosition = 'after-after-slide is-active'
            break
          case currentItem - 1:
            currentElemPosition = 'before-slide is-active'
            break
          case currentItem - 2:
            currentElemPosition = 'before-before-slide is-active'
            break
          default:
            currentElemPosition = ''
        }
        elemString += `<div class="c-our-history-slider-date js-slider-date-elem ${currentElemPosition}" data-order="${index}">
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
  },
  tabbedContentSlider: function () {
    const sliderClass = '.js-tabbed-section-slider'
    if (document.querySelector(sliderClass)) {
      Sliders.sectionSwiper = new Swiper(sliderClass, {
        loop: false,
        autoplay: false,
        speed: 300,
        slidesPerView: 1,
        spaceBetween: 25,
        autoHeight: true,
        pagination: {
          el: '.js-tabbed-section-nav',
          clickable: true,
          renderBullet: function (index, className) {
            const slideIndex = index
            const slideName = this.slides[slideIndex].dataset.slideTitle
            return `<li class="${className}">
                <button class="c-content-tabs__btn t-btn">
                    <span class="c-label">
                        ${slideName}
                    </span>
                </button>
            </li>`
          },
          bulletClass: 'c-content-tabs__tab',
          modifierClass: 'c-content-tabs__tab--',
          bulletActiveClass: 'is-active'
        }
      })
    }
  },
  fourBlockSliders: function () {
    const sliderClass = '.js-four-blocks-slider'
    if (document.querySelector(sliderClass)) {
      Sliders.heroSwiper = new Swiper(sliderClass, {
        loop: true,
        autoplay: false,
        speed: 300,
        slidesPerView: 1,
        navigation: {
          nextEl: '.js-four-blocks-slider-next',
          prevEl: '.js-four-blocks-slider-prev'
        },
        breakpointsInverse: true,
        breakpoints: {
          768: {
            slidesPerView: 2,
            spaceBetween: 25
          },
          1200: {
            slidesPerView: 4,
            spaceBetween: 25
          }
        }
      })
    }
  },
  logosSlider: function () {
    const sliderClass = '.js-slider-logos'
    if (document.querySelector(sliderClass)) {
      Sliders.heroSwiper = new Swiper(sliderClass, {
        loop: true,
        autoplay: false,
        speed: 300,
        slidesPerView: 1,
        navigation: {
          nextEl: '.js-logos-slider-next',
          prevEl: '.js-logos-slider-prev'
        },
        breakpointsInverse: true,
        breakpoints: {
          768: {
            slidesPerView: 2,
            spaceBetween: 25
          },
          1200: {
            slidesPerView: 3,
            spaceBetween: 50
          }
        }
      })
    }
  }
}

Sliders.init()
