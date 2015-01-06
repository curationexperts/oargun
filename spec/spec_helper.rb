$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

RDF_VOCABS = {
  geonames:    { prefix: 'http://sws.geonames.org/', strict: false, fetch: false },
  lcsh:        { prefix: 'http://id.loc.gov/authorities/subjects/', strict: false, fetch: false },
  lcnames:     { prefix: 'http://id.loc.gov/authorities/names/', strict: false, fetch: false },
  aat:         { prefix: 'http://vocab.getty.edu/aat/', strict: false, fetch: false },
}

require 'oargun'

RSpec.configure do |config|

end
