#Given an unsorted array , sort the array when with only using the operation flip(a,i).
#flip(a,i) means reversing the array a from index 0 to i
#Time-complexity: O(n^2), In-place, Not-stable
=begin
Algorithm:Find the max element index max_i,flip(a,i),flip(0,len-1)(now max is at its right position), 
decrease len by 1
=end
def pancake_sort(a)
    n=a.length
    
    for i in n.downto(2)
        max_i=find_max(a,i)
        
        unless max_i == i-1
        
            flip(a,max_i)
            
            flip(a,i-1)
        end
            
    end
    return a
end

def find_max(a,len)
    max_i=0
    i=1
    while i<len
       max_i=i if a[i]>a[max_i]
       i+=1
    end
    return max_i
end

def flip(a,len)
    start=0
    while start<len
        a[start],a[len]=a[len],a[start]
        start+=1
        len-=1
    end
end

pancake_sort([3,5,1,6,8,7,7,1,2,9])	#=> [1, 1, 2, 3, 5, 6, 7, 7, 8, 9]