#Swapping two variables


#Method 1 (using temporary variable)

def swap(a,b)
    temp = a
    a = b
    b = temp
    return a,b
end

#Method 2 (Ruby magic)

def swap(a,b)
    a,b=b,a
    return a,b
end

#Method 3 (Using sum and difference, no temporary variable required)
#Caveat: Can lead to integer overflow if a and b are really large integers

def swap(a,b)
    a = a+b
    b = a-b
    a = a-b
    return a,b
end

#Method 4 (Using bitwise XOR ,no temporary variable required)

def swap(a,b)
    a = a^b
    b = a^b
    a = a^b
    return a,b
end