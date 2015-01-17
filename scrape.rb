require 'nokogiri'
require 'open-uri'

pin_html = open('http://www.pinterest.com/pin/97953360620343294/')

pin_nokogiri = Nokogiri::HTML(pin_html)

title = pin_nokogiri.css("h3")

waterfall = pin_nokogiri.css("div.richPinMeta h3")

puts waterfall