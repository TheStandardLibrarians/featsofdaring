require 'rails_helper'

feature 'Emerald visits adventure 1 objective 1' do
  scenario 'emerald reads narrative' do
    visit '/adventures/1/objectives/1'
    save_and_open_page
    expect(page).to have_content 'On the right, in the terminal window try placing a call to PrettyP.'
  end
  scenario 'fills in form with meow' do

    subject { page }

    visit '/adventures/1/objectives/1'
    fill_in 'ripl_input', with:  'meow'
    click_button 'submit'
    expect(current_path).to eq adventure_objective_path(adventure_id: 1, id: 2)
  end

  scenario 'fills in form with proper input.' do
    subject { page }

    visit '/adventures/1/objectives/1'
    fill_in 'ripl_input', with:  'Net::HTTP.get_response(URI(\'http://prettyp.herokuapp.com\')).code'
    click_button 'submit'
    expect(page).to have_content '301'
  end
  scenario 'emerald sees her specific objective' do
    visit '/adventures/1/objectives/1/'
    expect(page).to have_content("Adventure 1")
    expect(page).to have_content("Objective 1")
  end
end
