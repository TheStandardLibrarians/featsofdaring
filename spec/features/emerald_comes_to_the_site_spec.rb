require 'rails_helper'

feature 'Emerald comes to the site' do
<<<<<<< HEAD
  scenario 'Emerald goes to adventure 1' do
    visit '/'
    click_on 'Start Adventure 1'
    expect(page).to have_content 'The curious cat' 
  end
  scenario 'Emerald sees the image on the right' do
    visit '/'
    page.find('.large-illustration')['src'].should have_content 'assets/adventure-one-intro.jpg'    
#expect(page).to have_css('img', text: 'adventure-one-intro.jpg')
=======
  scenario 'Emerald views the home page' do
    visit '/'
    expect(page).to have_content 'If you’re new to programming'
  end
  scenario 'Emerald goes to adventure 1' do
    visit '/'
    click_on 'Start Adventure 1'
    expect(page).to have_content 'The curious cat'
>>>>>>> css and navbar
  end
end
