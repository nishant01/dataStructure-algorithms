# 3 way quick sort (Quick sort optimized for duplicates)
#In 3 Way QuickSort, an array arr[l..r] is divided in 3 parts:
    #a) arr[l..i] elements less than pivot.
    #b) arr[i+1..j-1] elements equal to pivot.
    #c) arr[j..r] elements greater than pivot

def quick_sort(a,lo,hi)
    if lo<hi
        temp=partition(a,lo,hi)
        l=temp[0]
        r=temp[1]
        quick_sort(a,lo,l-1)
        quick_sort(a,r+1,hi)
    end
end

def partition(a,lo,hi)
    pivot=a[lo]
    i=lo+1
    lt=lo
    gt=hi
    
    while(i<=gt)
        if a[i]< pivot
            temp=a[lt]
            a[lt]=a[i]
            a[i]=temp
            lt+=1
            i+=1
        elsif a[i]>pivot
            temp=a[i]
            a[i]=a[gt]
            a[gt]=temp
            gt-=1
        else
            i+=1
        end
    end
    return lt,gt
end


a = [4, 4, 2, 4, 2, 4, 1, 2, 4, 1, 2, 2, 2, 2, 4, 1, 4, 4, 4]

quick_sort(a,0,18)
print a