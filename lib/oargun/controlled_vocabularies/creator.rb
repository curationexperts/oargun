module Oargun::ControlledVocabularies
  class Creator < ActiveTriples::Resource
    include Oargun::RDF::Controlled

    class QaLcNames < Qa::Authorities::Loc
      include Oargun::Qa::Caching
      def search(q, sub_authority=nil)
        super(q, 'names')
      end
    end

    @qa_interface = QaLcNames.new

  end
end
