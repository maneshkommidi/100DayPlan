def climb_stairs(n)
  return 1 if n <= 1
  first = 1
  second = 2
  (3..n).each do |_|
    third = first + second
    first = second
    second = third
  end
  second
end