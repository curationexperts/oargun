require 'spec_helper'

describe 'A controlled vocabulary' do
  class Foo < ActiveTriples::Resource
    property :location, predicate: RDF::DC.spatial,
      class_name: Oargun::ControlledVocabularies::Geographic do |index|
       index.as :stored_searchable
    end
  end

  it "should create an object" do
    Foo.new(location: RDF::URI.new('http://id.loc.gov/authorities/names/n79081574'))
  end
end
