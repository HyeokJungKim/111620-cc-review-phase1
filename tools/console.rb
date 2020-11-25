require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
eric = Author.new("Eric")
mad = Magazine.new("Mad", "Humor")
a1 = Article.new(eric, mad, "ActiveRecord 101")







### DO NOT REMOVE THIS
binding.pry

0
