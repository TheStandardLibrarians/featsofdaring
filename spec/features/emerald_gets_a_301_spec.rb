require 'rails_helper'

feature "Emerald calls URLs which return status codes" do
  scenario "emerald gets a 301" do
    visit "/prettyp"
    expect(page.status_code).to eq 301
  end
end
