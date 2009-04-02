require 'rubygems'
require 'test/unit'

require 'rr'
require "matchy"
require "context"

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rightscale'

class Test::Unit::TestCase
  include RR::Adapters::TestUnit
end
