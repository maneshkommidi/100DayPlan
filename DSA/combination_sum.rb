def combination_sum(candidates, target)
  result = []
  rec_helper(candidates, target, [], result, 0)
  result
end

def rec_helper(candidates, target, path, result, idx)
  if target == 0
    result << path.dup
    return
  end
  return if target < 0
  (idx...candidates.size).each do |i|
    path << candidates[i]
    rec_helper(candidates, target - candidates[i], path, result, i)
    path.pop
  end
end