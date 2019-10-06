=begin
Source: https://www.hackerrank.com/challenges/sherlock-and-the-beast
=end

#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    if n%3==0
        print "5" * n
    elsif n%3==1
        if n-10 >=0
            print "5" * (n-10) if n-10>0
            print "3" * 10
        else
            print -1
        end
    else
        if n-5 >=0
            print "5" * (n-5) if n-5>0
            print "3" * 5
        else
            print -1
        end
    end
    puts "\n"
end