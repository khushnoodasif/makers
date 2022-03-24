feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature "form" do
  scenario "can submit a form" do
    visit('/')
    fill_in :player_1, with: 'Player 1'
    fill_in :player_2, with: 'Player 2'
    click_button 'Submit'
    expect(page).to have_content 'Player 1 vs. Player 2'
  end
end

feature "view player hit points" do
  scenario "can see player 2's hit points" do
    visit('/')
    fill_in :player_1, with: 'Player 1'
    fill_in :player_2, with: 'Player 2'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Player 2: 60HP'
  end
end