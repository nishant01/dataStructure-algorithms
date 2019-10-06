#Selection Sort Implementation (sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning.)
#Time-complexity: O(n^2),In-place
#It never makes more than O(n) swaps ,hence can be useful when memory writes are costly.





def selection_sort(a)
    n=a.length
   for i in 0...n 
    min=i
    for j in (i+1)...n
        if a[j]<a[min]
            temp=a[j]
            a[j]=a[min]
            a[min]=temp
        end
    end
   end
   return a
end