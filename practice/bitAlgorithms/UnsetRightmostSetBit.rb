#Given a binary number unset the rightmost set bit.
#Algorithm: The biwise "&" of any number n with n-1 unsets the rightmost set bit
#e.g. 5=101 ,5-1=4=100 ,5&4=(101)&(100)=100(result with rightmost bit unset)

def unset_rightmost(n)
    return n&(n-1)
end
unset_rightmost(3) # => 2 