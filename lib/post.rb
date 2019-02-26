class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title, author=nil)
    @title = title
    @author = author
    @@all << self
  end
  def title
    @title
  end

  def title=(title)
    @title = title
  end
  
  def author_name
    if @author == nil
      @author_name = nil
    else
      @author_name = self.author.name
    end
    @author_name
  end
  def self.all
    @@all
  end
end
