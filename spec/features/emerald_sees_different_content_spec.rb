require 'rails_helper'
feature "Emerald sees different text on different adventure pages" do
  scenario "Emerald checks text at adventure 1" do
    visit 'adventures/1/'
    expect(page).to have_content(Adventure.find(1).title)
  end
#  scenario 'Emerald checks text at Adventure 2' do
#    visit 'adventures/2/'
#    expect(page).to have_content(Adventure.find(2).title)
#  end
end
feature "Objectives links with Narrative" do
    scenario "shows learn narrative on 1/1 page load" do
      visit '/adventures/1/objectives/1'
      expect(page).to have_content(Narrative.find( 1, 1, 'learn' ).copy)
    end
#    scenario "shows learn narrative on 2/1 page load" do
#      visit '/adventures/2/objectives/1' 
#      expect(page).to have_content(Narrative.find( 2, 1, 'learn').copy)
#    end
end
