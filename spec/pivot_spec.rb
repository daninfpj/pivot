require 'spec_helper'
require_relative '../lib/find_pivot'

describe 'pivot' do
  it 'returns the pivot' do
    expect(find_pivot([1, 4, 6, 3, 2])).to eq(2)

    expect(find_pivot([1, 3, 1, 6, 3, 2])).to eq(3)

    expect(find_pivot([1, 1, 1, 1, 5, 4])).to eq(4)
  end

  it 'returns the pivot for a big list' do
    number = 100_000
    left = Array.new(number) { rand(1000) }
    right = left.dup.shuffle

    expect(find_pivot(left + [0] + right)).to eq(number)
  end

  it 'handles edge cases' do
    expect(find_pivot([1, 2, 3])).to eq(-1)

    expect(find_pivot([])).to eq(-1)

    expect(find_pivot([1])).to eq(-1)

    expect { find_pivot(1) }.to raise_error(ArgumentError)
  end
end
