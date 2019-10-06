=begin
Algorithm to print all the LEADERS in the array.
An element is leader if it is greater than all the elements to its right side,the rightmost element is always a leader. 
Time-complexity: O(n)
Auxiliary-space: O(1)
=end

def find_leaders(a)
    n = a.length
    max_from_right = a[n-1]
    print "#{max_from_right}"+" "
    
    for i in (n-2).downto(0)
        if a[i]>max_from_right
            max_from_right=a[i]
            print "#{max_from_right}"+" "
        end
    end
end

find_leaders([16, 17, 4, 3, 5, 2]) # => 2 5 17
    