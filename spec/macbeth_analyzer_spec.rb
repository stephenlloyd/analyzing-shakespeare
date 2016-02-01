require 'macbeth_analyzer'

describe MacbethAnalyzer do
  let(:data){ File.read(File.dirname(__FILE__) + "/data/macbeth.xml") }

  before do
    allow(HTTParty).to receive(:get).and_return(data)
  end

  it "has downloads the file on initialization" do
    expect(HTTParty).to receive(:get).with("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml").and_return(data)
    subject.word_count
  end

  it "parses the xml" do
    allow(HTTParty).to receive(:get).with("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml").and_return(data)
    expect(Nokogiri::XML).to receive(:parse).with(data)
    subject.word_count
  end
end
