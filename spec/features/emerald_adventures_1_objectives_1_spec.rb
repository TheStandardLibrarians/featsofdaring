require 'rails_helper'

feature "Emerald visits adventure 1 objective 1" do
  scenario "emerald reads narrative" do
    visit '/adventures/1/objectives/1'
    expect(page).to have_content 'PrettyP has moved to Hollywood.'  
  end
end
