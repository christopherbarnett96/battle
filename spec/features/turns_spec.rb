feature 'taking turns' do
  scenario 'end P1 turn, start P2 turn' do
    sign_in_and_play
    click_button('Dave: use Attack!')
    click_button('Next Turn')
    expect(page).to have_content 'Current turn - Mittens'
  end

  scenario 'end P2 turn, start P1 turn' do
    sign_in_and_play
    click_button('Dave: use Attack!')
    click_button('Next Turn')
    click_button('Mittens: use Attack!')
    click_button('Next Turn')
    expect(page).to have_content 'Current turn - Dave'
    expect(page).to have_content('Mittens: 50HP')
    expect(page).to have_content('Dave: 50HP')
  end

  scenario 'start next turn' do
    sign_in_and_play
    click_button('Dave: use Attack!')
    click_button('Next Turn')
    expect(page).to have_button('Mittens: use Attack!')
    expect(page).to have_content('Mittens: 50HP')
  end
end
