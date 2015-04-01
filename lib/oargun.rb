require 'oargun/version'
require 'active_support'
require 'active_triples'
require 'linked_vocabs'
require 'qa' if defined? Rails

module Oargun
  extend ActiveSupport::Autoload
  autoload :ControlledVocabularies
  autoload :Qa
  autoload :RDF
  autoload :Vocabularies
end
