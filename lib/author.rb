class Author
  attr_accessor :name
  @@posts = []

  def initialize(name=nil)
    @name = name
    @posts = []
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end

  def self.posts
    @@posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@posts <<  post
  end

  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    @@posts << title
    title.author = self
  end
  def posts
    @posts
  end
  def self.post_count
    @@posts.length
  end
end
