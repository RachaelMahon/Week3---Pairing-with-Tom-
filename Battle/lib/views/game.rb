class Game

attr_reader :player1, :player2, :turn, :not_turn

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @turn = @player1
    @not_turn = @player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    if @turn == @player1
      @turn = @player2
      @not_turn = @player1
    elsif @turn == @player2
      @turn = @player1
      @not_turn = @player2
  end
end

  def game_over_check?
    return true if @player1.hit_points == 0 || @player2.hit_points == 0
  end


end
