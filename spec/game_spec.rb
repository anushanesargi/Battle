require 'game'

describe Game do
    kaju = Player.new('Kaju')
    badam = Player.new('Badam')
    game = Game.new(kaju, badam)

    describe ".attack" do
        it 'damages the player' do
            expect(badam).to receive(:receive_damage)
            game.attack
        end
    end

    describe ".player_1" do
        it "returns player_1" do
            expect(game.player_1).to eq kaju
        end
    end

    describe ".player_1" do
        it "returns player_2" do
            expect(game.player_2).to eq badam
        end
    end
end
