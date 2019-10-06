# Find majority element(if exists) in a given array.
# A majority element in an array A[] of size n is an element that appears more than n/2 times 
#Time-complexity: O(n), Auxiliary-space:O(1)


#Moore's Voting algorithm
def majority_element(a)
   len=a.length
   maj_index=0
   count=1
   for i in 1...len
       if a[i]==a[maj_index]
           count+=1
       else
           count-=1
       end
       if count==0
           a[maj_index]=a[i]
           count=1
       end
   end
    candidate=a[maj_index]
    count=0
   for i in 0...len
    if a[i]==candidate
        count+=1
    end
   end
 
   if count > (len/2)
     return candidate
   else
       return -1
   end
end
majority_element([2, 2, 3, 5, 2, 3])