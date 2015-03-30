module Oargun::ControlledVocabularies
  class Language < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    use_vocabulary :iso_639_2, class: Oargun::Vocabularies::ISO_639_2
  end
end
