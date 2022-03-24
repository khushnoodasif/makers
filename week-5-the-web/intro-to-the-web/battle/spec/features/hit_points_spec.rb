feature 'hit points' do
  scenario 'shows player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 60HP'
  end

  scenario 'shows player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Player 1: 60HP'
  end
end