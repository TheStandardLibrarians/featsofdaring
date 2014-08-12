# class Adventure

class Adventure
  attr_accessor :title, :introduction, :id
  def initialize(title, introduction, id)
    @title = title
    @introduction = introduction
    @id = id
  end

  def ==(other)
    @title == other.title &&
    @introduction == other.introduction &&
    @id == other.id
  end
  def self.find(id)
    @adventures[id]
  end
  @adventures = {
    1 => {
      title: 'Title1',
      introduction: 'intro1'
    },
    2 => {
      title: 'Title2',
      introduction: 'intro2'
    },
    3 => {
      title: 'Title3',
      introduction: 'intro3'
    }
  }
      
end
