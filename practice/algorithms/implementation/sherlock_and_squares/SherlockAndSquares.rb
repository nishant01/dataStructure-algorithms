=begin
see problem here: https://www.hackerrank.com/challenges/sherlock-and-squares
=end

t=gets.strip.to_i
for i in 0...t
    r1,r2=gets.strip.split(" ")
    r1=r1.to_i
    r2=r2.to_i
    puts ((Math.sqrt(r2).floor)-(Math.sqrt(r1).ceil))+1
end