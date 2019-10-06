#Given an array replace every element with the next greatest element(largest number on right side) on the right side of the array,
#as there is no element on the right side of last element replace it with -1
#Time-complexity: O(n),Auxiliary-space:O(1)


def replace_with_nge(a)
    len=a.length
    max=a[len-1]
  	a[len-1]=-1
    for i in (len-2).downto(0)
      	current=a[i]
      	a[i]=max
      if current>max
        max=current
      end  
    end
    return a
end

replace_with_nge([5,8,12,10,4,6]) # => [12, 12, 10, 6, 6, -1] 
    
        