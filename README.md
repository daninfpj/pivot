# Find pivot of a list of integer

We define the pivot index as the index where the sum of the numbers on the left is equal to the sum of the numbers on the right.

## Tests

Run the test suite.

```
rspec
```

## Benchmark

Compares this implementation with a “naive” one for a list of 100,000 integers.

```
       user     system      total        real
pivot  0.030000   0.000000   0.030000 (  0.028390)
naive 22.870000   0.020000  22.890000 ( 22.936675)
```
