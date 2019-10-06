# Given a sorted array of n unique integers where each integer is in the range from 0 to m-1 and m > n.
# Find the smallest number that is missing from the array.

#Algorithm: Binary Search (Compare elements with indexes and then decide)
#Time-complexity: O(logn), Auxiliary-space: O(1)


# Iterative
def smallest_missing(a)
    lo=0
    hi=a.length-1
    while hi>lo
        mid=lo+(hi-lo)/2
        if a[mid]>mid
            hi=mid
        else
            lo=mid+1
        end
    end
    if a[lo]==lo # if lo == end of array
        print lo+1  
    else
        print lo
    end
end
smallest_missing([0, 1, 2, 3]) #=> 4
smallest_missing([0, 1, 2, 5]) #=> 3
            
#recursive

        #Driver function
def driver_func(a)
    lo=0
    hi=a.length-1
    print smallest_missing(a,lo,hi)
end

    #Algorithm
def smallest_missing(a,lo,hi)
    if lo>hi
        return hi+1
    end
    if a[lo] != lo
        return lo
    end
    mid= lo+(hi-lo)/2
    if a[mid]>mid
        return smallest_missing(a,lo,mid)
    else
        return smallest_missing(a,mid+1,hi)
    end
end
driver_func([0, 1, 2, 3]) #=> 4
driver_func([0, 1, 2, 5]) #=> 3
