#Bubble Sort Implementation (works by repeatedly swapping the adjacent elements if they are in wrong order.)
#Time-complexity : O(n^2), In-place,Can be made stable
#Best case: Array already sorted (O(n))




def bubble_sort(a)
   n=a.length
   for i in 0...n-1
    swapped = false
    for j in 0...n-i-1
        if a[j]>a[j+1]
            temp=a[j]
            a[j]=a[j+1]
            a[j+1]=temp
            swapped = true
        end
    end   
    if swapped == false
        break
    end
   end
   return a
end