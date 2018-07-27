class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    articles.map {|article| article.magazine}
  end

  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end

  def find_specialties
    magazines.map {|magazine| magazine.category}
  end
end
