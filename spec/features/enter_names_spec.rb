feature 'Enter names' do

  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end

  scenario 'Player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end
end
