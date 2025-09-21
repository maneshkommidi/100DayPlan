#Invert Binary Tree (#226)
def invert_tree(root)
  return nil if root.nil?
  left = invert_tree(root.left)
  right = invert_tree(root.right)
  root.left = right
  root.right = left
  root
end
