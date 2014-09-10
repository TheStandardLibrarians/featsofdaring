
require 'rails_helper'

describe ObjectivesController do
  describe '#update (with correct answer to \'challenge\')' do
    it 'receives input and evaluates Ruby' do
      put :update, adventure_id: 1, id: 1, ripl_input: 'Net::HTTP.get_response(URI(\'http://prettyp.herokuapp.com\'))'
      expect(response.body).to include '#<Net::HTTPMovedPermanently 301 Moved Permanently  readbody=true>'
    end
  end
end
