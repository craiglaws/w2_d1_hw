class SportsTeam


attr_reader :team_name, :players, :coach, :points
attr_writer :coach, :points


  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end


  def add_new_player(new_player)
    @players.push(new_player)
  end

  def player_in_team(player_name)
    for each_player in @players
      if each_player == player_name
        return true
      end
    end
    return false
  end


  def match_result(result)
    if result == "win"
      @points += 3
    elsif result == "draw"
      @points +=1
    else result == "loss"
      @points += 0
    end
  end




end
