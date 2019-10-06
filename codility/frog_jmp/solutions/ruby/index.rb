def solution(x, y, d)
  return 0 if x == y

  jumps = (y - x)/d.to_f
  jumps.ceil
end
