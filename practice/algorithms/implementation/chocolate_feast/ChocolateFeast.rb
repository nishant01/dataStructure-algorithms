=begin
see problem here: https://www.hackerrank.com/challenges/chocolate-feast
=end

#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n,c,m = gets.strip.split(' ')
    n = n.to_i
    c = c.to_i
    m = m.to_i
    wrappers=toffees=n/c
    while wrappers>=m
        free_toffees = wrappers/m
        toffees+=free_toffees
        wrappers=free_toffees+(wrappers%m)
    end    
    puts toffees
end