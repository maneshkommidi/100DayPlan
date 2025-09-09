def fibonacci(n)
  a, b = 0,1
  n.times do
    a, b = b, a+b
  end
  a
end

10.times { |i| puts fibonacci(i) }