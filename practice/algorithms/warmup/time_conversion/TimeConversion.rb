=begin
see problem here- https://www.hackerrank.com/challenges/time-conversion
=end

#!/bin/ruby

time = gets.strip
if time[8,2]=="AM"
    if time[0,2]=="12"
        time[0,2]="00"
    end
    time[8,2]=""
else
    unless time[0,2]=="12" 
        t=time[0,2].to_i
        time[0,2]=(t+12).to_s
    end       
   time[8,2]="" 
end
print time