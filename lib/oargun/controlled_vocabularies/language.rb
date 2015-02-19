module Oargun::ControlledVocabularies
  class Language < ActiveTriples::Resource
    include Oargun::RDF::Controlled
    # use_vocabulary :iso_639_1
    use_vocabulary :iso_639_2
    # use_vocabulary :marc_lang
  end
end
