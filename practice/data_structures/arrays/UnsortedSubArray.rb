#Given an unsorted array,find the minimum length of subarraay,sorting which sorts the whole array.
#Time-complexity: O(n),Auxiliary-space:O(1)
=begin
Algorithm: Scan left to right and find first index where next element is less than current,let it be l
(if l==a.length-1 it is already sorted),similarly scan right to left and search first index
where previous element is larger than current,let it be r.Now search for min and max in l to r,
now from 0 to l-1 find first element which is greater than min(let it be i) and 
from r+1 to a.length-1 find first element which is less than max.(let it be j)
set l= i and r=j
minimum length= r-l+1
start=l
end=r
=end
def unsorted_sub(a)
    n=a.length
    l=0
    r=n-1
    for i in 0...n-1
        if a[i]>a[i+1]
            l=i
            break
        else
          l+=1
        end
    end
    return "The complete array is sorted" if l==n-1
    
    for i in (n-1).downto(1)
        if a[i]<a[i-1]
            r=i
            break
        else
          	r-=1
        end
    end
    
    min_i,max_i=find_minmax(a,l,r)
    
    for i in 0...l
       if a[i]>a[min_i]
           l=i
           break
       end
   end
   
    for i in (n-1).downto(r+1)
        if a[i]<a[max_i]
            r=i
            break
        end
    end
  return "Length: #{r-l+1}, Starting index: #{l}, Ending index: #{r}"
end

def find_minmax(a,lo,hi)
    min=max=lo
    for i in (lo+1)..hi
        if a[i]>a[max]
            max=i
        elsif a[i]<min
            min=i
        else
            next
        end
    end
    return min,max
end
                
unsorted_sub([15, 16, 21, 30, 25, 41, 28, 39, 58])   # => Length: 5, Starting index: 3, Ending index: 7  
unsorted_sub([1,2,3,4,5,6])   # => The complete array is sorted 