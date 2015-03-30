module Oargun::ControlledVocabularies
  class Creator < ActiveTriples::Resource
    include LinkedVocabs::Controlled

    class QaLcNames < Qa::Authorities::Loc
      include Oargun::Qa::Caching
      def initialize
        super('names')
      end
    end

    @qa_interface = QaLcNames.new

  end
end
