module Oargun::ControlledVocabularies
  class Creator < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex
  end
end
