require 'spec_helper'

describe Oargun::ControlledVocabularies::Subject do
  context 'when the subject is in the vocabulary' do
    let(:subject_term) { RDF::URI.new('http://id.loc.gov/authorities/subjects/sh85062487') }

    it "should create an object" do
      expect {
        Oargun::ControlledVocabularies::Subject.new(subject_term)
      }.not_to raise_error
    end
  end

  context 'when the subject is not in the vocabulary' do
    let(:subject_term) { RDF::URI.new('http://foo.bar/authorities/names/n79081574') }

    it "should be a problem" do
      expect {
        Oargun::ControlledVocabularies::Subject.new(subject_term)
      }.to raise_error(Oargun::RDF::Controlled::ControlledVocabularyError,
       'Term http://foo.bar/authorities/names/n79081574 not in controlled vocabularies for Oargun::ControlledVocabularies::Subject')
    end
  end
end

