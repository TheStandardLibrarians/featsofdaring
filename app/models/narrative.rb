class Narrative
  attr_accessor  :pair_id, :type, :copy, :image_url

  def initialize(adventure_id, objective_id, type, copy, image_url)
    @pair_id = { 
		adventure_id: adventure_id, 
		objective_id:  objective_id
		}
    @type = type
    @copy = copy
    @image_url = image_url
  end
NARRATIVES = [
  Narrative.new(Adventure::NETHTTP, Objective::GET_301, 'learn', "You just made a call to the web. You used a library from the Ruby Standard library called net/http to place a call on the web. By making the request you discover that the web page moved. What does this mean? Let’s break that down a bit... When Cuddy calls Pretty P. he can’t reach her because Pretty P. has moved to Hollywood. Just like if you call someone’s phone number who has moved; you would hear a disconnect message from the operator. The web has similar messages. A 301 Error means that the web page has moved. You are often re-directed to adifferent page without even seeing this error.",  'image_url'),
  Narrative.new(2, 1, 'submit', 'copy', 'image_url')
]
  def self.find(adventure_id, objective_id, type)
    NARRATIVES.find do |narrative|  
      narrative.pair_id[:adventure_id] == adventure_id &&
      narrative.pair_id[:objective_id] == objective_id &&
      narrative.type == type 
    end
  end
end
