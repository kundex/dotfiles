config.set('content.cookies.accept', 'no-3rdparty', 'chrome-devtools://*')
config.set('content.cookies.accept', 'no-3rdparty', 'devtools://*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
# Eigene Einstellungen (kundex)--------------------------------------
# Setting dark mode
config.set("colors.webpage.darkmode.enabled", True)
# Bindings for normal mode - Video playback & download shortcuts
config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('Z', 'hint links spawn st -e youtube-dl {hint-url}')
# Bindings for navigation
config.bind('j', 'scroll left')
config.bind('ö', 'scroll right')
config.bind('k', 'scroll up')
config.bind('l', 'scroll down')
config.bind('J', 'back')
config.bind('Ö', 'forward')
config.bind('K', 'tab-prev')
config.bind('L', 'tab-next')
# Save session
c.auto_save.session = True
# Bestätigung bei Beenden nur, wenn Download läuft
c.confirm_quit = ["downloads"]
# Verschiedenes
c.content.proxy = 'none'
c.content.ssl_strict = True
c.downloads.location.prompt = False
c.downloads.location.directory = '/home/kunde_x/Downloads'
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = True
c.tabs.last_close = 'close'
c.content.cache.maximum_pages = 0
c.content.cache.size = None
c.content.default_encoding = 'utf-8'
c.content.dns_prefetch = True
c.content.geolocation = 'ask'
c.content.headers.referer = 'same-domain'
c.content.javascript.can_access_clipboard = False
c.content.javascript.can_close_tabs = False
c.content.javascript.can_open_tabs_automatically = False
c.content.javascript.enabled = True
c.content.notifications = False
c.content.pdfjs = True
c.content.proxy = 'system'
c.content.webgl = True
c.tabs.position = 'top'
