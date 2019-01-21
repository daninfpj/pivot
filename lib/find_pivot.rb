def find_pivot(array)
  raise ArgumentError, 'Argument is not an array' unless array.is_a?(Array)

  return -1 if array.empty? || array.length < 3

  sum_to_the_left = 0
  sum = array.sum

  array.each_with_index do |x, i|
    return i if sum_to_the_left == sum - x - sum_to_the_left

    sum_to_the_left += x
  end

  -1
end
