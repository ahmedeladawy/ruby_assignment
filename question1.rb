module HelperMethods

 def titleize(title)
   words = title.split(" ")
   words.each_with_index do |word, index|
     if (index == 0) || (word != "of" && word != "the" && word != "and" && word != "in" && word != "from")
       word.capitalize!
   end
 end

   words.join(" ")
 end
end

class Include_test
  attr_accessor :title
  include HelperMethods
end

class Extend_test
  attr_accessor :title
   extend HelperMethods
end

c = Include_test.new
c.title = "hi there from include test"
puts c.titleize(c.title)

d = Extend_test.new
d.title = "hi there from extend test"
puts Extend_test.titleize(d.title)

# include adds the methods from the module into the class as instance methods
# while extend add the methods as class methods
