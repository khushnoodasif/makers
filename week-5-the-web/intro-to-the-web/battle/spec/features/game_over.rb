feature "game over" do
  scenario "player 2 has zero hit points" do
    sign_in_and_play
    6.times { each_player_attacks }
    expect(page).to have_content 'Player 1 won!'
  end
end