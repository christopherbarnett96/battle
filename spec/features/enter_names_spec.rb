feature 'Enter names' do

  before do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
  end
  scenario 'submitting names' do
    expect(page).to have_content 'Dave vs. Mittens'
  end

  scenario 'Player 2 HP' do
    expect(page).to have_content 'Mittens: 100HP'
  end
end
