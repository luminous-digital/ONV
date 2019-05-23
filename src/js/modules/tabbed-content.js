const TabbedContent = {
  init: function () {
    this.switchTabs()
  },
  switchTabs: function () {
    const tabbedSection = document.querySelector('.js-tabbed-section')
    if (tabbedSection) {
      const tabs = tabbedSection.querySelectorAll('.js-section-tab')
      const sections = tabbedSection.querySelectorAll('.js-section-content')
      const switchTab = e => {
        const tabNumber = e.currentTarget.querySelector('button').dataset.tab
        const tabToActivate = e.currentTarget
        const sectionToOpen = tabbedSection.querySelector(`[data-tab-section="${tabNumber}"]`)
        const elements = [...sections, ...tabs]
        elements.forEach(elem => {
          elem.classList.remove('is-active')
        })
        tabToActivate.classList.add('is-active')
        sectionToOpen.classList.add('is-active')
      }
      Array.from(tabs).forEach(tab => {
        tab.addEventListener('click', switchTab)
      })
    }
  }
}

TabbedContent.init()
