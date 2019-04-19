RSpec.feature 'Testing Infrastructure' do
  scenario 'Can run up and check page content' do
    sign_in_and_play
    expect(page).to have_content('Goku 8000')
  end
end

RSpec.feature 'Players HP' do
  scenario 'Check player2s hit points' do
    sign_in_and_play
    expect(page).to have_content('Vegita 8000')
  end
end

RSpec.feature 'Players HP' do
  scenario 'Confirms that you attacked player2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Goku just attacked Vegita!')
  end
end

RSpec.feature 'Players HP' do
  scenario 'Reduces player2s HP by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Vegita 7900')
  end
end

RSpec.feature 'Players Dialogue' do
  scenario 'Player2 talks to player1' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Damn you Goku!.')
  end
end
