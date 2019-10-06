# Given an array and a value, find if there is a pythagorean triplet in array.
#Pythagorean triplets:3 no.'s for which sum of squares of any two==square of third number.
#Time-complexity: O(n^2),Auxiliary-space:O(1)
#Algorithm:Square each element,Sort,fix element then search in the array using two pointers left and right




def pythagorean_triplet(a)
    len=a.length
    a.map! {|x| x**2 }  #Replacing every array element with its square(if you don't want to modify the array then extra space is required to store the squares)
    a.sort!
    for i in (len-1).downto(2)
        x=a[i]
        left=0
        right=i-1
        while left<right
            if (a[left]+a[right])==x
              return "Triplet found #{Math.sqrt(a[left])},#{Math.sqrt(a[right])},#{Math.sqrt(a[i])}"
            elsif (a[left]+a[right])<x
                left+=1
            else
                right-=1
            end
        end
    end
    return -1
                    
end
pythagorean_triplet([1,2,3,3,34,4,4]) # => -1 
pythagorean_triplet([1,2,3,3,34,13,12,5]) # => Triplet found 5,12,13
