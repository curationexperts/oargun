module Oargun::ControlledVocabularies
  class Language < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex

    use_vocabulary :iso_639_2, class: Oargun::Vocabularies::ISO_639_2
  end
end
