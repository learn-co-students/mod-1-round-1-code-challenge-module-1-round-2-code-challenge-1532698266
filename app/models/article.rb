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
