module Oargun::ControlledVocabularies
  class Subject < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex

    use_vocabulary :lcsh, class: Oargun::Vocabularies::LCSH
    use_vocabulary :tgm, class: Oargun::Vocabularies::TGM
    use_vocabulary :aat, class: Oargun::Vocabularies::AAT

    class QaLcsh < Qa::Authorities::Loc
      include Oargun::Qa::Caching
      def initialize
        super('subjects')
      end

      def loc_response_to_qa(data)
        response = super(data)
        for link in data.links
          response["id"] = link[1] if link[0].nil?
        end
        return response
      end
    end

    @qa_interface = QaLcsh.new
  end
end
