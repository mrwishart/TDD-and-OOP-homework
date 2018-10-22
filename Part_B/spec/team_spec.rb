require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def test_team_initialize

    team = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

  end

  def test_get_teamname

    example = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

    assert_equal("The Ratty Moths", example.team_name)

  end

  def test_get_players

    example = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

    assert_equal(["Alex", "Bob", "Catherine"],example.players)

  end

  def test_get_coach

    example = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

    assert_equal("Sgt Hartman", example.coach)

  end

  def test_change_coach
    example = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

    example.coach = "Mr Strict"

    assert_equal("Mr Strict", example.coach)

  end

  def test_add_player

    example = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

    example.add_player("David")

    assert_equal(4, example.players.length)

  end

  def test_find_player__true

    example = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

    assert_equal(true, example.find_player("Bob"))

  end

  def test_find_player__false

    example = Team.new("The Ratty Moths", ["Alex", "Bob", "Catherine"], "Sgt Hartman")

    assert_equal(false, example.find_player("John"))

  end

end
