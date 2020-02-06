# Merge Sort (; Recursive Algorithm)

### It is its purpose in life is to sort the give input array. <br>
The standard sorting algorithm in the number of programming libraries.

* Recursive Algorithm
; a program which calls itself and it calls itself on smaller subprograms of the same form.

-----
#### Good introduction to Divide & Conquer <br>
Merge sort is the most transparent application of the Divide & Conquer paradigm <br>
that will exhibit very clear what the paradigm is, which analysis and challenge it presents,<br>
and what kind of benefits you might derive.<br>

-----
[Pseudocode]
```
    C = output [length = n]
    A = 1st sorted array [n/2]
    B = 2nd sorted array [n/2]
    i = 1
    j = 1
```

```
for k = 1 to n

  if A(i) < B (j)
    C(k) = A(i)
    i++
    
  else [B(j) < A(i)]
    C(k) = B(j)
    j++
    
end
  (ignores end cases)
```
```
It's going to spawn or call itself on smaller arrays. 
And this is gonna be a canonical Divide-and-conquer application,
where we simply take the input array, we split it in half,
we solve the left half recursively,
we solve the right half recursively, and then we combine the results.
```

### Guiding Principle (2020.02.06.)
