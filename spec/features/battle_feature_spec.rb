RSpec.feature 'Testing Infrastructure' do
  scenario 'Can run up and check page content' do
    visit('/')
    fill_in('Player1', with: 'Goku')
    fill_in('Player2', with: 'Vegita')
    click_button('Fight')
    expect(page).to have_content('Goku vs Vegita')
  end
end

RSpec.feature 'Players HP' do
  scenario 'Check player2s hit points' do
    visit('/')
    fill_in('Player1', with: 'Goku')
    fill_in('Player2', with: 'Vegita')
    click_button('Fight')
    expect(page).to have_content('Vegita HP: 8000')
  end
end
