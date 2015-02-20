require 'spec_helper'

describe Oargun::ControlledVocabularies::RightsStatement do
  context 'when the rights statement is in the vocabulary' do
    let(:uri) { RDF::URI.new('http://www.europeana.eu/rights/rr-f/') }

    it 'creates an object' do
      expect { described_class.new(uri) }.not_to raise_error
    end
  end

  context 'when the rights statement is not in the vocabulary' do
    let(:uri) { RDF::URI.new('http://foo.bar/rights/rr-f/') }
    it 'raises an error' do
      expect {
        described_class.new(uri)
      }.to raise_error(Oargun::RDF::Controlled::ControlledVocabularyError,
       "Term #{uri} not in controlled vocabularies for Oargun::ControlledVocabularies::RightsStatement")
    end
  end
end
