feature 'taking turns' do
  scenario 'end P1 turn, start P2 turn' do
    sign_in_and_play
    click_button('Dave: use Attack!')
    expect(page).to have_content 'Current turn - Mittens'
  end
end
