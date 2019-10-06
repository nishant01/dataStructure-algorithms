def solution(a)
  grouped_array = a.inject({}) do |hsh, ele|
    hsh[ele.to_s] ||= 0
    hsh[ele.to_s] += 1
    hsh
  end

  grouped_array.find{ |key, count| count.odd? }.first.to_i
end
