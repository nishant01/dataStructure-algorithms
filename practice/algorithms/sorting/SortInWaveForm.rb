=begin
Given an unsorted array of integers, sort the array into a wave like array. 
An array ‘arr[0..n-1]’ is sorted in wave form if arr[0] >= arr[1] <= arr[2] >= arr[3] <= arr[4] >= …..
=end
#Time-complexity: O(n)
#Auxiliary-space: O(1)

def sort_in_wave(a)
    n= a.length
   (0...n).step(2) do |i|
        if ((i>0) && (a[i]<a[i-1]))
            swap(a,i,i-1)
        end
        
        if ((i<n-1) && (a[i]<a[i+1]))
            swap(a,i,i+1)
        end
    end
    return a
end

def swap(a,i,j)
    a[i],a[j]=a[j],a[i]
end

sort_in_wave([10,90,49,2,1,5,23]) # => [90,10,49,1,5,2,23]

