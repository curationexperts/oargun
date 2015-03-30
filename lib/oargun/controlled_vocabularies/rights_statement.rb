module Oargun::ControlledVocabularies
  class RightsStatement < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex

    configure rdf_label: RDF::DC11.title

    use_vocabulary :eurights, class: Oargun::Vocabularies::EURIGHTS
    use_vocabulary :ccpublic, class: Oargun::Vocabularies::CCPUBLIC
    use_vocabulary :rights, class: Oargun::Vocabularies::RIGHTS
    use_vocabulary :cclicenses, class: Oargun::Vocabularies::CCLICENSES
  end
end
