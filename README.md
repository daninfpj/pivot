# Find pivot of a list of integers

We define the pivot index as the index where the sum of the numbers on the left is equal to the sum of the numbers on the right.

## Code

The relevant code is located at https://github.com/daninfpj/pivot/blob/master/lib/find_pivot.rb

## Tests

Run the test suite.

```
rspec
```

## Benchmark

```
ruby benchmark.rb
```

Compares this implementation with a “naive” one for a list of 100,000 integers.

```
       user     system      total        real
pivot  0.030000   0.000000   0.030000 (  0.028390)
naive 22.870000   0.020000  22.890000 ( 22.936675)
```
