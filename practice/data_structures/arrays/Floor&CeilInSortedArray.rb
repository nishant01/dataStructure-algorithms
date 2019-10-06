# Given a sorted array and a value x, Find Ceil(ceiling of x is the smallest element in array greater than or equal to x) 
# and Floor(the greatest element smaller than or equal to x) of x.
#Algorithm: Binary-search
#Time-complexity: O(logn),Auxiliary-space:O(1)


def find_floor_ceil(a,key)
    len=a.length
    floor=find_floor(a,0,len,key)
    ceil=find_ceil(a,-1,len-1,key)
    if floor==-1
        puts "floor doesn't exist"
        if ceil==-1
            puts "Ceil doesn't exist"
            return -1
        else
            return "Ceil is #{a[ceil]}"
        end
    else
        if ceil==-1
            puts "Ceil doesn't exist"
            return "Floor is #{a[floor]}"
        else
            return "Floor is #{a[floor]} and Ceil is #{a[ceil]}"
        end
    end
end
#Method to find floor  
def find_floor(a,lo,hi,key)
    return -1 if key<a[lo]
    while hi-lo>1
        mid=lo+(hi-lo)/2
        if a[mid]<=key
            lo=mid
        else
            hi=mid
        end
    end
    return lo
end
#Method to find Ceil
def find_ceil(a,lo,hi,key)
    return -1 if key>a[hi]
    while hi-lo>1
        mid=lo+(hi-lo)/2
        if a[mid]>=key
            hi=mid
        else
            lo=mid
        end
    end
    return hi
end
 find_floor_ceil([1, 2, 8, 10, 10, 12, 19],19) # => Floor is 19 and Ceil is 19