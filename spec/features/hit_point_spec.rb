feature 'View hit points' do
    scenario 'viewing Player 2 hit points' do
        sign_in_and_play

        # save_and_open_page

        expect(page).to have_content 'Badam: 60HP'
    end
end