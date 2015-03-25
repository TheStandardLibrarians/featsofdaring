require 'rails_helper'

describe Objective do
  describe 'Can we construct an instance of class Objective' do
    it 'attempts to create new Objective class' do
      @objective = Objective.new('1', '1', 'objective 1')
      expect(@objective.pair_id[:objective_id]).to eq('1')
      expect(@objective.pair_id[:adventure_id]).to eq('1')
      expect(@objective.title).to eq('objective 1')
    end
  end
  describe 'Can we find an adventure' do
    it 'looks up an adventure' do
      @objective1 = Objective.new('1', '1', 'Objective 1')
      @objective2 = Objective.new('1', '2', 'Objective 2')
      @objective3 = Objective.new('2', '1', 'Objective 1')
      expect(Objective.find(1, 1)).to eq(@objective1)
      expect(Objective.find(1, 2)).to eq(@objective2)
      expect(Objective.find(2, 1)).to eq(@objective3)
    end
  end
end
