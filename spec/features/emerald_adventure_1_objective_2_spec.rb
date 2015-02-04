require 'rails_helper'

feature 'Emerald goes to adv1/obj2 page' do
  scenario 'Emerald enters adventure/1/objective/learn as url' do
    visit 'adventures/1/objectives/2/learn'
    expect(page).to have_content 'Objective 2'
  end
end
