def is_prime?(num)
  for x in 2...num   #or 2..num-1
      if num % x == 0
         return false
      end
  end
    return true
end

 is_prime?(15) #false
 is_prime?(11) #true
