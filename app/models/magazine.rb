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
    #helper method
    Article.all.select {|article| article.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    articles.map {|article| article.title}
  end
end
