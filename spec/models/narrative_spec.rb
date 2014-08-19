require 'rails_helper'

describe Narrative do
  describe 'Can we construct an instance of class Narrative' do
    it 'attempts to create new Narrative class' do
      @narrative = Narrative.new('1', '1', '1', 'learn', 'help cuddy', 'www.example.com/picture.jpg')
      expect(@narrative.id).to eq('1')
      expect(@narrative.pair_id[:adventure_id]).to eq('1')
      expect(@narrative.pair_id[:objective_id]).to eq('1')
      expect(@narrative.type).to eq('learn')
      expect(@narrative.copy).to eq('help cuddy')
      expect(@narrative.image_url).to eq('www.example.com/picture.jpg')
    end
  end
  describe "can we look up a narrative" do
    it 'contains the adventure and objective id' do  
      @narrative = Narrative::NARRATIVES[1]
      @searchresult = Narrative.find_by_pair(2, 1, "submit")
      expect(@searchresult).to eq(@narrative) 
    end
  end
end
