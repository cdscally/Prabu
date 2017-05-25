require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :active_player, :inactive_player

  def initialize(player1, player2)
    @player_1 = Player.new(player1)
    @player_2 = Player.new(player2)
    @active_player = @player_1
    @inactive_player = @player_2
  end

  def attack(player)
    player.reduce_hp
  end

  def switch
    @active_player == @player_1 ? @active_player = @player_2 : @active_player = @player_1
    @inactive_player == @player_1 ? @inactive_player = @player_2 : @inactive_player = @player_1
  end

end
