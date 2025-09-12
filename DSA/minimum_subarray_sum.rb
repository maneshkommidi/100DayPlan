def min_sub_array_len(target, nums)
  min_length = Float::INFINITY
  start_idx = 0
  current_sum = 0
  nums.each_with_index do |num, end_idx|
    current_sum += num
    while current_sum >= target
      min_length = [min_length, end_idx - start_idx + 1].min
      current_sum -= nums[start_idx]
      start_idx += 1
    end
  end

  min_length = Float::INFINITY ? 0 : min_length
end
