def daily_temperatures(temperatures)
  result = Array.new(temperatures.length, 0)
  stack = []
  temperatures.each_with_index do |temp, idx|
    while !stack.empty? && temp > temperatures[stack[-1]]
      prev_day = stack.pop
      result[prev_day] = idx - prev_day
    end
    stack << idx
  end
  result
end
