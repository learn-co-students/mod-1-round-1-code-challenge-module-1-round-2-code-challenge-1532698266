# Please copy/paste all three classes into this file to submit your solution!
#Magazine has many Articles
class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all #returns an array of all magazines
    @@all
  end

  def self.find_by_name(name)#given string magazine name, returns first magazine that matches
    all.find do |magazine|
      magazine.name == name
    end
  end

  def article#returns list of all articles written for that magazine
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles  #returns list of titles of all articles written for that magazine
    article.map do |article|
        article.title
    end
  end

end

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

# Articles belong to both Author and Magazine

class Article
  attr_reader :magazine, :author, :title
  # returns the magazine for that given article
  #returns the author for that given article
  #returns the title for that given article

  @@all = []

  def initialize(title, magazine, author)
    @title = title
    @magazine = magazine
    @author = author
    @@all << self
  end

  def self.all#returns an array of all articles
    @@all
  end
end
