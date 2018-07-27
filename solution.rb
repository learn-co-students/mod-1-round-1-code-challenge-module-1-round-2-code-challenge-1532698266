# Please copy/paste all three classes into this file to submit your solution!
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
    #helper method
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

######################################
class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    articles.map {|article| article.title}
  end
end
######################################
class Article
  attr_accessor :author, :magazine, :title

  @@all = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
end
