class Narrative
  attr_accessor :id, :objective_id, :type, :copy, :image_url

  def initialize(id, objective_id, type, copy, image_url)
    @id = id
    @objective_id = objective_id
    @type = type
    @copy = copy
    @image_url = image_url
  end
  NARRATIVES = [
    Narrative.new(1, 1, 'learn', 'copy', 'image_url'),
    Narrative.new(2, 1, 'submit', 'copy', 'image_url')
  ]

  def self.find_by_objective_id(objective_id)
    NARRATIVES.find_all { |value| value.objective_id.to_i == objective_id }
  end
end
