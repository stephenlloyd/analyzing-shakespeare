require 'httparty'
class MacbethAnalyzer
  def word_count
    @macbeth = HTTParty.get("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml")
  end
end
