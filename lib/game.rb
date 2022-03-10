require_relative 'player'

class Game
    def initialize(player)
        @player = player
    end

    def attack
        @player.receive_damage
    end
end
