class Adventure
  attr_accessor :title, :introduction, :id 
  def initialize (title, introduction, id) 
    @title = title
    @introduction = introduction
    @id = id
  end
  def self.find(id)
    [
      Adventure.new("Adventure 1", "Net::HTTP", "1"),
      Adventure.new("Adventure 2", "Logger", "2")
    ].find { |value| value.id.to_i == id } 
  end

  def ==(other)
    @title == other.title &&
    @introduction == other.introduction &&
    @id == other.id
  end
end
