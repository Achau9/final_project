require "nokogiri"
require "open-uri"

class Pinterest 

html = open("https://www.pinterest.com/search/?q=cardboard")
cardboard = Nokogiri::HTML(html)
url = []
suggestion = cardboard.css(".pinHolder").each do |pin|
  url << "https://www.pinterest.com"+pin.children[1].first[1]
end
puts url