# Count inversions

### Why to study it?

This algorithm is used during the implementation of a typical recommendation engine based on collaborative filtering. 
The purpose of this experiment is to demonstrate how applying a divide a conquer strategy to the inversions counting we can achieve huge improvements in their performance.

#### Benchmark

| Array size | D&C (ms) | Brute force (ms) |
|:-------------:|:-------------:|:-----:|
| 1K | 5 | 51 |
| 2K | 10 | 196 |
| 4K | 24 | 809 |
| 8K | 45 | 3229 |
| 16K | 91 | 12954 |

![Graph](https://plot.ly/~wuiscmc/3.png)

#### Conclusions

Where we can calculate the following running times: 

| Strategy | Running time |
|:-------------:|:-------------:|
|Quadratic| **4.6567482 * 10^-5 x N^2.0042383**|
|D&C| **4.8741764*10^-3 x N^1.0159415**|

And demonstrate that: 

| Array size | D&C  (secs) | Brute force (hours) |
|:-------------:|:-------------:|:-----:|
| 1024K | 6.223 | 15 |
| 2048K | 12.584 | 60 |
| 4096K | 25.449  | 241 (10 days) |
| 8192K | 51.463 | 968 (40 days) |
| 16384K | 104.071 | 3885 (161 days) |

Algorithm studied during "Algorithms: Design and Analysis, Part 1", Univ. Standford (Coursera)


