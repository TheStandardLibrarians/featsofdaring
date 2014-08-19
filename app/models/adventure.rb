class Adventure
  attr_accessor :title, :introduction, :id
  def initialize(id, title, introduction)
    @id = id
    @title = title
    @introduction = introduction
  end
  def self.find(id)
    ADVENTURES.find { |value| value.id.to_i == id.to_i }
  end

  def ==(other)
    @title == other.title &&
    @introduction == other.introduction &&
    @id == other.id
  end

  ADVENTURE1_TEXT =
    <<-INTRODUCTION
Oh no! Cuddy runs ahead of Mr. Chips and fell down a well. There are snakes in the well. Cuddy finds a tin can with a string leading to the top of the well. He needs your help to place the call (he thinks the phone works). Let’s try to call Cuddy’s agent, PrettyP.
    INTRODUCTION
  ADVENTURES = [
    Adventure.new( '1', 'Adventure 1', ADVENTURE1_TEXT)
  ]
end
