=begin
see problem here: https://www.hackerrank.com/challenges/cut-the-sticks
=end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
min= arr.min
count = 1000
while(count>1)
    count=0
    min2= 1000
    for i in 0...n
        if arr[i]>0
            count+=1
            arr[i]-=min
            min2 = arr[i] if (arr[i]<min2 && arr[i]>0)
        end
    end
    min=min2
    puts count if count > 0
end