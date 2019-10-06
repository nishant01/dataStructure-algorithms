#Given a sorted array arr[] and a number x, write a function that counts the occurrences of x in arr[]
#Algorithm: Binary Search
#Time-complexity:O(logn),Auxiliary space:O(1)


def count_occurences(a,key)

  	len=a.length
   
  #observe boundary conditions
  i=first(a,-1,len-1,key)
    return i if i==-1 # return -1 if key not present in array
  j=last(a,0,len,key)
    return j-i+1,j,i
end

def first(a,lo,hi,key)
     #loop to find first occurence
    while hi-lo>1
        mid=lo+(hi-lo)/2
        if a[mid]>=key
            hi=mid
        else
            lo=mid
        end
    end
    if a[hi]==key
        return hi
    else
        return -1
    end
end


def last(a,lo,hi,key)
     #loop to find last occurence
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
count_occurences([1, 1, 2, 2, 2, 2, 3,3],1)