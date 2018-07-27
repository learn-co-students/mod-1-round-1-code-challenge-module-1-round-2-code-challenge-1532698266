#Author has many Articles

class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all#returns array of all authors
    @@all
  end

  def articles#returns a list of articles the author has written
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines#return a list of magazines for which the author has written
    magazines = articles.map do |article|
      article.magazine
    end
    magazines.uniq
  end

  def add_article(title, magazine)
    #given title & magazine, creates new article & associates it with that author and that magazine.
    Article.new(title, magazine, self)
  end


  def find_specialties # returns the categories of the magazines for which the author has written
    specialties = articles.map do |article|
      article.magazine.category
    end
    specialties.uniq
  end
end
