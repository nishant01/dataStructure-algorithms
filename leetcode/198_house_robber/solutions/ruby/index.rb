# Desktop run for an example
# nums=[1,2,3,4]
#
# i=0: {}
#   i:2, h:{}
#     => [3, 4].max => h[2]=4 => h: { 2=>4 }
#   i:1, h:{ 2=>4 }
#     => [6, 4].max => h[1]=6 =>{ 2=>4, 1=>6 }
# => [5,6].max => h[0]=6 => {2=>4, 1=>6, 0=>6}
#
# h[0] => 6

def rob(nums)
  return 0 if nums.empty?
  return get_max(nums, 0)
end

def get_max(nums, i, h = {})
  # If max for the index already exist return it
  return h[i] if h[i]

  # Return the number itsel if is the last one
  return nums[i] if (i == nums.size - 1)

  # Return 0 when out of range
  return 0 if (i >= nums.size)

  # Get the max number from current, and next two items
  puts "#{i}: #{h.inspect}"
  opt = [nums[i] + get_max(nums, i+2, h), get_max(nums, i+1, h)]
  h[i] = opt.max
  puts "     (#{i})=> #{opt.inspect} => h[#{i}] = #{h[i]} => #{h.inspect}"

  # Return the value
  return h[i]
end

