require 'pry'

class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def self.add_to_post_count
    @@post_count += 1
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    self.class.add_to_post_count
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    new_post.author = self
    @posts << new_post
    self.class.add_to_post_count
  end

end
