require 'minitest/autorun'
require_relative '../lib/gate.rb'

class GateTest < Minitest::Test 
    def test_gate
        # とりあえずGateオブジェクトが作られることを確認する
        assert Gate.new
    end
end
