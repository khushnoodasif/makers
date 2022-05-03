feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2'
  end

  scenario 'attack Player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Player 2 attacked Player 1'
  end

  scenario 'reduce player 1 HP by 10' do
    sign_in_and_play
    each_player_attacks
    expect(page).not_to have_content 'Player 1: 60HP'
    expect(page).to have_content 'Player 1: 50HP'
  end
end