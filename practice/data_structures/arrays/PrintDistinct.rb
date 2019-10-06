#Given an array which may contain duplicates,print all distinct elements.
#e.g. [1,1,2,3,3,4,5,6,6,6,6] should print 1 2 3 4 5 6.

#Approach 1: Using Sorting
#Time-complexity: O(nlogn){of sorting},Auxiliary-space : O(1)

def print_distinct(a)
    n=a.length
    a.sort!                 #You can use any o(nlogn) sorting algorithm you wish
    i=0
    while i<n
      while (i<n-1 && a[i] == a[i+1])
        i+=1  
      end
      print "#{a[i]} "
      i+=1
    end
    return
end
        
print_distinct([4, 7, 4, 1, 1, 4, 8, 10, 6, 7]) # => 1 4 6 7 8 10

#Approach 2: Using Hashing
#Time-complexity: O(n),Auxiliary-space:O(n) {for hash}

def print_distinct(a)
    n=a.length
    hash=Hash.new()
    for i in 0...n
        unless hash[a[i]]
            hash[a[i]]=1
            print "#{a[i]} " 
        end
    end      
    return
end
        
print_distinct([4, 7, 4, 1, 1, 4, 8, 10, 6, 7]) # => 4 7 1 8 10 6 
