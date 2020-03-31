require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'

class TeamTest < Minitest::Test

  def setup
    @team = Team.new("France")
  end

  def test_it_exits
    assert_instance_of Team, @team
  end
end
