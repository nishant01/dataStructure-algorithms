#Given a number "n",count the number of set bits in it.
#Algorithm: Brian Kernighan's method(set count=0 ,while n>0 set n:=n&(n-1) and increment count, return count)
#Time-complexity:O(logn)

def count_set_bits(num)
  count=0
  while num>0
    num&=(num-1)
    count+=1
  end
  return count
end