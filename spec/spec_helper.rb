$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

RDF_VOCABS = {
  geonames:      { prefix: 'http://sws.geonames.org/', strict: false, fetch: false },
  iso_639_2:     { prefix: 'http://id.loc.gov/vocabulary/iso639-2/', source: 'http://id.loc.gov/vocabulary/iso639-2.nt'},
  lcsh:          { prefix: 'http://id.loc.gov/authorities/subjects/', strict: false, fetch: false },
  lcnames:       { prefix: 'http://id.loc.gov/authorities/names/', strict: false, fetch: false },
  tgm:           { prefix: 'http://id.loc.gov/vocabulary/graphicMaterials', strict: false, fetch: false },
  aat:           { prefix: 'http://vocab.getty.edu/aat/', strict: false, fetch: false },
  dummycreator:  { prefix: 'http://dummynamespace.org/creator/', strict: false, fetch: false },
}

require 'oargun'

module Rails
  def self.env
    'test'
  end
  class Engine
    def self.isolate_namespace(*)
      #nop
    end
  end
end

WITHOUT_QA = true
module Qa
  module Authorities
    class Loc
    end
  end
end

ActiveTriples::Repositories.add_repository :vocabs, RDF::Repository.new


require 'webmock/rspec'
# Allow http connections on localhost
WebMock.disable_net_connect!(allow_localhost: true)


RSpec.configure do |config|

end
