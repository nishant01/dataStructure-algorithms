#Given an array of integers,print the next greatest element for each of the element
#Time-complexity:O(n),Auxiliary-space:O(n){stack}


def find_nge(a)
    stk=[]
    top=-1
    for i in 0...a.length
        while(top>-1 && stk[top]<a[i])
            puts "#{stk[top]} -> #{a[i]}"
            stk.pop()
            top-=1
        end
       
        stk.push(a[i])
        top+=1
    end
    while top>-1
        puts "#{stk[top]} -> #{-1}"
        top-=1
    end
end

find_nge([23,12,56,22,6,34])

