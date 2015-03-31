module Oargun::ControlledVocabularies
  class CopyrightStatus < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex

    use_vocabulary :lccs, class: Oargun::Vocabularies::LCCS

  end
end
