feature 'Enter names' do
  context "log in" do
    scenario 'submitting names' do
      sign_in_and_play
      expect(page).to have_content 'Dave vs. Mittens'
    end

    scenario 'Player 2 HP' do
      sign_in_and_play
      expect(page).to have_content 'Mittens: 100HP'
    end
  end

context 'attack' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_button "Dave Attack!"
    expect(page).to have_content 'Dave attacked Mittens'
  end
end
end
