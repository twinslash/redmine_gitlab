require 'minitest/autorun'
require 'minitest/spec'
require "minitest-spec-context"

require 'redmine_gitlab'

$VERBOSE=true

Dir["#{File.dirname(__FILE__)}/support/*.rb"].each do |file|
  require file
end
