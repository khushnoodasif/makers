def sign_in_and_play
  visit ('/')
  fill_in :player_1, with: 'Player 1'
  fill_in :player_2, with: 'Player 2'
  click_button 'Submit'
end

def each_player_attacks
  click_button 'Attack'
  click_button 'OK'
  click_button 'Attack'
  click_button 'OK'
end