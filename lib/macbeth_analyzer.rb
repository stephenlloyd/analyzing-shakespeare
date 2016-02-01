require 'httparty'
require 'nokogiri'

class MacbethAnalyzer

  def word_count
    Nokogiri::XML.parse(HTTParty.get("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"))
  end
end
