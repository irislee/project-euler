def pal?(number)
    spl = number.to_s.split("")
    if spl == spl.reverse
        true
    else
        false
    end
end
 
largest = 0
(100..999).each do |num|
    (num..999).each do |n|
        sum = n * num
        largest = sum if sum > largest && pal?(sum)
    end
end
puts largest
 
# => 906609