require 'spec_helper'

describe 'A controlled vocabulary' do

  context 'when the location is in the vocabulary' do
    let(:location) { RDF::URI.new('http://id.loc.gov/authorities/names/n79081574') }
    it "should create an object" do
      expect {
        Oargun::ControlledVocabularies::Geographic.new(location)
      }.not_to raise_error
    end
  end

  context 'when the location is not in the vocabulary' do
    let(:location) { RDF::URI.new('http://foo.bar/authorities/names/n79081574') }
    it "should be a problem" do
      expect {
        Oargun::ControlledVocabularies::Geographic.new(location)
      }.to raise_error(Oargun::RDF::Controlled::ControlledVocabularyError,
       'Term http://foo.bar/authorities/names/n79081574 not in controlled vocabularies for Oargun::ControlledVocabularies::Geographic')
    end
  end
end
