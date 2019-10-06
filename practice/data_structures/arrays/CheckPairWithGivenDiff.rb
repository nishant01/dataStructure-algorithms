#Given an unsorted array,Find a pair of elemens with given difference,if no such pair exists return -1.

#Approach 1: Sort the array then search using two pointers left and right
#Time-complexity: O(nlogn),Auxiliary-space:O(1)
def check_pair(a,x)
    len=a.length
    a.sort! 
    left=0
    right=len-1
    
    while left<right
        diff=a[right]-a[left]
      if diff==x.abs       #Considering absolute difference as pair a,b and b,a have same absolute difference
        return a[left],a[right]
      elsif diff>x.abs
        right-=1
      else
        left+=1
      end
    end
    
    return -1
end
check_pair([5, 20, 3, 2, 50, 80],-78) # => [2, 80] 
check_pair([5, 20, 3, 2, 50, 80],78) # => [2, 80] 
check_pair([90, 70, 20, 80, 50],45) # => -1 
            
#Approach 2: Using hash maps
#Time-complexity: O(n), Auxiliary-space: O(n){for hash}
def check_pair(a,x)
    len=a.length
    map=Hash.new()
    for i in 0...len
        t=x.abs+a[i]   #if a-b=x then a=x+b
        s=a[i]-x.abs    #if a-b=x then b=x-a
        if map[t]
           return t,a[i]
        elsif map[s]
            return s,a[i]
        end
        map[a[i]]=1
    end
    return -1
end
check_pair([5, 20, 3, 2, 50, 80],-78) # => [2, 80] 
check_pair([5, 20, 3, 2, 50, 80],78) # => [2, 80] 
check_pair([90, 70, 20, 80, 50],45) # => -1 

    
    