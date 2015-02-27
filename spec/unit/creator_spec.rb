require 'spec_helper'

describe 'A controlled vocabulary' do

  context 'when the name is in the vocabulary' do
    let(:name) { RDF::URI.new('http://id.loc.gov/authorities/names/n79081574') }
    it "should create an object" do
      expect {
        Oargun::ControlledVocabularies::Creator.new(name)
      }.not_to raise_error
    end
  end

  context 'when the name is not in the vocabulary' do
    let(:name) { RDF::URI.new('http://foo.bar/authorities/names/n79081574') }
    it "should be a problem" do
      expect {
        Oargun::ControlledVocabularies::Creator.new(name)
      }.to raise_error(Oargun::RDF::Controlled::ControlledVocabularyError,
       'Term http://foo.bar/authorities/names/n79081574 not in controlled vocabularies for Oargun::ControlledVocabularies::Creator')
    end
  end

  context 'when initialized without an argument' do
    subject { Oargun::ControlledVocabularies::Creator.new }
    it { is_expected.to be_a_node }
  end
end
