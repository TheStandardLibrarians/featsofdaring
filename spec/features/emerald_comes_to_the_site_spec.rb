require 'rails_helper'

feature 'Emerald comes to the site' do
  scenario 'Emerald goes to adventure 1' do
    visit '/'
    click_on 'Start Adventure 1'
    expect(page).to have_content 'The curious cat'
  end
  scenario 'Emerald sees the image on the right' do
    visit '/'
    #page.find('.large-illustration')['src'].should have_content
    #'assets/adventure-one-intro.jpg'
    #expect(page).to have_css('img', text: 'adventure-one-intro.jpg')
    expect(page).to have_css("img[src*='adventure-one-intro.jpg']")
  end
end
