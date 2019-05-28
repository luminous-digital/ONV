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
  mapFilterObject: {
    'territory': '',
    'location': '',
    'facility': ''
  },
  filterMap: function (pins) {
    console.log(this.mapFilterObject)
    const filteredPins = pins.filter(pin => {
      if (
        pin.dataset.territory === this.mapFilterObject.territory ||
        pin.dataset.location === this.mapFilterObject.location ||
        pin.dataset.facility === this.mapFilterObject.facility
      ) {
        return pin
      }
    })
    Array.from(pins).forEach(pin => {
      pin.style.opacity = 0
    })
    Array.from(filteredPins).forEach(pin => {
      pin.style.opacity = 1
    })
  },
  mapFilters: function () {
    const navWrapper = document.querySelector('.c-map-nav-wrapper')
    window.mapFilterObject = this.mapFilterObject
    if (navWrapper) {
      const mapWrapper = navWrapper.previousElementSibling
      const mapPins = Array.from(mapWrapper.querySelectorAll('.js-map-pin'))
      const mapFilters = Array.from(navWrapper.querySelectorAll('.js-map-filter'))
      mapFilters.forEach(filter => {
        const filterOptions = Array.from(filter.querySelectorAll('.c-dropdown__option'))
        const filterChosenOptionText = filter.querySelector('.js-chosen-option')
        const filterType = filter.dataset.filterType
        filterOptions.forEach(option => {
          option.addEventListener('click', e => {
            mapFilters.forEach(filter => {
              filter.querySelector('.js-chosen-option').innerHTML = ''
              filter.dataset.chosenOption = ''
            })
            mapPins.forEach(pin => {
              pin.style.opacity = 1
            })
            const chosenOption = e.currentTarget.querySelector('.c-label').innerText.trim()
            filter.dataset.chosenOption = chosenOption
            filterChosenOptionText.innerHTML = `&nbsp;(${chosenOption})`
            this.mapFilterObject[filterType] = chosenOption
            window.setTimeout(() => {
              this.filterMap(mapPins)
            }, 500)
          })
        })
      })
    }
  }
}

Map.init()
