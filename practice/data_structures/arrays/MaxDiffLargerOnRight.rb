#Given an array find maximum difference between two elements such that the karger appears after the smaller.

#Approach 1: keep track of min so far and find the diff.
#Time-complexity:O(n),Auxiliary-space:O(1)

def max_diff(a)
    len=a.length
    min_so_far=a[0]
    diff=a[1]-a[0]
    for i in 1...len
        diff= a[i]-min_so_far if (a[i]-min_so_far > diff)
        min_so_far=a[i] if (a[i] < min_so_far)
    end
    return diff
end
max_diff([100, 10, 5, 91, 1, 8, 16, 21]) # => 86

#Approach 2: find diff between adjacent elements,now find the max sum subarray of diff.
#Time-complexity:O(n),Auxiliary-space:O(1)

def max_diff(a)
    len=a.length
    diff=a[1]-a[0]
    curr_sum=diff
    max_sum=curr_sum
    for i in 1...len-1
        #calculate current diff
        diff=a[i+1]-a[i]
        
        #calculate current sum
        if curr_sum>0
            curr_sum+=diff
        else
            curr_sum=diff
        end
        
        #update max_sum
        max_sum=curr_sum if curr_sum>max_sum
    end
    return max_sum
end

min_diff([100, 10, 5, 91, 1, 8, 16, 21]) # => 86           
            