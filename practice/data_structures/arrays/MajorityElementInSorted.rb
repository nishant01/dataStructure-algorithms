# Find majority element(if exists) in a given sorted array.
# A majority element in an array A[] of size n is an element that appears more than n/2 times 
#Time-complexity: O(logn), Auxiliary-space:O(1)
#Algorithm: Binary-search

def majority_element(a)
  	len=a.length
   	lo=0
  	hi=len-1
   	candidate=a[lo+(hi-lo)/2]
   while hi-lo>1
        mid=lo+(hi-lo)/2
        if a[mid]>=candidate
            hi=mid
        else
            lo=mid
        end
   end
  
   if a[hi]==candidate
       	left_index=hi
     	right_index=left_index+(len/2)
  		if a[right_index]==candidate
          return candidate
   		else
       		return -1
   		end
   end
  
    
end
majority_element([1,2, 2, 3, 3, 3, 3]) # => 3