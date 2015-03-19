require 'spec_helper'

describe Oargun::ControlledVocabularies::Organization do

  context 'when the Organization is in the vocabulary' do
    let(:subject_term) { RDF::URI.new('http://id.loc.gov/vocabulary/organizations') }

    it "should create an object" do
      expect {
        described_class.new(subject_term)
      }.not_to raise_error
    end
  end

  context 'when the Organization is not in the vocabulary' do
    let(:subject_term) { RDF::URI.new('http://foo.bar/authorities/names/n79081574') }

    it "should be a problem" do
      expect {
        described_class.new(subject_term)
      }.to raise_error(Oargun::RDF::Controlled::ControlledVocabularyError,
       'Term http://foo.bar/authorities/names/n79081574 not in controlled vocabularies for Oargun::ControlledVocabularies::Organization')
    end
  end
end


