require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

mag1 = Magazine.new("Swimming", "Sports")
mag2 = Magazine.new("Tables Are Cool", "Furniture")
mag3 = Magazine.new("Basketball", "Sports")
mag4 = Magazine.new("Swimming", "Sports Techniques")

auth1 = Author.new("Yung")
auth2 = Author.new("Evans")

art1 = Article.new("Michael Phelps, Unstoppable", mag1, auth1)
art2 = Article.new("Ikea, Closing Down?", mag2, auth2)
art3 = Article.new("Michael Jordan, Returning to NBA?", mag3, auth1)
art4 = Article.new("Beating Michael Phelps", mag1, auth1)

binding.pry

0
