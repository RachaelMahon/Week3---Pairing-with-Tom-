
feature 'enter_names' do
  scenario 'visiting web page' do
    visit('/')
    fill_in :player1, with: "Buddy"
    fill_in :player2, with: "Snoopy"
    click_button 'Play!'
    expect(page).to have_content 'Buddy vs. Snoopy'
  end
end
