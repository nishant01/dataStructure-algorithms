#Babylonian method for finding square root( based on Newton–Raphson method)

def sqrt_babylonian(num)
    x=num
    y=1.0
    e=0.000001              #Desired approximation or accuracy level
    while x-y>e
        x=(x+y)/2
        y=num/x
    end
    return x
end

sqrt_babylonian(26) # => 5.099019513684702 