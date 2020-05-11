require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestSportsTeam < MiniTest::Test

  def test_team_name
    new_team = SportsTeam.new("Aberdeen", ["Cosgrove", "McGinn", "Lewis"], "Derek McInnes")
    assert_equal("Aberdeen", new_team.team_name)
  end

  def test_team_players
    new_team = SportsTeam.new("Aberdeen", ["Cosgrove", "McGinn", "Lewis"], "Derek McInnes")
    assert_equal(["Cosgrove", "McGinn", "Lewis"], new_team.players)
  end

  def test_add_new_player
    new_team = SportsTeam.new("Aberdeen", ["Cosgrove", "McGinn", "Lewis"], "Derek McInnes")
    new_team.add_new_player("Logan")
    assert_equal(4, new_team.players.length)
  end

  def test_player_in_team
      new_team = SportsTeam.new("Aberdeen", ["Cosgrove", "McGinn", "Lewis"], "Derek McInnes")
      assert_equal(true, new_team.player_in_team("Lewis"))
    end

    def test_team_points
      new_team = SportsTeam.new("Aberdeen", ["Cosgrove", "McGinn", "Lewis"], "Derek McInnes")
      new_team.match_result("draw")
      assert_equal(1, new_team.points)
    end


end
