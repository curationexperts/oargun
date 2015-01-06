require 'oargun/version'
require 'active_support'
require 'active_triples'

module Oargun
  extend ActiveSupport::Autoload
  autoload :ControlledVocabularies
  autoload :Qa
  autoload :RDF
  autoload :Vocabularies
end
