require 'rails_helper'

feature 'Emerald visits adventure 1' do
  scenario 'learns about cats in the well' do
    visit '/adventures/1/'
    expect(page).to have_content 'The curious cat'
    expect(page).to have_content 'Adventure 1'
  end
end
