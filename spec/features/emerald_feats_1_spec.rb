require 'rails_helper'

feature 'Emerald visits adventure 1' do
  scenario 'learns about cats in the well' do
    visit '/adventures/1/'
    expect(page).to have_content 'Oh no! Cuddy runs ahead of Mr. Chips and fell down a well'
    expect(page).to have_content 'Adventure 1'
  end
end
