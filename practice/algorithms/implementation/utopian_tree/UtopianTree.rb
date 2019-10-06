=begin
see problem here: https://www.hackerrank.com/challenges/utopian-tree
=end

#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    pow = n/2
    value = (2**pow) + ((2**pow)-1)
    if n%2==0
        puts value
    else
        puts (2*value)
    end
end