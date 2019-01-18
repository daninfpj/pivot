# Find the pivot of a list of integers
class PivotFinder
  def initialize(array)
    @array = array
  end

  def find
    raise ArgumentError, 'Argument is not an array' unless @array.is_a?(Array)

    return -1 if @array.empty?

    (1..(cumulative.length - 2)).each do |index|
      return index if sum_to_the_left_of(index) == sum_to_the_right_of(index)
    end

    -1
  end

  private

  def cumulative
    @cumulative ||= @array.reduce([]) do |memo, item|
      memo << (memo.last || 0) + item
    end
  end

  def sum_to_the_left_of(index)
    @cumulative[index - 1]
  end

  def sum_to_the_right_of(index)
    @cumulative.last - @cumulative[index]
  end
end

def find_pivot(array)
  PivotFinder.new(array).find
end
