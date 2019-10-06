# Block swap algorithm for array rotation(Recursive)

#Initialize A=[0..d-1], B=[d..size-1]
#until size of A is equal to size of B

#  a)  If A is shorter
#           1. Divide B into Bl and Br such that Br is of same length as A.
#           2. Swap A and Br to change ABlBr into BrBlA.
#           3. Now A is at its final place, so recur on pieces of B.  

#   b)  If A is longer
#          1. Divide A into Al and Ar such that Al is of same length as B.
#          2. Swap Al and B to change AlArB into BArAl.
#          3. Now B is at its final place, so recur on pieces of A.

#Finally when A and B are of equal size, block swap them.



# Recursive Approach

 #Driver function
def rotate_array(a, d) #Input array "a" and rotation by "d" elemets
  	finish =a.length-1
    block_swap(a,0,finish,d)
end

def block_swap(a,start,finish,d)
    
    n=finish-start+1
    
  	if n>0
      
      if d>n
        d%=n
      end
      
      if d==0
          return a
      end
      
      if d==n-d
          swap(a,start,start+d,d)
          return a
      elsif d<n-d
          swap(a,start,finish-d+1,d)
        block_swap(a,start,finish-d,d)
      else
          swap(a,start,d,n-d)
          block_swap(a,n-d,n-1,(2*d)-n)
      end
      
    end
    
    return a
    
end


    #Utility function for swapping
def swap(a,start1,start2,d)
        for i in 0...d
            temp = a[start1+i]
            a[start1+i] = a[start2+i]
            a[start2+i] = temp
        end
end
rotate_array([1,2,3,4,5,6,7,8,9,10],6)