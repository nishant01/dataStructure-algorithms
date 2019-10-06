=begin
see problem here: https://www.hackerrank.com/challenges/find-digits
=end

#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip
    num = n.to_i
    len = n.length
    ans = 0
    for i in 0...len
        unless n[i]=='0'
            if num % (n[i].to_i) ==0
                ans+=1
            end
        end
    end
            puts ans
end