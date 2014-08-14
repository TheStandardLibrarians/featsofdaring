class Narrative
  attr_accessor :id, :pair_id, :type, :copy, :image_url

  def initialize(id, adventure_id, objective_id, type, copy, image_url)
    @id = id
    @pair_id = { 
		adventure_id: adventure_id, 
		objective_id:  objective_id
		}
    @type = type
    @copy = copy
    @image_url = image_url
  end
NARRATIVES = [
  Narrative.new(1, 1, 1, 'learn', 'copy', 'image_url'),
  Narrative.new(2, 2, 1, 'submit', 'copy', 'image_url')
]
  def self.find_by_pair(adventure_id, objective_id, type)
    NARRATIVES.find do |narrative|  
      narrative.pair_id[:adventure_id] == adventure_id &&
      narrative.pair_id[:objective_id] == objective_id &&
      narrative.type == type 
    end
  end
end
