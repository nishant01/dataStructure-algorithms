=begin
A modified Kaprekar number is a positive whole number nn with d digits, uch that when we split its square into two pieces - a right hand piece r with d digits
and a left hand piece l that contains the remaining d or d−1 digits,the sum of the pieces is equal to the original number (i.e. l + r = n).
Note: r may have leading zeros.

Kaprekar number for a given base is a non-negative integer, the representation of whose square in that base can be split into two parts 
that add up to the original number again. For instance, 45 is a Kaprekar number, because 45² = 2025 and 20+25 = 45.

The Task
You are given the two positive integers p and q, where p is lower than q. 
Write a program to determine how many Kaprekar numbers are there in the range between pp and qq (both inclusive) and display them all.

Input Format
There will be two lines of input: pp, lowest value qq, highest value

Constraints:
0<p<q<1000000

Output Format

Output each Kaprekar number in the given range, space-separated on a single line. 
If no Kaprekar numbers exist in the given range, print INVALID RANGE.

Sample Input
1
100
Sample Output
1 9 45 55 99
Explanation
11, 99, 4545, 5555, and 9999 are the Kaprekar Numbers in the given range
=end

# Approach 1

p = gets.chomp
q= gets.chomp

p= p.to_i
q= q.to_i

arr=[]

for i in p..q
    sq = i*i
    sq = sq.to_s
    len = sq.length
    
    if len>1
        mid= len/2
        left = sq[0,mid].to_i
        right = sq[mid,len-1].to_i
    else
        left=1
        right=0
        mid=0
    end
    
    if (left+right) == i
        if (len == mid+1) || (right>0)
           arr<<i
        end
    end
end

unless arr.empty?
    arr.each do |x|
        print x.to_s+" "
    end
else
    print "INVALID RANGE"
end

# Approach 2

low = gets.chomp.to_i
high = gets.chomp.to_i
count = 0

for i in (low..high) do 
    num = (i**2)
    size = (i.to_s.size)
    
    l = num / (10 ** (size))
    r = num % (10 ** (size) )  
          
    if (l+r == i)
        print i.to_s + " "
    else
        count += 1
        if (count == (high - low +1))
            print "INVALID RANGE"
        end    
    end  
    
end 
