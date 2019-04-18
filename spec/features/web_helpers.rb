
def sign_in_and_play
  visit('/')
  fill_in('Player1', with: 'Goku')
  fill_in('Player2', with: 'Vegita')
  click_button('Fight')
end