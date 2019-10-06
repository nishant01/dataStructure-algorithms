#Given an array of length n contains elements from 0 to n-1, 
#Print all the duplicate elements in O(n) time and constant space.

def print_duplicates(a)
    n=a.length
    print "Duplicate elements are: "
    for i in 0...n
        if a[a[i].abs]<0
          print "#{a[i].abs} "
        else
            a[a[i].abs]= -a[a[i].abs]
        end
    end
  return
end
print_duplicates([1, 4, 6, 4, 3, 6, 1])	# => Duplicate elements are: 4 6 1
    
    