# A sorted array is rotated at some unknown point, Search given element in it
# Time-complexity: O(logn),Auxiliary-space:O(1)

# Algorithm: Binary-Search


def search(a,key)
    lo=0
    hi=a.length-1
    while lo<=hi
        mid=lo+(hi-lo)/2
        if a[mid]==key
            return mid
        elsif a[mid]>=a[lo]
            if (a[mid]>key && a[lo]<=key)
                hi=mid-1
            else
                lo=mid+1
            end
        else
            if (a[mid]<key && a[hi]>=key)
                lo=mid+1
            else
                hi=mid-1
            end
        end
    end
    return -1
end

# It doesn’t look possible to search in O(Logn) time in all cases when duplicates are allowed. 
# Consider searching 0 in {2, 2, 2, 2, 2, 2, 2, 2, 0, 2} and {2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}.