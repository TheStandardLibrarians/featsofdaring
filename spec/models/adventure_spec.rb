require "rails_helper"

describe Adventure do
  describe "Can we construct an instance of class Adventure" do
    it "attempts to create new Adventure class" do
      @adventure = Adventure.new("new adventure", "new adventure introduction", "1") 
      expect(@adventure.title).to eq("new adventure")
      expect(@adventure.introduction).to eq("new adventure introduction")
      expect(@adventure.id).to eq("1")
    end
  end

  describe "Can we find an adventure" do
    it "looks up an adventure" do
      @adventure1 = Adventure.new("Adventure 1", "Net::HTTP", "1")
      @adventure2 = Adventure.new("Adventure 2", "Logger", "2")
      expect(Adventure.find(1)).to eq(@adventure1)
      expect(Adventure.find(2)).to eq(@adventure2)
    end
  end
end
