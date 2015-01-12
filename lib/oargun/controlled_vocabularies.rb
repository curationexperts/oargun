# Don't include QA when we're testing because we don't have a database setup
require 'qa' unless defined? WITHOUT_QA

module Oargun::ControlledVocabularies
  extend ActiveSupport::Autoload
  autoload :Geographic
  autoload :Subject
  autoload :WorkType
  autoload :Creator
end
