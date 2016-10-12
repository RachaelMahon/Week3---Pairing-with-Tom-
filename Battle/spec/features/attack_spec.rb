feature 'Attacking' do

  before do
    visit('/')
    fill_in :player1, with: "Buddy"
    fill_in :player2, with: "Ginger Cat"
    click_button 'Play!'
    click_button 'Attack'
  end

  scenario 'player1 attacks player two reducing hp points' do
  # sign_in_and_play
  expect(page).not_to have_content 'Ginger cat - 100 - HP'
  expect(page).to have_content 'Ginger cat - 90 - HP'
end

end
