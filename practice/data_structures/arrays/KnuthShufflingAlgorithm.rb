#Knuth Shuffling Algorithm(Choose random number between i and n-i and swap)
#Time-complexity: O(n)


def shuffle(arr)
  len = arr.length
  for i in 0...len
    r = Random.rand(len-i)+i
    swap(arr,i,r)
  end
  return arr
end


def swap(arr,i,j)
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
end


shuffle([1,2,3,4,5,6])
