require 'rdf'
module Oargun::Vocabularies
  class RIGHTS < ::RDF::StrictVocabulary("http://opaquenamespace.org/ns/rights/")

    property :educational, label: "Educational Use Permitted"
#             comment: "Educational use is permitted without permission. Permission may be required for additional uses."
    property :"orphan-work-us", label: "Orphan Work"
#             comment: "The Orphan works statement can be applied to objects that have been identified as orphan works in the country of first publication and in line with the requirements of the country. This rights statement applies to orphan works as defined in the United States of America. When an object has an orphan work statement, a good faith effort has been applied to try to identify the copyright holder and seek permission."

  end
end
