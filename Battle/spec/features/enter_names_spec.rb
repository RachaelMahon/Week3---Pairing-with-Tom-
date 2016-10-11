
feature 'enter_names' do
  scenario 'visiting web page' do
    visit('/')
    fill_in :player_1_name, with: "Buddy"
    fill_in :player_2_name, with: "Snoopy"
    click_button 'Play!'
    expect(page).to have_content 'Buddy vs. Snoopy'
  end
end
