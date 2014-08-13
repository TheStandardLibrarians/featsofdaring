require 'rails_helper'

describe Narrative do
  describe 'Can we construct an instance of class Narrative' do
    it 'attempts to create new Narrative class' do
      @narrative = Narrative.new('1', '1', 'learn', 'help cuddy', 'www.example.com/picture.jpg')
      expect(@narrative.id).to eq('1')
      expect(@narrative.objective_id).to eq('1')
      expect(@narrative.type).to eq('learn')
      expect(@narrative.text).to eq('help cuddy')
      expect(@narrative.image_url).to eq('www.example.com/picture.jpg')
    end
  end
end
