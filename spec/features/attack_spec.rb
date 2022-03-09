feature 'Attack' do
    scenario 'Player1 attacks Player2' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Kaju attacked Badam'
    end
end