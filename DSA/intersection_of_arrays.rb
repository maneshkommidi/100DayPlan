def intersect(nums1, nums2)
  result = []
  counts = Hash.new(0)
  nums1.each do |num|
    counts[num] += 1
  end
  nums2.each do |num|
    if counts[num] > 0
      result << num
      counts[num] -= 1
    end
  end
  result
end
