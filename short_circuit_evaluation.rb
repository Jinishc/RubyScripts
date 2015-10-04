#When evaluating the result of && and ||, Ruby doesn't look at both expressions unless it has to.

#proof

def a
  puts " function 'a' has been evaluated. "
  return
  
def b
  puts " function 'b' has also been evaluated. "
  return
  
puts "When evaluating a || b, "  
puts a || b

puts "When evaluating a && b, "
puts a && b


=begin  Output -

      "When evaluating a || b, 
       " function 'a' has been evaluated. "
       
       "When evaluating a && b, 
       " function 'b' has also been evaluated. "
=end
