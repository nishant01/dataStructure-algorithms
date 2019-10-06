# Given an array of n+2 elements with elements value lying beween 1 to n.
# All elements occur once except two.Print the two repeating numbers.

#Approach 1: Using sum and product of array (Making two equation)
#Time-complexity: O(n) Auxiliary-space: O(1) 
#Caveat: If array is large this can lead to integer overflow.

def find_duplicates(a)
    len=a.length
    n=len-2
    sum_of_series= (n*(n+1))/2        #Sum of series 1 to n
    
    #Find sum and product of array elements
    sum=0
    product=1
  
    for x in a
      sum+=x
      product*=x
    end
    
    sum-=sum_of_series          #sum is a+b now,where a and b are repeating numbers
    product/=fact(n)        #product is a*b now,where a and b are repeating numbers
    
  temp= Math.sqrt((sum**2)-(4*product)).to_i # temp is a-b
    
	print "#{(sum+d)/2} #{(sum-d)/2}"
end

def fact(x)
    return 1 if (x==0 || x==1)
    factorial=1
    while x>1
        factorial*=x
        x-=1
    end
	return factorial
end
        

find_duplicates([1,2,3,4,5,5,6,7,8,8]) # => 5 8


#Approach 2: Use count array
#Time-complexity: O(n) Auxiliary-space: O(n) {for count array}

def find_duplicates(a)
    len=a.length
    n=len-2
    count=Array.new(n,0)    # count has length n
    
    
    for i in 0...len
        if count[a[i]-1]==1
          print "#{a[i]} "
        else
            count[a[i]-1]+=1
        end
    end
	return
end

find_duplicates([1,2,3,4,5,5,6,7,8,8]) # => 5 8 

#Approach 3: Using Array Indexing
#Time-complexity: O(n) Auxiliary-space: O(1)
#Caveat: This algorithm modifies the array-elements
            
def find_duplicates(a)
    len=a.length
    
    for i in 0...len
        if a[a[i].abs]<0
          print "#{a[i].abs} "
        else
            a[a[i].abs]= -a[a[i].abs]
        end
    end
	return
end

find_duplicates([1,2,3,4,5,5,6,7,8,8]) # => 5 8

#Approach 4: Using bitwise XOR,take xor of all elements and all numbers from 1 to n then,
#find rightmost set bit,divide the range in two sets and take xor of each set, first with xor then with range.
#Time-complexity: O(n) Auxiliary-space: O(1)

def find_duplicates(a)
    len=a.length
    n=len-2
    xor= 0
    x,y=0,0         #variables to store duplicates
    
    #xor of all numbers from 1 to n
    for i in 1..n          
        xor^=i
    end
    #xor of all array elements
    for i in 0...len          
        xor^=a[i]
    end
    #Rightmost set bit
    set_bit_pos= xor & ~(xor-1)
    #Divinding array in two sets ,one with set bit at set_bit_pos and other with 0.
    for i in 0...len
        if (a[i] & set_bit_pos == 0)
            x^=a[i]                 # XOR of first-set(with 0 at set_bit_pos) in array
        else
            y^=a[i]                 # XOR of second-set(with 1 at set_bit_pos) in array
        end
    end
    
  for i in 0..n
        if (i & set_bit_pos == 0)
            x^=i                    # XOR of first-set(with 0 at set_bit_pos) in range
        else
            y^=i                    # XOR of second-set(with 1 at set_bit_pos) in range
        end
    end
    print "#{x} #{y}"
	return
end

find_duplicates([1,2,3,4,5,5,6,7,8,8]) # => 5 8