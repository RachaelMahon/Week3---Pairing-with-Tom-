
feature 'enter_names' do

  before :each do
    visit('/')
    fill_in :player1, with: "Buddy"
    fill_in :player2, with: "Snoopy"
  end

  scenario 'visiting web page' do
    click_button 'Play!'
    expect(page).to have_content 'Buddy vs. Snoopy'
  end


  scenario 'players can see each others hit points' do
    visit ('/play')
    expect(page).to have_text "#{@player1_HP}"
  end
end
