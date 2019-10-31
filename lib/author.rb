# require "pry"
class Author
  attr_reader :title
  # attr_writer :author
  attr_accessor :name, :author

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select { |post| post.author == self }
  end

  def add_post(post)
    post.author = self
    @posts << post
    # binding.pry
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    # binding.pry
    add_post(new_post)
    # new_post.author = self
    # @posts << new_post
  end
  

  def self.post_count
    Post.all.length
  end

end