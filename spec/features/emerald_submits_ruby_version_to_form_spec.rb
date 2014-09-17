require 'rails_helper'

feature 'Emerald visits the app' do
  scenario 'fills in form and submits RUBY_VERSION' do

    subject { page }

    visit '/adventures/1/objectives/1/learn'
    fill_in 'ripl_input', with:  'RUBY_VERSION'
    click_button 'submit'
    within '[name=ripl_input]' do
      expect(page).to have_content '2.1.2'
    end
  end
end
