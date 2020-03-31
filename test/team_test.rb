require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'

class TeamTest < Minitest::Test

  def setup
    @team = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
  end

  def test_it_exits
    assert_instance_of Team, @team
  end

  def test_team_attributes
    assert_equal 'France', @team.country
    assert_equal [], @team.players
  end

  def test_team_starts_off_not_eliminated
    assert_equal false, @team.eliminated?
  end

  def test_team_can_add_players
    @team.add_player(@mbappe)
    @team.add_player(@pogba)

    assert_equal [@mbappe, @pogba], @team.players
  end

  def test_players_by_position
    @team.add_player(@mbappe)
    @team.add_player(@pogba)

    assert_equal [@pogba], @team.players_by_position('midfielder')
    assert_equal [@mbappe], @team.players_by_position('forward')
  end
end
