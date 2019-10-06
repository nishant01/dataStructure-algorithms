#Given an array of random numbers, Push all the zero’s of a given array to the end of the array
#Time Complexity: O(n),Auxiliary Space: O(1)

##Algorithm:
    #Traverse the given array from left to right andmaintain count of non-zero elements in array.
    # For every non-zero element arr[i], put the element at ‘arr[count]’ and increment ‘count’. 
    # After complete traversal, all non-zero elements have already been shifted to front end and ‘count’ is set as index of first 0. 
    # Now run a loop which makes all elements zero from ‘count’ till end of the array zero.

def move_zeros(a)
    len=a.length
    count=0
    for i in 0...len
        if a[i]!=0
            a[count]=a[i]
            count+=1
        end
    end
  # Loop from count to len-1 and fill it with zeros 
    while count<len
        a[count]=0
        count+=1
    end
    return a
end

move_zeros([1,2,0,3,0,4,0,5,0,0,6]) # => [1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0]