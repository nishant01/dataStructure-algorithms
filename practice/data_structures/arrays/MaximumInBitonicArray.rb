#Given an Bitonic Array(array of integers which is initially increasing and then decreasing),
#find the maximum value in the array
#Time-complexity: O(logn),Auxiliary-space:O(1)
#Algorithm: Binary-search
=begin
#caveat:This method works only for distinct numbers,
coz in case of too many duplicates cause it not possible to decide by constant comparisons at mid, which subarray to choose 
#it will not work for an array like {0, 1, 1, 2, 2, 2, 2, 2, 3, 4, 4, 5, 3, 3, 2, 2, 1, 1} .
=end


# Recursive
def maximum(a,lo,hi)
    if lo==hi
        return a[lo]
    end
    
    if hi==lo+1
        if arr[lo]<arr[hi]
            return a[hi]
        else
            return a[lo]
        end
    end
    
    mid=lo+(hi-lo)/2
    return a[mid] if (a[mid]>a[mid+1] && a[mid]>a[mid-1])
    if (a[mid]>a[mid+1] && a[mid]<a[mid-1])
        return maximum(a,lo,mid-1)
    else
        return maximum(a,mid+1,hi)
    end
end


maximum([1,2,3,4,2,1],0,3) #=> 4
        


#Iterative 
def maximum(a)
   lo=0
   hi=a.length-1
   while hi-lo>1
        mid=lo+(hi-lo)/2
        if a[mid]>a[mid-1]
            lo=mid
        else
            hi=mid
        end
   end
   return [a[lo],a[hi]].max
end

maximum([1,2,3,4,2,1]) #=> 4