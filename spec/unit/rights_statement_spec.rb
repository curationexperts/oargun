require 'spec_helper'

describe Oargun::ControlledVocabularies::RightsStatement do
  subject { described_class.new(uri) }
  context 'when the rights statement is in the vocabulary' do
    let(:uri) { RDF::URI.new('http://www.europeana.eu/rights/rr-f/') }

    it { is_expected.to be_valid }
  end

  context 'when the rights statement is not in the vocabulary' do
    let(:uri) { RDF::URI.new('http://foo.bar/rights/rr-f/') }
    it { is_expected.not_to be_valid }
  end
end
