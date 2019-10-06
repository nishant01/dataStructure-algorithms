
def solution(num)
  max = 0
  current = 0

  num.to_s(2).each_char.each do |char|
    if char.eql?('1')
      max = current if current > max
      current = 0
      next
    end
    current += 1
  end

  max
end
