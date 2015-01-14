module Oargun::ControlledVocabularies
  class Subject < ActiveTriples::Resource
    include Oargun::RDF::Controlled

    #metadata librarians want multiple authoritative sources with dct.subject
    use_vocabulary :lcsh
    # use_vocabulary :lcnames
    use_vocabulary :tgm
    use_vocabulary :aat
    # use_vocabulary :subject
    # use_vocabulary :lc_orgs
    # use_vocabulary :creator
    # use_vocabulary :people

    class QaLcsh < Qa::Authorities::Loc
      include Oargun::Qa::Caching
      def search(q, sub_authority=nil)
        puts "Searching"
        super(q, 'subjects')
      end

      def loc_response_to_qa(data)
        puts "REPSONSE"
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
