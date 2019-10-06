#Given an array and number K,Print the maximum value in each sub-arrays of size K
#Time-complexity:O(nk),Auxiliary-space:O(1)


def find_max(a,k)
    len=a.length
    return -1 if len<k
    
    for i in 0..len-k
      	max=a[i]
        for j in i+1...i+k
            if a[j]>max
                max=a[j]
            end
        end
      print "#{max} "
    end
  return 
end

find_max([9,1,8,2,7,3,6,4,5,15,17],4)
                
                
#Optimized(Though the complexity is same asymptotically but the average running time is very much optimized)
#Check if max of last k-length subarray lies in the new window if yes then just compare the max and newly added element
def find_max(a,k)
    len=a.length
    return -1 if len<k
    max=a[0]
    max_index=0
    for i in 0..len-k
        unless max_index<i
            if a[i+k-1]>max
                max=a[i+k-1]
                max_index=i+k-1
            end
        else
          	max=a[i]
          	max_index=i
            for j in i...i+k
                if a[j]>max
                    max=a[j]
                    max_index=j
                end
            end
        end
      print "#{max} "
    end
  return 
end


find_max([1,2,3,1,4,5,2,3,6],3)
find_max([9,1,8,2,7,3,6,4,5,15,17],4)
    