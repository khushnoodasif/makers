feature 'Switch turns' do
  scenario 'seeing the current turn' do
    sign_in_and_play
    expect(page).to have_content "Player 1's turn"
  end

  scenario 'after one player attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content "Player 1's turn"
    expect(page).to have_content "Player 2's turn"
  end
end