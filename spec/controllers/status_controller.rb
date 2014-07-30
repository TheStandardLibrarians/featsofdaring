require "spec_helper"

describe StatusController do

describe "Emerald calls URLs which return status codes" do
  it "emerald gets a 301" do
    get :prettyp
    expect(response).to be_success
  end
end
end
