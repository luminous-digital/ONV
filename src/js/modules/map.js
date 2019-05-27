const Map = {
  init: function () {
    this.initMap()
    this.mapFilters()
  },
  initMap: function () {
    const mapWrapper = document.querySelector('.c-map-wrapper')
    if (mapWrapper) {
      const mapPins = Array.from(mapWrapper.querySelectorAll('.js-map-pin'))
      mapPins.forEach(pin => {
        const pinModal = pin.querySelector('.js-map-modal')
        const modalClose = pin.querySelector('.js-map-modal-close')
        pin.addEventListener('click', e => {
          if (e.target !== e.currentTarget) {
            // prevent opening again when clicking close
            return
          }
          mapPins.forEach(pin => {
            pin.querySelector('.js-map-modal').classList.remove('is-active')
          })
          pinModal.classList.toggle('is-active')
        })
        modalClose.addEventListener('click', e => {
          pinModal.classList.remove('is-active')
        })
      })
    }
  },
  mapFilters: function () {
    // const mapWrapper = document.querySelector('.c-map-wrapper')
    // if (mapWrapper) {
    //   const mapPins = Array.from(mapWrapper.querySelectorAll('.js-map-pin'))
    //   const mapFilters =
    // }
  }
}

Map.init()
