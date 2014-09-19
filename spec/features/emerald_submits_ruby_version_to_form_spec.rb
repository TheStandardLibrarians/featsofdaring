require 'rails_helper'

feature 'Emerald visits the app' do
  scenario 'fills in form and submits RUBY_VERSION' do

    subject { page }

    visit '/adventures/1/objectives/1/learn'
    fill_in 'ripl_input', with:  'RUBY_VERSION'
    click_button 'submit'
    expect(find_field('ripl_input').value).to eq '2.1.2'
  end
end
