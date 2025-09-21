#101. Symmetric Tree
def is_symmetric(root)
  return true if root.nil?
  is_mirror(root.left, root.right)
end

def is_mirror(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?
  return false if left.val != right.val
  is_mirror(left.left, right.right) && is_mirror(left.right, right.left)
end
