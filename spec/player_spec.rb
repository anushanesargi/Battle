describe Player do
    kaju = Player.new('Kaju')

    describe "#name"
        it "returns it's name" do
            expect(kaju.name).to eq "Kaju"
        end
end