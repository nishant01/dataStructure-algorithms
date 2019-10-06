=begin
Given an array of n distinct integers sorted in ascending order, find a fixed point in the array.
Fixed Point in an array is an index i such that arr[i] is equal to i, i.e. a[i]==i
Time-complexity: O(logn)
Space-complexity: O(1)
Algorithm: Binary Search
=end

def fixed_point(a)
    n=a.length
    hi=n-1
    lo=0
    while(hi>=lo)
        mid=lo+(hi-lo)/2
        
        if a[mid]==mid
            return mid
        elsif a[mid]<mid
            lo=mid+1
        else
            hi=mid-1
        end
    end
    
    #if no fixed point exists
    return -1

end