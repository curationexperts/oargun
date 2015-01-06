module Oargun::ControlledVocabularies
  class WorkType < ActiveTriples::Resource
    include Oargun::RDF::Controlled

    use_vocabulary :aat
    use_vocabulary :ldp
    # use_vocabulary :worktype
    use_vocabulary :lcsh

  end
end
