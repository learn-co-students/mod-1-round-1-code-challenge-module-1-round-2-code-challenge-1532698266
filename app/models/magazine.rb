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
