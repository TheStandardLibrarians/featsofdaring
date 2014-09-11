require 'rails_helper'

feature 'Emerald visits adventure 1' do
  scenario 'learns about cats in the well' do
    visit '/adventures/1/'
<<<<<<< HEAD
    expect(page).to have_content 'The curious cat'
=======
    expect(page).to have_content 'Oh no! Cuddy ran ahead of Mr. Chips and fell down a well'
>>>>>>> css and navbar
    expect(page).to have_content 'Adventure 1'
  end
end
