# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
# require turbolinks
#= require modernizr
#= require bootstrap
#= require supersized.3.2.7.min
#= require waypoints
#= require waypoints-sticky
#= require jquery.isotope
#= require jquery.fancybox.pack
#= require jquery.fancybox-media
#= require jquery.tweet
#= require plugins
#= require placeholder
#= require main
#= require_self
$(document).ready () ->
   $('#circle').css 'opacity', '0'
