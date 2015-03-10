class Array
  def count_inversions_quadratic
    inversions = 0
    _length = self.length
    each_with_index do |item, i|
      j = i + 1
      while j < _length
        inversions += 1 if self[i] > self[j]
        j += 1
      end
    end
    inversions
  end
end

