feature 'taking turns' do
  scenario 'end P1 turn, start P2 turn' do
    sign_in_and_play
    click_button('Dave: use Attack!')
    expect(page).to have_content 'Current turn - Mittens'
  end

  scenario 'start next turn' do
    sign_in_and_play
    click_button('Dave: use Attack!')
    click_button('Next Turn')
    expect(page).to have_button('Mittens: use Attack!')
  end
end
