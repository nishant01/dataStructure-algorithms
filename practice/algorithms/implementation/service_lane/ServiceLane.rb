=begin
see problem here: https://www.hackerrank.com/challenges/service-lane
=end

#!/bin/ruby

n,t = gets.strip.split(' ')
n = n.to_i
t = t.to_i
width = gets.strip
width = width.split(' ').map(&:to_i)
for a0 in (0..t-1)
    i,j = gets.strip.split(' ')
    i = i.to_i
    j = j.to_i
    min=3
    for k in i..j
        min=width[k]  if width[k]<min
    end
     puts min   
end