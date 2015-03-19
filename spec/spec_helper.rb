$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

RDF_VOCABS = {
  geonames:      { prefix: 'http://sws.geonames.org/', strict: false, fetch: false },
  iso_639_2:     { prefix: 'http://id.loc.gov/vocabulary/iso639-2/', source: 'http://id.loc.gov/vocabulary/iso639-2.nt'},
  lcsh:          { prefix: 'http://id.loc.gov/authorities/subjects/', strict: false, fetch: false },
  lcnames:       { prefix: 'http://id.loc.gov/authorities/names/', strict: false, fetch: false },
  lc_orgs:       { prefix: 'http://id.loc.gov/vocabulary/organizations', strict: false, fetch: false },
  tgm:           { prefix: 'http://id.loc.gov/vocabulary/graphicMaterials', strict: false, fetch: false },
  aat:           { prefix: 'http://vocab.getty.edu/aat/', strict: false, fetch: false },
  dummycreator:  { prefix: 'http://dummynamespace.org/creator/', strict: false, fetch: false },
  ccpublic:      { prefix: 'http://creativecommons.org/publicdomain/', source: 'https://raw.github.com/OregonDigital/opaque_ns/master/cclicenses/cclicenses.nt'},
  cclicenses: { prefix: 'http://creativecommons.org/licenses/' },
  eurights:      { prefix: 'http://www.europeana.eu/rights/', source: 'https://raw.github.com/OregonDigital/opaque_ns/master/eurights/rightsstatements.nt', strict: true },
  rights: { prefix: 'http://opaquenamespace.org/rights/', source: 'https://raw.github.com/OregonDigital/opaque_ns/master/rights.jsonld', strict: true }
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

ActiveTriples::Repositories.add_repository :vocabs, RDF::Repository.new


require 'webmock/rspec'
# Allow http connections on localhost
WebMock.disable_net_connect!(allow_localhost: true)


RSpec.configure do |config|

end
