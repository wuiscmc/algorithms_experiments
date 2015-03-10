class Array
  # Counts the inversions within an array
  # ex: [1,4,2] contains 1 inversion (4,2)
  # O(n log(n)) although it's faster in the reality
  def count_inversions
    _, inversions = sort_and_count_splits(self) 
    inversions
  end

  private

  def sort_and_count_splits(array)
    __size = array.size
    return [array, 0] if __size < 2
    fh, x  = sort_and_count_splits(array[0, __size/2])
    sh, y = sort_and_count_splits(array[__size/2, __size])
    ma, z = merge_and_count_splits(fh, sh)
    [ma, x + y + z]
  end
  
  def merge_and_count_splits(first_half, second_half)
    inversions, i = 0, 0
    fh_length = first_half.length
    merged = []
    while !first_half.first.nil? && !second_half.first.nil?
      if first_half.first <= second_half.first
        merged << first_half.shift
        i += 1
      else
        merged << second_half.shift
        inversions += fh_length - i 
      end
    end
    [merged + first_half + second_half, inversions]
  end
end

