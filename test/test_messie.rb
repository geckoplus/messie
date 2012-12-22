$:.unshift(File.join(File.dirname(__FILE__), %w{.. lib}))

begin
  require 'simplecov'
  SimpleCov.start
rescue LoadError
  # ignore ...
end

require 'messie'
require 'test/unit'

module Messie
  class TestCase < Test::Unit::TestCase
    def test_module
      assert_not_nil Messie::VERSION
    end
  end
end