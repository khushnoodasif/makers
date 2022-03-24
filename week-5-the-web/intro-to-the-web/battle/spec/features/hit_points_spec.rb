feature "view player hit points" do
  scenario "can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 60HP'
  end
end