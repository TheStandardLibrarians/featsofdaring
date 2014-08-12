
require 'rails_helper'

describe ObjectivesController do
  describe '#update (with correct answer to \'challenge\')' do
    it 'receives input and evaluates Ruby' do
      put :update, adventure_id: 1, id: 1, ripl_input: 'RUBY_VERSION'
      expect(response.body).to include '2.1.2'
    end
  end
end
