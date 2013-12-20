# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def factor(num)
  range = 1..(num**0.5)
  range.select{|x| x.prime?}.select do |i|
    num % i == 0
  end.compact.max
end

class Integer
 
  def prime?
    comparison = 0
    return true if self == 2
    return false if self == 1
 
    not_prime = (2..((self**0.5).ceil)).any? do |i|
      comparison +=1
      self % i == 0
    end
 
    !not_prime
  end
 
end

factor(600851475143)
# => 6857 



