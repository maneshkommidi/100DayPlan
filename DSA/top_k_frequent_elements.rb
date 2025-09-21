#Top K Frequent Elements (#347)
def top_k_frequent(nums, k)
  nums_hash = sorted_nums = {}
  nums.each do |num|
    nums_hash[num] = 1 unless nums_hash.keys.include?(num)
    nums_hash[num] += 1
  end
  sorted_nums = nums_hash.sort_by {|k, v| -v }.to_h
  sorted_nums.keys[0..k-1]
end


#optimized
def top_k_frequent(nums, k)
  nums_freq = nums.tally.sort_by { |k, v| -v }
  nums_freq.take(k).map(&:first)
end