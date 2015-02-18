require 'rails_helper'

feature 'Emerald goes to adventures/1/objectives/2/learn page' do
  scenario 'Emerald enters adventures/1/objectives/2/learn as url' do
    visit 'adventures/1/objectives/2/learn'
    expect(page).to have_content 'Objective 2'
  end
end
