#74. Search a 2D Matrix
def search_matrix(matrix, target)
   return false if matrix.empty? || matrix[0].empty?
   m, n = matrix.size, matrix[0].size
   left, right = 0, m*n -1
   
   while left <= right
    mid = (left + right) / 2
    row = mid / n
    col = mid % n
    val = matrix[row][col]

    if val == target
      return true
    elsif val < target
      left  = mid + 1
    elsif val > target
      right = mid - 1
    end
   end
   false
end