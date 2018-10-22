class Team
  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end
  
  def add_player(new_player)
    @players.push(new_player)
  end

  def find_player(player_name)
    return @players.include?(player_name)
  end

  def result(outcome)
    @points += 3 if outcome == "win"
  end

  # def change_coach(newcoach)
  #   @coach = newcoach
  # end
  #
  # def name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end

end
