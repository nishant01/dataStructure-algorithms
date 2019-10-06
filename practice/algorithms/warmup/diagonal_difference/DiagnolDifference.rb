=begin
see problem here- https://www.hackerrank.com/challenges/diagonal-difference
=end

#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end
dig1=dig2=0
for i in 0...n
    dig1+=a[i][i]
    dig2+=a[i][n-1-i]
end
diff= (dig1-dig2).abs
puts diff
