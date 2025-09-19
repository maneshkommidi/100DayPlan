def max_depth(root)
  return 0 if root.nil?
  result = []
  queue = [root]
  while !queue.empty?
    level_size = queue.size
    level = []
    level_size.times do
      node = queue.shift
      level << node.val
      queue << node.left if node.left
      queue << node.right if node.right
    end
    result << level
  end
  result.size
end