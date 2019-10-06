=begin
see problem here- https://www.hackerrank.com/challenges/plus-minus
=end

#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
pos=neg=zero=0
arr.each do |a|
    if a>0
        pos+=1
    elsif a<0
        neg+=1
    else
        zero+=1
    end
end
if n>0
    puts pos.fdiv(n)
    puts neg.fdiv(n)
    puts zero.fdiv(n)
else
    puts 0
    puts 0
    puts 0
end