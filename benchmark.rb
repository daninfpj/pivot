require 'benchmark'
require_relative 'lib/find_pivot'

def find_pivot_naive(array)
  array.each_with_index do |_item, index|
    next if [0, array.length - 1].include?(index)

    return index if array[0..index - 1].sum == array[(index + 1)..-1].sum
  end

  -1
end

number = 10_000_0
left = Array.new(number) { rand(1000) }
right = left.dup.shuffle

Benchmark.bm do |x|
  x.report('pivot') { find_pivot(left + [0] + right) }
  x.report('another') { find_pivot_naive(left + [0] + right) }
end
