=begin
Equilibrium index of an array is an index such that the sum of elements at lower indexes is equal to the sum of elements at higher indexes.
For example, in an arrya A:
A[]=[-7,1,5,2,-4,3,0]
3 is an equilibrium index, because:
A[0] + A[1] + A[2] = A[4] + A[5] + A[6]
Time-complexity: O(n)
Auxiliary-space: O(1)
=end

def find_equilibrium(a)
  len = a.length
  leftsum=0
  rightsum=0
  for x in a
    rightsum+=x
  end
  for i in 0...len
    rightsum-=a[i]
    if (leftsum == rightsum)
      return i
    end
    leftsum+=a[i]
  end
  
  return -1
      
end