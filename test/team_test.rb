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

  def test_team_attributes
    assert_equal 'France', @team.country
  end

  def test_team_starts_off_not_eliminated
    assert_equal false, @team.eliminated?
  end
end
