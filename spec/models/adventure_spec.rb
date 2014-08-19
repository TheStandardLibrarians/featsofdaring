require 'rails_helper'

describe Adventure do
  describe 'Can we construct an instance of class Adventure' do
    it 'attempts to create new Adventure class' do
      @adventure = Adventure.new('1', 'new adventure', 'new adventure introduction')
      expect(@adventure.id).to eq('1')
      expect(@adventure.title).to eq('new adventure')
      expect(@adventure.introduction).to eq('new adventure introduction')
    end
  end
  describe 'Can we find an Adventure' do
    it 'looks up an adventure' do
      @adventure1 = Adventure::ADVENTURES[0]
      expect(Adventure.find(@adventure1.id)).to eq(@adventure1)
    end
  end
end
