def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Kaju'
    fill_in :player_2_name, with: 'Badam'
    click_button 'Submit'
end