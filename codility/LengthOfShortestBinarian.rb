def solution(a)
  sum=binarian(a)
  set_bits=count_set_bits(sum)
  return set_bits
end

def binarian(arr)
  len=arr.length
  result=0
  for i in 0...len
    result+=(2**arr[i])
  end
  return result
end

def count_set_bits(num)
  count=0
  while num>0
    num&=(num-1)
    count+=1
  end
  return count
end