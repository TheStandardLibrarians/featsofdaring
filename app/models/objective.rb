class Objective
  attr_accessor :id, :adventure_id, :title, :expected_output
  def initialize(id, adventure_id, title, expected_output)
    @id = id
    @adventure_id = adventure_id
    @title = title
    @expected_output = expected_output
  end
end
