# Algorithm to find the largest possible continuos sum in an array.
#Time-complexity: O(n), Auxiliary space: O(1)
# Algorithm-paradigm: Dynamic-programming

# This algorithm doesn't work for negative numbers,it simply returns zero if all numbers are negative.
def max_continuos_sum(a)
   max_ending_sum = max_slice_sum =0 
   n=a.length
   for i in 0...n
    max_ending_sum = [0,(max_ending_sum+a[i])].max
    max_slice_sum = [max_slice_sum,max_ending_sum].max
   end
    return  max_slice_sum
end

max_continuos_sum([1,1,-1,2,3,4,-9,3,4,5,-6]) # => 13


# Algorithm to handle negative numbers as well
def max_continuos_sum(a)
   max_ending_sum = max_slice_sum =a[0]
   n=a.length
   for i in 0...n
    max_ending_sum = [a[i],(max_ending_sum+a[i])].max
    max_slice_sum = [max_slice_sum,max_ending_sum].max
   end
    return  max_slice_sum
end

max_continuos_sum([-5,-4,-10,-2,-3,-2,-1,-9]) #=> -1