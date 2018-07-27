require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

magazine1 = Magazine.new("Vogue", "Fashion")
magazine2 = Magazine.new("Time", "News")
magazine3 = Magazine.new("Sunset", "Home")

author1 = Author.new("Ann")
author2 = Author.new("Gardiner")
author3 = Author.new("Ron")

article1 = Article.new(author1, magazine1, "Meet the Bold Talents of Fashion")
article2 = Article.new(author2, magazine2, "Oh no, Trump.")
article3 = Article.new(author3, magazine3, "7 Way to Maximize Your Space")


binding.pry
0
