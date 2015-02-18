require "open-uri"
require "nokogiri"
class Pinterest 

  attr_accessor :url, :image

  def initialize(search_query)
    html = open("https://www.pinterest.com/search/?q=#{search_query}")
    @material = Nokogiri::HTML(html)
    scrape_url
    scrape_image

  end

  def scrape_url
    @url = []
    suggestion = @material.css(".pinHolder").each do |pin|
      @url << "https://www.pinterest.com"+pin.children[1].first[1]
    end
  end

  def scrape_image
    @image = []
    pic =  @material.css(".pinHolder").each do |pin|
     @image << pin.children.children.children.children.children[1].first[1]
    end
  end
end

 james = Pinterest.new("glass")
 puts james.image

alston = Pinterest.new("glass")
puts alston.url

