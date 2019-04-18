RSpec.feature 'Testing Infrastructure' do
  scenario 'Can run up and check page content' do
    sign_in_and_play
    expect(page).to have_content('Goku vs Vegita')
  end
end

RSpec.feature 'Players HP' do
  scenario 'Check player2s hit points' do
    sign_in_and_play
    expect(page).to have_content('Vegita HP: 8000')
  end
end

RSpec.feature 'Players HP' do
  scenario 'Confirms that you attacked player2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('You attacked Vegita!')
  end
end
