#Bubble Sort Implementation (works by repeatedly swapping the adjacent elements if they are in wrong order.)
#Time-complexity : O(n^2), In-place,Can be made stable
# Takes O(n^2) even when array already sorted (hence can be optimized by stopping the algorithm if inner loop didn’t cause any swap.)



def bubble_sort(a)
   n=a.length
   for i in 0...n-1
    for j in 0...n-i-1
        if a[j]>a[j+1]
            temp=a[j]
            a[j]=a[j+1]
            a[j+1]=temp
        end
    end
   end
   return a
end