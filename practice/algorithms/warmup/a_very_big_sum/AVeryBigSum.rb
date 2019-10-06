=begin
see problem here- https://www.hackerrank.com/challenges/a-very-big-sum
=end

#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
sum=0
arr.each do |x|
    sum+=x
end
print sum