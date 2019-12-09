/* globals google */
import $ from 'jquery'
// import { isStyleguide } from '../utils'
import _groupBy from 'lodash/groupBy'
import _forEach from 'lodash/forEach'
import _filter from 'lodash/filter'
import _reduce from 'lodash/reduce'
import _find from 'lodash/find'
import mapStyles from './mapStyles'
import locationsListTemplate from './templates/locations-list.handlebars'
import infowindowTemplate from './templates/infowindow.handlebars'

import MarkerClusterer from '../../vendor/markerclusterer'

window.googleAPIKey = 'AIzaSyCF0PR0o7KnoNtITKuPZPvE1DVx1jWJB2A'

const classes = {
  map: 'js-map',
  mapContainer: 'js-map-container',
  mapFilters: 'js-map-filter',
  clearFilters: 'js-map-clear-filters',
  mapPopupContainer: 'js-map-popup-container',
  mapPopupClose: 'js-map-modal-close'
}

const selectors = {
  map: `.${classes.map}`,
  mapContainer: `.${classes.mapContainer}`,
  mapFilters: `.${classes.mapFilters}`,
  mapFilterButtons: `.${classes.mapFilters} .c-dropdown__option`,
  clearFilters: `.${classes.clearFilters}`,
  locationsContainer: `.${classes.locationsContainer}`,
  mapPopupContainer: `.${classes.mapPopupContainer}`,
  mapPopupClose: `.${classes.mapPopupClose}`
}

// const MARKER_ICON_SRC = '/static/img/map-pin-small.png'
const MARKER_GROUPED_ICON_SRC = '/static/img/map-pin-small'
const MARKER_COLORS = {
  METHANOL: '/static/img/map-pin-green.png',
  NITROGEN: '/static/img/map-pin-blue.png',
  SUPPLY_CHAIN: '/static/img/map-pin-grey.png'
}

