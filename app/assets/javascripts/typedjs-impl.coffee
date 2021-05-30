$(document).ready ready
$(document).on 'turbolinks:load', ready

ready = ->
  Typed.new '.element',
    strings: [
      'I am all about software development and software architecture.'
      "Simple things should be simple, complex things should be POSSIBLE.. - Alan Kay"
    ]
    typeSpeed: 0
    loop: true
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready