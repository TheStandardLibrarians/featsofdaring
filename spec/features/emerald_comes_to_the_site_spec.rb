require 'rails_helper'

feature 'Emerald comes to the site' do
 scenario 'Emerald views the home page' do
   visit '/'
   expect(page).to have_content 'Adventure 1'
 end
 scenario "emerald views intro text" do
   visit "/"
   expect(page).to have_content I18n.t("introduction.copy")
 end
 scenario "Emerald sees link_to Adventure one" do
   visit '/'
   click_link 'Adventure 1'
   expect(page).to have_content "Oh no!"
 end
 scenario "Emerald Sees repl on Home Page" do
   visit '/'
   expect(page).to have_css 'textarea#ripl_input'
   end
end
