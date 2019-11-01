class Game


  attr_reader :player_1, :player_2, :current_turn

  def initialize(name_1, name_2)
    @player_1 = Player.new(name_1)
    @player_2 = Player.new(name_2)
    @current_turn = @player_1.name
  end

  def attack(player)
    player.receive_damage
    @current_turn = player.name
  end

end
