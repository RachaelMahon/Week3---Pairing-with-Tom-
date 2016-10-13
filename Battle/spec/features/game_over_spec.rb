require 'spec_helper'
require 'app'

feature 'Game Over' do

  before do
    visit('/')
    fill_in "player1", with: 'Buddy'
    fill_in "player2", with: 'Ginger Cat'
    click_button 'Play!'
    end

scenario 'game over when HP of either player is 0' do
  11.times  {click_button 'Attack!'
              click_button 'Continue!'}
  expect(page).to have_content 'Game over - Buddy won : Ginger Cat lost'
end

end
