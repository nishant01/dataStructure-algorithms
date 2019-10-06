=begin
Given an array, find a fixed point in the array.
Fixed Point in an array is an index i such that arr[i] is equal to i, i.e. a[i]==i
Time-complexity: O(n)
Space-complexity: O(1)
Algorithm: Linear Search
=end
def fixed_point(a)
    n=a.length
    for i in 0...n
        if a[i]==i
            return i
        end
    end
    #if no fixed point exists
    return -1
end