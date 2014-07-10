require 'rails_helper'

feature 'Emerald comes to the site' do
 scenario 'Emerald views the home page' do
   visit '/'
   expect(page).to have_content 'Adventure 1'
 end
end
