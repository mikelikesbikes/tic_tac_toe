require 'rubygems'
require 'rspec'

Dir[File.dirname(__FILE__) + '/../lib/**/*.rb'].each {|file| require file }

RSpec.configure do |config|
  config.mock_with :rspec
end