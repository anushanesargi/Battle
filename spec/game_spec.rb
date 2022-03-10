require 'game'

describe Game do
    badam = Player.new('Badam')
    game = Game.new(badam)

    describe ".attack" do
        it 'damages the player' do
            expect(badam).to receive(:receive_damage)
            game.attack
        end
    end
end
