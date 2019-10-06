=begin
See problem here - https://www.hackerrank.com/challenges/simple-array-sum

=end

#!/bin/ruby

n = gets.strip.to_i # No need of this variable, but it was given as input
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
sum=0
arr.each do |a|
    sum+=a
end
print sum