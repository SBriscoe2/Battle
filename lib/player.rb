class Player
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def take_damage(damage)
    if @hit_points >= 1
    @hit_points -= damage
    else
    puts "#{@attacker} is the winner"
    end
  end
end

class Game
  attr_reader :player_1, :player_2, :attacker, :defender

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @attacker = @player_2
    @defender = @player_1
  end

  def attack(attacker, defender, damage)
    defender.take_damage(damage)
    if defender.hit_points < 1
      puts "#{attacker} is the winner"
    end
  end

  def switch_players
    @attacker, @defender = @defender, @attacker
  end

end
