class Game


  attr_reader :player_1, :player_2, :current_turn, :next_turn

  def initialize(name_1, name_2)
    @player_1 = name_1
    @player_2 = name_2
    @players = [player_1,player_2]
    @current_turn = @player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end


 # def switch_turn
 #   if@current_turn == @player_1
 #     @current_turn = @player_2
 #     @next_turn = @player_1
 #  elsif @current_turn == @player_2
 #    @current_turn = @player_1
 #    @next_turn = @player_2
 #  end
 # end
end
