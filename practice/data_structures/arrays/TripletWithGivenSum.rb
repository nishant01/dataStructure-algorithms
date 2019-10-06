#Given an array and a value, find if there is a triplet in array whose sum is equal to the given value.
#Time-complexity: O(n^2),Auxiliary-space:O(1)
#Algorithm:Sort,fix element then search in the array using two pointers left and right


def search_triplet(a,key)
    len=a.length
    a.sort!         #Any sorting technique can be chosen
    for i in 0...len-1
        sum= key-a[i]
      	left=i+1
        right=len-1
        while(left<right)
            if a[left]+a[right]==sum
                return a[i],a[left],a[right]
            elsif a[left]+a[right]>sum
                right-=1
            else
                left+=1
            end
        end
    end
    return -1
end

search_triplet([12, 3, 4, 1, 6, 9],25) # => [4, 9, 12]