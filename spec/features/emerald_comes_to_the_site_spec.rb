require 'rails_helper'

feature 'Emerald comes to the site' do
  scenario 'Emerald views the home page' do
    visit '/'
    expect(page).to have_content 'Adventure 1'
  end
  scenario 'Emerald goes to adventure 1' do
    visit '/'
    click_on 'Adventure 1'
    expect(page).to have_content Adventure.find(1).title 
    expect(page).to have_content Adventure.find(1).introduction
  end
  scenario 'Emerald sees the repl' do
    visit '/'
    expect(page).to have_css('input')
  end
end
