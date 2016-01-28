require 'macbeth_analyzer'

describe MacbethAnalyzer do

  it "has downloads the file on initialization" do
    expect(HTTParty).to receive(:get).with("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml")
    subject.word_count
  end
end
