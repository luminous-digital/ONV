import $ from 'jquery'

const PeopleModal = {
  init: function () {
    const $modalTogglers = $('.js-people-modal-toggle')
    if ($modalTogglers.length) {
      const $body = $('body')
      const $modal = $('.js-people-modal')
      const $modalContent = $modal.find('.js-people-modal-content')
      const $modalClose = $modal.find('.js-people-modal-close')
      $modalTogglers.each(function () {
        const $toggler = $(this)
        const $gridElem = $toggler.parent()
        $toggler.on('click', function (e) {
          e.preventDefault()
          $modalContent.html(`
            <figure class="c-people-modal__image js-people-modal-img">
              <img src="${$gridElem.find('.c-grid-block__image > img').attr('src')}" alt="${$gridElem.find('.c-grid-block__title').html()}">
            </figure>
            <div class="c-people-modal__img-desc">
              <h5 class="c-people-modal__title t-h5 js-people-modal-title">
                ${$gridElem.find('.c-grid-block__title').html()}
              </h5>
              <p class="c-people-modal__subtitle t-body js-people-modal-subtitle">
                ${$gridElem.find('.c-grid-block__subtitle').html()}
              </p>
            </div>
            <p class="c-people-modal__desc js-people-modal-desc">
              ${$gridElem.find('.c-grid-block__hidden-desc').text()}
            </p>
          `)
          $body.toggleClass('is-modal-open')
          $modal.toggleClass('is-active')
        })
      })
      $modalClose.on('click', function (e) {
        $body.removeClass('is-modal-open')
        $modal.removeClass('is-active')
      })
      $modal.on('click', function (e) {
        if (e.target !== this) {
          return
        }
        $body.removeClass('is-modal-open')
        $modal.removeClass('is-active')
      })
    }
  }
}

PeopleModal.init()
