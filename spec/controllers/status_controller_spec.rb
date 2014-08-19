require 'spec_helper'

describe StatusController do

  describe 'Emerald calls URLs which return status codes' do
    it 'emerald gets a 301' do
      get :prettyp
      expect(response.status).to eq(301)
    end
  end
end
