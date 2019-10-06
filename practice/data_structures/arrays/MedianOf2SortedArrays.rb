# There are 2 sorted arrays A and B of size n each. 
# find the median of the array obtained after merging the above 2 arrays(i.e. array of length 2n).

#Algorithm :Binary-search
#Time-complexity:O(logn),Auxiliary-space: O(1)

def get_median(a,a1,lo1,hi1,lo2,hi2)
  
    #Length of the arrays  
    len=hi1-lo1+1
    
    return -1 if len<=0 # return -1 if array is empty or invalid
    return (a[lo1]+a1[lo2])/2 if  len==1 # return median if each array is of size 1
    return ([a[lo1], a1[lo2]].max + [a[hi1], a1[hi2]].min)/2 if  len==2 # return median if each array is of size 2
  
    #Median and index of median of array 1
    m1,m1_i=median(a,len,lo1)
  
    #Median and index of median of array 2
    m2,m2_i=median(a1,len,lo2)
  
    #Compare medians if equal return either m1 or m2,
    #else if m1<m2 median lies in m1,hi1 and lo1,m2
    #else m1>m2 median lies in m1,hi1 and lo1,m2
    if m1==m2
        return m1
    elsif m1<m2
        return get_median(a,a1,m1_i,hi1,lo2,m2_i)
    else
        return get_median(a,a1,lo1,m1_i,m2_i,hi2)
    end
end

# Utility function to find median of array
def median(arr,n,lo)
    if n%2==0
        return (arr[lo+(n/2)]+arr[lo+((n/2)-1)])/2,lo+(n/2)
    else
        return arr[lo+(n/2)],lo+(n/2)
    end
end

get_median([1,2,3,5,5],[1,2,5,9,11],0,4,0,4) # => 4 