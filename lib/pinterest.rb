require "open-uri"

class Pinterest 

  attr_accessor :url

  def initialize(search_query)
    html = open("https://www.pinterest.com/search/?q=#{search_query}")
    @cardboard = Nokogiri::HTML(html)
    scrape_url
    scrape_image

  end

  def scrape_url
    @url = []
    suggestion = @cardboard.css(".pinHolder").each do |pin|
      @url << "https://www.pinterest.com"+pin.children[1].first[1]
    end
  end

  def scrape_image
    @image = []
    pic =  material.css(".pinHolder").each do |pin|
    @image << pin.children.children.children.children.children[1].first[1]
  end
end
  
