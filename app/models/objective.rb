class Objective
  attr_accessor :title, :expected_output, :pair_id
  def initialize(adventure_id, id, title, expected_output)
    @title = title
    @expected_output = expected_output
    @pair_id = {
                adventure_id: adventure_id,
                objective_id: id
               } 
end
  def self.find(adventure_id, objective_id)
    [
     Objective.new('1', '1', 'Objective 1', '301'),
     Objective.new('1', '2', 'Objective 2', '404'),
     Objective.new('2', '1', 'Objective 1', '200')
    
    ].find { |objective| objective.pair_id[:objective_id].to_i == objective_id.to_i && objective.pair_id[:adventure_id].to_i == adventure_id.to_i }
  end

  def ==(other)
    @pair_id == other.pair_id &&
   # @adventure_id == other.adventure_id &&
    @title == other.title &&
    @expected_output == other.expected_output
  end
# maps ids for find method
  GET_301 = 1

end
