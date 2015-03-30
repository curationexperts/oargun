require 'spec_helper'

describe 'A controlled vocabulary' do

  subject { Oargun::ControlledVocabularies::WorkType.new(uri) }

  context 'when the uri is in LCSH' do
    let(:uri) { RDF::URI.new('http://id.loc.gov/authorities/subjects/sh2010014379') }
    it { is_expected.to be_valid }
  end

  context 'when the uri is in AAT' do
    let(:uri) { RDF::URI.new('http://vocab.getty.edu/aat/300046300') }
    it { is_expected.to be_valid }
  end

  context 'when the uri is not in the vocabulary' do
    let(:uri) { RDF::URI.new('http://foo.bar/authorities/names/n79081574') }
    it { is_expected.not_to be_valid }
  end
end

