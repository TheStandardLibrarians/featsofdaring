require 'rails_helper'

feature 'Emerald visits adventure 1 objective 1' do
  scenario 'learns about the narrative' do
    visit '/adventures/1/objectives/1/learn'
    save_and_open_page
    expect(page).to have_content 'On the right, in the terminal window try placing a call to PrettyP.'
  end

  scenario 'fills in form with proper input.' do
    subject { page }

    visit '/adventures/1/objectives/1/learn'
    fill_in 'ripl_input', with:  'Net::HTTP.get_response(URI(\'http://prettyp.herokuapp.com\'))'
    click_button 'submit'
      expect(current_path).to eq review_adventure_objective_path(1, 1)
      expect(page).to have_content 'You just made a call to the web.'
      expect(find_field('ripl_input').value).to include 'Net::HTTPMovedPermanently'
  end

  scenario 'emerald sees her specific objective' do
    visit '/adventures/1/objectives/1/review'
    expect(page).to have_content("Adventure 1")
  end

  scenario 'emerald types meow in form to move on to objective 2' do

    subject { page }

    visit '/adventures/1/objectives/1/review'
    fill_in 'ripl_input', with:  'meow'
    click_button 'submit'
    expect(current_path).to eq learn_adventure_objective_path(1, 2)
  end
end
