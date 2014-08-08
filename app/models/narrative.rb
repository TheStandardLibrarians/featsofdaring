class Narrative
  attr_accessor :id, :objective_id, :type, :text, :image_url
  
  def initialize (id, objective_id, type, text, image_url)
    @id = id
    @objective_id = objective_id
    @type = type
    @text = text
    @image_url = image_url
  end
end
