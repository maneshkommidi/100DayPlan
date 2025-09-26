#240. Search a 2D Matrix II

def search_matrix(matrix, target)
  return false if matrix.empty? || matrix[0].empty?
  row = 0
  col = matrix[0].size - 1

  while row < matrix.size && col >= 0
    val = matrix[row][col]
    if val == target
      return true
    elsif val > target
      col -= 1
    else
      row += 1
    end
  end

  false
end
