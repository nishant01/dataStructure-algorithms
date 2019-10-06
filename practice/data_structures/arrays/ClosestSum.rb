#Given array of integers(both +ve and -ve) find the two elements such that their sum is closest to given number x.
#Time-complexity: O(nlogn) // O(nlogn){for sorting}+O(n), Auxiliary-space:O(1)

#Algorithm: Sort the array and using two indexes left and right update the closest sum

def closest_sum(a,x)
  a.sort!               #You can choose any sorting algorithm of your choice with
  left=min_l=0
  right=min_r=a.length-1
  min_sum = 1.0/0.0     #Initializing min_sum with infinity
  while(left<right)
    sum=(a[left]+a[right])-x
    if sum.abs<min_sum
        min_sum=sum.abs
        min_l=left
        min_r=right
    end
    if sum<0
        left+=1
    else
        right-=1
    end
  end
    print " The two elements whose sum is minimum are #{a[min_l]} and #{a[min_r]}"   
end

closest_sum([1,3,2,4,5],9) # => The two elements whose sum is minimum are 4 and 5