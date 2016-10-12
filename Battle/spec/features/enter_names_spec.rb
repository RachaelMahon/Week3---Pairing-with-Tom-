
feature 'enter_names' do

  before do
    visit('/')
    fill_in :player1, with: "Buddy"
    fill_in :player2, with: "Ginger Cat"
    click_button 'Play!'
  end


  scenario 'visiting web page' do
    # sign_in_and_play
    expect(page).to have_content 'Buddy vs. Ginger Cat'
  end


  scenario 'players can see each others hit points' do
    # sign_in_and_play
    expect(page).to have_text "#{@player1_HP}"
  end

  scenario 'players can attack each other and get a confirmation' do
    # sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Buddy attacked Ginger Cat'
  end



end
