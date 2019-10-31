class Post
  attr_accessor :author, :title, :name
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @author
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      return self.author.name
    else
      return nil
    end
  end

end