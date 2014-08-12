require 'rails_helper'

describe Adventure do
  describe 'Can we construct an instance of class Adventure' do
    it 'attempts to create new Adventure class' do
      @adventure = Adventure.new('new adventure', 'new adventure introduction', '1')
      expect(@adventure.title).to eq('new adventure')
      expect(@adventure.introduction).to eq('new adventure introduction')
      expect(@adventure.id).to eq('1')
    end
  end
end
