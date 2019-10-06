#Given an array arr[], find the maximum j – i such that arr[j] > arr[i].
# Time-complecity: O(n), Space-complexity:O(n)

def max_index_diff(a)
    len=a.length
    max_diff=-1
    lmin=Array.new(len)
    rmax=Array.new(len)
    lmin[0]=a[0]
    for i in 1...len
        lmin[i]=[a[i],lmin[i-1]].min
    end
    rmax[len-1]=a[len-1]
    for i in (len-2).downto(0)
        rmax[i]=[a[i],rmax[i+1]].max
    end
    i=j=0
  while (j<len && i<len)
        if lmin[i]<rmax[j]
            max_diff=[max_diff,j-i].max
            j+=1
        else
            i+=1
        end
    end
    return max_diff
end
max_index_diff([34, 8, 10, 3, 2, 80, 30, 33, 1]) # => 6 