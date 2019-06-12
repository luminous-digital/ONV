const Cookies = {
  init: function () {
    if (!this.getCookie(this.settings.cookieName)) {
      this.cookieConsent()
    }
  },
  settings: {
    cookieName: 'ociCookieConsent',
    cookieValue: {
      accept: 'accept',
      decline: 'decline'
    }
  },
  getCookie: function (name) {
    const value = '; ' + document.cookie
    const parts = value.split('; ' + name + '=')
    if (parts.length === 2) return parts.pop().split(';').shift()
  },
  cookieConsent: function () {
    const cookieBar = document.querySelector('.js-cookie-bar')
    if (cookieBar) {
      cookieBar.classList.add('is-visible')
      const cookieAccept = cookieBar.querySelector('.js-cookie-accept')
      const cookieDecline = cookieBar.querySelector('.js-cookie-decline')
      if (cookieAccept && cookieDecline) {
        const date = new Date()
        const days = 7
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000))
        var expires = 'expires=' + date.toUTCString()
        cookieAccept.addEventListener('click', () => {
          document.cookie = this.settings.cookieName + '=' + this.settings.cookieValue.accept + ';' + expires + ';path=/'
          cookieBar.classList.remove('is-visible')
        })
        cookieDecline.addEventListener('click', () => {
          document.cookie = this.settings.cookieName + '=' + this.settings.cookieValue.decline + ';' + expires + ';path=/'
          cookieBar.classList.remove('is-visible')
        })
      }
    }
  }
}

Cookies.init()
