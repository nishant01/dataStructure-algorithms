# Given an array where all elements appear even number of times except one. 
# All repeating occurrences of elements appear in pairs and these pairs are not adjacent (there cannot be more than two consecutive occurrences of any element). 
# Find the element that appears odd number of times.
# Note that input like {2, 2, 1, 2, 2, 1, 1} is valid as all repeating occurrences occur in pairs and these pairs are not adjacent.
# Input like {2, 1, 2} is invalid as repeating elements don’t appear in pairs. Also, input like {1, 2, 2, 2, 2} is invalid as two pairs of 2 are adjacent. 
# Input like {2, 2, 2, 1} is also invalid as there are three consecutive occurrences of 2.


#Time-complexity: O(logn),Auxiliary-space:O(1)
#Algorithm:Binary-search


def search_odd(a)
    lo=0
    hi=a.length-1
    while hi-lo>1
        mid=lo+(hi-lo)/2
        if mid%2==0
            if a[mid]==a[mid+1]
                lo=mid+2
            else
                hi=mid
            end
        else
            if a[mid]==a[mid-1]
                lo=mid+1
            else
                hi=mid
            end
        end
    end
    return a[lo]
end

search_odd([3,1, 1, 2, 2, 3, 3, 4, 4,600, 600, 4, 4]) # => [3]