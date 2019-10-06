#Given an array of elements,Find the smallest and second smallest element.
#time-complexity: O(n),Auxiliary-space:O(1)



def find_smallest2(a)
    len=a.length
    min= second= 1.0/0.0
    
    for i in 0...len
        if a[i]<min
          	second=min
            min=a[i]
        elsif a[i]<second 
            second=a[i]
        end
    end
        
        
    return min,second
    
end

find_smallest2([1,2,3,-1,4,5,0]) # => [-1, 0]