const OfficesMap = {
  init: async function ($mapContainer) {
    if (!$mapContainer.length) return

    const [ officesLocations ] = await Promise.all([
      OfficesMap.fetchLocationsData($mapContainer),
      OfficesMap.loadGoogleAPIScript()
    ])

    OfficesMap.generateNameDropdown(officesLocations)

    // const facilities = _groupBy(officesLocations, 'title')
    const $mapBox = $mapContainer.find(selectors.map)
    const googleMapObject = OfficesMap.createGoogleMapObject($mapBox)

    OfficesMap.createMarkers(googleMapObject, officesLocations)
    google.maps.event.addDomListener(window, 'resize', function () {
      OfficesMap.zoomMapToVisibleMarkers(googleMapObject)
    })

    // const $selectElements = $mapContainer.find(selectors.select)
    // const $clearFiltersButton = $mapContainer.find(selectors.clearFilters)
    const $locationsContainer = $mapContainer.find(selectors.locationsContainer)
    const $mapPopupClose = $mapContainer.find(selectors.mapPopupClose)
    // const $countrySelect = $selectElements.filter(selectors.countrySelect)

    const filterButtons = $(selectors.mapFilterButtons)
    filterButtons.each(function () {
      const $btn = $(this)
      $btn.on('click', function (e) {
        const attr = e.currentTarget.dataset.attr
        const val = e.currentTarget.dataset.val
        OfficesMap.filterMarkers(googleMapObject, officesLocations, attr, val)
      })
    })

    // _forEach(Object.keys(facilities), country => {
    //   if (country !== 'null') {
    //     $countrySelect.append($('<option/>', {
    //       value: country,
    //       html: country
    //     }))
    //   }
    // })

    // $selectElements.on(
    //   'change',
    //   OfficesMap.onFilterSelectChange(
    //     $selectElements,
    //     googleMapObject,
    //     $locationsContainer,
    //     countryOptionsMap,
    //     officesLocations
    //   )
    // )

    // $clearFiltersButton.on(
    //   'click',
    //   OfficesMap.onClearFiltersClick(
    //     $selectElements,
    //     googleMapObject
    //   )
    // )

    $mapPopupClose.on('click', OfficesMap.onInfoWindowCloseClick)
    OfficesMap.renderLocationsSection($locationsContainer, officesLocations)

    console.log(officesLocations)

    return googleMapObject
  },

  generateNameDropdown (locations) {
    const $dropdown = $('.js-map-filter-facility')
    const $options = $dropdown.find('.js-options')
    locations.forEach(loc => {
      $options.append(`<li class="c-dropdown__option" data-attr="title" data-val="${loc.title}">
          <span class="c-label">
              ${loc.title}
          </span>
      </li>`)
    })
  },

  loadGoogleAPIScript () {
    return new Promise(resolve => {
      if (window.google === undefined) {
        $.getScript(
          `https://maps.googleapis.com/maps/api/js?key=${window.googleAPIKey}&libraries=visualization,drawing,places,weather,geometry`
        ).done(resolve)
      } else {
        resolve()
      }
    })
  },

  fetchLocationsData ($mapContainer) {
    return new Promise((resolve, reject) => {
      $.ajax({
        url: $mapContainer.data('json'),
        headers: {
          // Proxies request in development mode
          'Should-Proxy-Request': true
        }
      })
        .done(data => {
          resolve(data)
        })
        .fail(reject)
    })
  },

  createGoogleMapObject ($mapBox) {
    const { lat, lng } = $mapBox.data()
    const center = new google.maps.LatLng(lat, lng)
    const googleMapObject = new window.google.maps.Map(
      $mapBox.get(0),
      {
        zoom: Math.ceil(Math.log2($(window).width())) - 8.43,
        minZoom: Math.ceil(Math.log2($(window).width())) - 8.43,
        center,
        scrollwheel: false,
        disableDefaultUI: false,
        mapTypeControl: false,
        streetViewControl: false,
        rotateControl: false,
        fullscreenControl: false
      }
    )
    const mapType = new google.maps.StyledMapType(mapStyles, {
      name: 'Outline'
    })

    // highlight USA, Netherlands, Algeria
    const kmlBoundariesSrc = $(selectors.mapContainer).data('kml')
    /* eslint-disable-next-line */
    const countryBoundariesKml = new google.maps.KmlLayer(kmlBoundariesSrc, {
      suppressInfoWindows: true,
      preserveViewport: false,
      map: googleMapObject
    })

    googleMapObject.mapTypes.set('tehgrayz', mapType)
    googleMapObject.setMapTypeId('tehgrayz')
    googleMapObject.markers = []

    window.googleMapObject = googleMapObject

    return googleMapObject
  },

  createMarkers (googleMapObject, officesLocations) {
    googleMapObject.infoWindowObject = new google.maps.InfoWindow({
      pixelOffset: new google.maps.Size(360, 320)
    })

    for (const markerData of officesLocations) {
      const { lat, lng, type } = markerData
      const pinIcon = MARKER_COLORS[type.replace(' ', '_').toUpperCase()]

      const marker = new google.maps.Marker({
        position: new google.maps.LatLng(lat, lng),
        map: googleMapObject,
        icon: pinIcon
      })

      marker.markerData = markerData
      googleMapObject.markers.push(marker)

      google.maps.event.addListener(marker, 'click', OfficesMap.onMarkerClick)
    }

    googleMapObject.markerClustererObject = new MarkerClusterer(
      googleMapObject,
      googleMapObject.markers,
      {
        imagePath: MARKER_GROUPED_ICON_SRC
      }
    )
  },

  createFilteredMarkers (googleMapObject, officesLocations, filterAttr, filterVal) {
    // googleMapObject.infoWindowObject = new google.maps.InfoWindow({
    //   pixelOffset: new google.maps.Size(360, 320)
    // })

    const filteredLocations = officesLocations.filter(location => {
      console.log(location.filterAttr)
      if (location.filterAttr === filterVal) {
        return location
      }
    })

    console.log('filteredLocations', filteredLocations)

    for (const markerData of filteredLocations) {
      const { lat, lng, type } = markerData
      const pinIcon = MARKER_COLORS[type.replace(' ', '_').toUpperCase()]

      const marker = new google.maps.Marker({
        position: new google.maps.LatLng(lat, lng),
        map: googleMapObject,
        icon: pinIcon
      })

      marker.markerData = markerData
      googleMapObject.markers.push(marker)

      google.maps.event.addListener(marker, 'click', OfficesMap.onMarkerClick)
    }

    googleMapObject.markerClustererObject = new MarkerClusterer(
      googleMapObject,
      googleMapObject.markers,
      {
        imagePath: MARKER_GROUPED_ICON_SRC
      }
    )
  },

  onMarkerClick () {
    const { markerData } = this

    $(selectors.mapPopupContainer)
      .addClass('is-opened')
      .find('.c-map-popup__content')
      .html(infowindowTemplate({ ...markerData }))
  },

  onInfoWindowCloseClick () {
    $(selectors.mapPopupContainer)
      .removeClass('is-opened')
      .find('.c-map__popup__content')
      .html()
  },

  removeAllMarkers (googleMapObject) {
    console.log('1', googleMapObject.markers)
    googleMapObject.markers.forEach(marker => {
      // $(marker).hide()
    })
  },

  filterMarkers (googleMapObject, officesLocations, attr, val) {
    console.log('attr', attr)
    console.log('val', val)
    OfficesMap.removeAllMarkers(googleMapObject)
    OfficesMap.createFilteredMarkers(googleMapObject, officesLocations, attr, val)
  },

  // onFilterSelectChange: (
  //   $selectElements,
  //   googleMapObject,
  //   $locationsContainer,
  //   countryOptionsMap,
  //   officesLocations
  // ) => function () {
  //   const $countrySelect = $selectElements.filter(selectors.countrySelect)
  //   const $clickedFilterSelect = $(this)
  //   const country = $countrySelect.val()

  //   if (country && $clickedFilterSelect.is($countrySelect)) {
  //     OfficesMap.filterMarkers(googleMapObject, country)
  //     OfficesMap.renderLocationsSection($locationsContainer, officesLocations, country)
  //     OfficesMap.zoomMapToVisibleMarkers(googleMapObject)
  //   }
  // },

  // onClearFiltersClick: ($selectElements, googleMapObject) => function () {
  //   $selectElements.val(null).trigger('change')
  //   OfficesMap.zoomMapToVisibleAllMarkers(googleMapObject)
  // },

  zoomMapToVisibleAllMarkers (googleMapObject) {
    const bounds = new google.maps.LatLngBounds()

    _forEach(googleMapObject.markers, marker => {
      bounds.extend(marker.getPosition())
    })

    googleMapObject.fitBounds(bounds)
  },

  zoomMapToVisibleMarkers (googleMapObject) {
    const bounds = new google.maps.LatLngBounds()

    _forEach(googleMapObject.markers, marker => {
      if (marker.visible) {
        bounds.extend(marker.getPosition())
      }
    })

    googleMapObject.fitBounds(bounds)

    if (googleMapObject.getZoom() > 8) {
      googleMapObject.setZoom(8)
    }
  },

  // createFilterDelegate: (country) => country
  //   ? markerData => (country === 'All') ? true : markerData.country === country
  //   : () => true,

  prepareCountriesTemplateData (region, country, officesLocations) {
    const locations = _filter(
      officesLocations
      // OfficesMap.createLocationsFilterDelegate(region, country)
    )
    const groupedLocations = _groupBy(
      locations,
      location => {
        location.country = location.country || ''
        return `${location.country}`
      }
    )
    const splittedLocations = _reduce(groupedLocations, (result, locations, groupKey) => {
      const headquarter = _find(locations, ({ isHeadquarter }) => isHeadquarter)
      const offices = _filter(locations, ({ isHeadquarter }) => !isHeadquarter)

      return {
        ...result,
        [groupKey]: {
          headquarter,
          offices
        }
      }
    }, {})

    return splittedLocations
  },

  renderLocationsSection ($locationsContainer, officesLocations, region, country) {
    const locations = OfficesMap.prepareCountriesTemplateData(region, country, officesLocations)

    $locationsContainer.html(
      locationsListTemplate({
        locations
      })
    )
  }
}

const $mapContainer = $(selectors.mapContainer)

if ($mapContainer.length) {
  OfficesMap.init($mapContainer)
}
