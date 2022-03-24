feature "form" do
  scenario "fill and submit a form for players" do
    sign_in_and_play
    expect(page).to have_content 'Player 1 vs. Player 2'
  end
end