def solution(a, k)
  return [] if a.empty?
  return a if k.zero?

  k.times do
    a.unshift(a.pop)
  end
  a
end
