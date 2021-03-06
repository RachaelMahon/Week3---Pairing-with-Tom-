require 'spec_helper'
require 'app'

feature 'enter_names' do

  before do
    visit('/')
    fill_in 'player1', with: 'Buddy'
    fill_in 'player2', with: 'Ginger'
    click_button 'Play!'
  end

  scenario 'visiting web page' do
    expect(page).to have_content 'Buddy vs. Ginger'
  end

  scenario 'players can see each others hit points' do
    expect(page).to have_text "#{@player1_HP}"
  end

end
