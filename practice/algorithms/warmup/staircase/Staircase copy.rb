=begin
see problem here- https://www.hackerrank.com/challenges/staircase
=end
#!/bin/ruby

n = gets.strip.to_i
for i in 1..n
    for j in 1..n-i
        print " "
    end
    for k in n.downto(n-i+1)
        print "#"
    end
    puts "\n"
end