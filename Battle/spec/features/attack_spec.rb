require 'spec_helper'
require 'app'

feature 'Attacking' do

  before do
    visit('/')
    fill_in "player1", with: 'Buddy'
    fill_in "player2", with: 'Ginger Cat'
    click_button 'Play!'
    click_button 'Attack!'
  end

  scenario 'players can attack each other and get a confirmation' do
    expect(page).to have_content 'Buddy attacked Ginger'
  end

  scenario 'player loses hit points when attacked' do
    expect(page).to have_content 'Ginger Cat has 50 remaining Hit points!'
  end


end
