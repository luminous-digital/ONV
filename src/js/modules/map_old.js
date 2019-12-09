const Map = {
  init: function () {
    this.initMap()
    this.mapFilters()
  },
  initMap: function () {
    const mapWrappers = document.querySelectorAll('.c-map-wrapper')
    if (mapWrappers) {
      Array.from(mapWrappers).forEach(mapWrapper => {
        const mapPins = Array.from(mapWrapper.querySelectorAll('.js-map-pin'))
        mapPins.forEach(pin => {
          // const pinModal = pin.querySelector('.js-map-modal')
          const modalClose = pin.querySelector('.js-map-modal-close')
          pin.addEventListener('click', e => {
            if (e.target !== e.currentTarget) { return }
            mapPins.forEach(pin => {
              pin.classList.remove('is-modal-active')
            })
            pin.classList.toggle('is-modal-active')
          })
          modalClose.addEventListener('click', e => {
            pin.classList.remove('is-modal-active')
          })
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
      pin.style.display = 'none'
    })
    Array.from(filteredPins).forEach(pin => {
      pin.style.display = 'block'
    })
  },
  mapFilters: function () {
    const navWrappers = document.querySelectorAll('.c-map-nav-wrapper')
    if (navWrappers) {
      Array.from(navWrappers).forEach(navWrapper => {
        const mapWrapper = navWrapper.previousElementSibling
        const mapPins = Array.from(mapWrapper.querySelectorAll('.js-map-pin'))
        const mapFilters = Array.from(navWrapper.querySelectorAll('.js-map-filter'))
        const clearAllBtn = navWrapper.querySelector('.js-map-clear-all')
        mapFilters.forEach(filter => {
          const filterOptions = Array.from(filter.querySelectorAll('.c-dropdown__option'))
          const filterName = filter.querySelector('.js-filter-name')
          const filterChosenOptionText = filter.querySelector('.js-chosen-option')
          const filterType = filter.dataset.filterType
          filterOptions.forEach(option => {
            option.addEventListener('click', e => {
              const chosenOption = e.currentTarget.querySelector('.c-label').innerText.trim()
              const dropdownToggle = e.currentTarget.parentNode.parentNode
              dropdownToggle.classList.remove('is-open')
              filter.dataset.chosenOption = chosenOption
              filterChosenOptionText.innerHTML = chosenOption
              filterName.classList.remove('is-visible')
              filterChosenOptionText.classList.add('is-visible')
              this.mapFilterObject[filterType] = chosenOption
              window.setTimeout(() => {
                this.filterMap(mapPins)
                clearAllBtn.classList.add('is-visible')
              }, 500)
            })
          })
        })
        clearAllBtn.addEventListener('click', e => {
          mapFilters.forEach(filter => {
            const filterName = filter.querySelector('.js-filter-name')
            const filterChosenOptionText = filter.querySelector('.js-chosen-option')
            const pins = mapWrapper.querySelectorAll('.js-map-pin')
            this.mapFilterObject = {}
            filter.dataset.chosenOption = ''
            filterName.classList.add('is-visible')
            filterChosenOptionText.classList.remove('is-visible')
            window.setTimeout(() => {
              clearAllBtn.classList.remove('is-visible')
              Array.from(pins).forEach(pin => {
                pin.style.display = 'block'
              })
            }, 500)
          })
        })
      })
    }
  }
}

Map.init()
