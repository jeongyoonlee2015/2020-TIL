# Sort
(avg, algor tech)
* BulbbleSort(O(n^2), 비교와 교환) <br>
* Counting Sort(O(n+k), 비교환 방식) <br>
* Selection Sort (O(n^2), 비교와 교환) <br>
* Quick Sort (O(n log n), 분할 정복) <br>
* Insertion Sort (O(n^2), 비교와 교환) <br>
* Merge Sort (O(n log n), 분할 정복) <br>

## Bubble Sort
: 인접한 두개의 원소 비교하며 자리를 계속 교환하는 방식 O(n^2) <br>
### pseudocode
```
BubbleSort(a[],n)
  for i from n-1 to 0 decreasing by 1{
    for j from 0 to i{
    if (a[j] > a [j + 1]) then{
      TEMP <- a[j];
      a[j] <- a[j + 1];
      a[j + 1] <- TEMP;
      }
    }
  }
end BubbleSort
```

## Counting Sort
: 정수나 정수로 표현할 수 있는 자료에 대해서만 적용가능 (카운트들의 배열을 사용하기 때문) O(n+k
) (n=항목개수, k=정수의 최대값)<br>
DATA[] COUNTS[] TEMP[]

### pseudocode
```
Counting_Sort(A, B, k)
//A[1 .. n] -> 입력array
//B[1 .. n] -> 정렬된 array 
//C[1 .. k] -> COUNTS array

for i = 1 to k do
  C[i] = 0

for j = 1 to n do
  C[A[j]] = C[A[j]] + 1

for i = 2 to k do
  C[i] = C[i] + C[i-1]

for j = n to 1 do
  B[C[A[j]]] = A[j]
  C[A[j]] = C[A[j]] - 1
  ```


