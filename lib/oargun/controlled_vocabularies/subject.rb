module Oargun::ControlledVocabularies
  class Subject < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex

    use_vocabulary :lcsh, class: Oargun::Vocabularies::LCSH
    use_vocabulary :tgm, class: Oargun::Vocabularies::TGM
    use_vocabulary :aat, class: Oargun::Vocabularies::AAT

  end
end
