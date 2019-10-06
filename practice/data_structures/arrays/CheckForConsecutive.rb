#Given an unsorted array of numbers ,return 1 if all the numbers are consecutive else return -1.

#Approach 1: Using an auxiliary array to keep track of visited elements
#Time-complexity:O(n),Auxiliary-space:O(n)
def check_consecutive(a)
    len=a.length
    min=a.min
    max=a.max
    if len==(max-min+1)
       visited=Array.new(len,0)
       for i in 0...len
        return -1 unless visited[a[i]-min]==0
        visited[a[i]-min]=1
       end
      return 1
    end
   return -1 
end
check_consecutive([1,3,3,2]) # => -1
check_consecutive([1,4,3,2]) # => 1

#Approach 2: Instead of using visited(auxiliary) array, we traverse for each index i and make a[i]-min -ve, 
#if a[i]-min is already -ve ,there is a repetition.
#Time-complexity:O(n),Auxiliary-space:O(1)
#Caveat: This algorithm modifies the content of the array and also this method might not work for negative numbers.

def check_consecutive(a)
    len=a.length
    min=a.min
    max=a.max
    if len==(max-min+1)
       for i in 0...len
        j=(a[i]).abs-min
        if a[j]>0
            a[j]=-a[j]
        else
            return -1
        end
       end
      return 1
    end
   return -1 
end

check_consecutive([1,3,3,2]) # => -1
check_consecutive([1,4,3,2,5]) # => 1