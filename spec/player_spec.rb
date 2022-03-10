describe Player do
    kaju = Player.new('Kaju')
    badam = Player.new('Badam')

    describe ".name" do
        it "returns it's name" do
            expect(kaju.name).to eq "Kaju"
        end

    end

    describe ".hit_points" do
        it 'returns hit point' do
            expect(kaju.hit_points).to eq Player::DEFAULT_HIT_POINTS
        end
    end

    describe ".attack" do
        it 'damages the player' do
            expect(badam).to receive(:receive_damage)
            kaju.attack(badam)
        end
    end

    describe ".receive_damage" do
        it 'reduce the hit_points by 10' do
            expect {badam.receive_damage}.to change {badam.hit_points}.by (-10)
        end
    end
end

