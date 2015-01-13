require 'nokogiri'
require 'open-uri'

plastic_html = open('https://www.pinterest.com/search/pins/?q=plastic&term_meta%5B%5D=plastic%7Ctyped')

plastic = Nokogiri::HTML(html)





