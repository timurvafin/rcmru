$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'rcmru'

require 'test/unit/assertions'

World(Test::Unit::Assertions)
