require '././app'

feature 'Attacking' do

  before do
    visit('/')
    fill_in :player1, with: 'Buddy'
    fill_in :player2, with: 'Ginger Cat'
    click_button 'Play!'
    click_button 'Attack'
  end

end
