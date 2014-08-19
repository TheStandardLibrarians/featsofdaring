class Objective
  attr_accessor :id, :adventure_id, :title, :expected_output
  def initialize(id, adventure_id, title, expected_output)
    @id = id
    @adventure_id = adventure_id
    @title = title
    @expected_output = expected_output
  end
  def self.find(id)
    [
      Objective.new('1', '1', 'Objective 1', '301'),
      Objective.new('2', '1', 'Objective 2', '404')
    ].find { |value| value.id.to_i == id }
  end

  def ==(other)
    @id == other.id &&
    @adventure_id == other.adventure_id &&
    @title == other.title &&
    @expected_output == other.expected_output
  end
end
