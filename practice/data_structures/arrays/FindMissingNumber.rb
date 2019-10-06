# Problem:
=begin
Given an array of size N ,taht has elements in range 1 to N ,all elements in the arrayb are unique, 
Find the missing number.
e.g.
array = [1,5,2,4,6]
answer = 3
=end

#Approach 1 - Find the sum of all elements of array and substract it from sum of the range , the difference will be missing number.
# Time-complexity = O(n)
#Caveats: If the numbers are very large the sum can lead to integer overflow.

def find_missing_number(a)
    n = a.length+1
    range_sum = (n * (n+1))/2  # Sum of numbers from 1 to n is (n* n+1 )/2
    arr_sum = 0
    for x in a
        arr_sum+=x
    end
    
    return missing_element = range_sum - arr_sum
    
end


#Approach 2 (No integer overflow)- Take bitwise XOR of all elements of the array with the numbers in given range, 
#As( a XOR a == 0 ) all numbers present in array will xor out and become zero except the missing number. 
# Time-complexity = O(n)

def find_missing_number(a)
    n = a.length+1
    missing_element = 0
    (1..n).each {|num| missing_element^= num}
    for x in a
        missing_element^=x
    end
  return missing_element
end



#Ruby magic
#One line code but it uses O(n) auxiliary-space, it returns an array containing only the missing_element
# Array1-Array2 in ruby returns an array containing all the elements that are in Array1 but not in Array2

def find_missing_number(a)
    n = a.length+1
    range = Array (1..n)
    missing_element = range-a
end
