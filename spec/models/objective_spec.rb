
require "rails_helper"

describe Objective do
  describe "Can we construct an instance of class Objective" do
    it "attempts to create new Objective class" do
      @objective = Objective.new("1", "1", "objective 1", "301") 
      expect(@objective.id).to eq("1")
      expect(@objective.adventure_id).to eq("1")
      expect(@objective.title).to eq("objective 1")
      expect(@objective.expected_output).to eq("301")
    end
  end
end
