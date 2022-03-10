feature 'Attack' do
    scenario 'Player1 attacks Player2' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Kaju attacked Badam'
    end

    scenario 'reducePlayer2 HP by 10' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        expect(page).to have_content '50HP'
    end
end