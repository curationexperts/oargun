module Oargun::ControlledVocabularies
  class Organization < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex

    use_vocabulary :lc_orgs, class: Oargun::Vocabularies::LC_ORGS
    configure :rdf_label => RDF::SKOS.hiddenLabel

    property :label, :predicate => RDF::RDFS.label
  end
end
