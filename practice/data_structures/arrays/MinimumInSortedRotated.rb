# A sorted array is rotated at some unknown point, find the minimum element in it
# Time-complexity: O(logn),Auxiliary-space:O(1)

# Algorithm: Binary-Search



#This method cannot handle duplicates
def search_minimum(a)
    lo=0
    hi=a.length-1
    while(lo<=hi)
        mid= lo+(hi-lo)/2
        if (mid>0 && a[mid-1]>a[mid])
            return "Minimum element is #{a[mid]} at #{mid}"
        elsif a[mid]>a[hi]
            lo=mid+1
        else
            hi=mid-1
        end
    end
  return "Minimum element is #{a[lo]} at #{lo}"     
end
search_minimum([5, 6, 1, 2, 3, 4]) #=> Minimum element is 1 at 2

# It doesn’t look possible to search minimum in O(Logn) time in all cases when duplicates are allowed. 
# Consider {2, 2, 2, 2, 2, 2, 2, 2, 0, 2} and {2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}.