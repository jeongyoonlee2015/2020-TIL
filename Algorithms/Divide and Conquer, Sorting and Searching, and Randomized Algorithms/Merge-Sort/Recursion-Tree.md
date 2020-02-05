# Recursion Tree (Recursive Tree)

## Roughly how many levels does this recursion tree have(as a function of n, the length of the input array)?<br>; log2(n)
![IMG_0078](https://user-images.githubusercontent.com/43804152/73838651-80e3f880-4857-11ea-87ca-98ac12ed9336.jpg)

> [In lecture] <br>
The input size is being decreased by a factor two with each level of the recursion. 
If you have an input size of n at the outer level, then each of the first sets of recursive calls operates on an array of size n over 2. 
At level two, each array has size n over 4 and so on, whereas if the recursion bottom out, well, down at the base cases, where there's no more recursion, which is where the input array has size one or less.
<br>So in other words, the number of levels of recursion is exactly the number of times you need to divide n by 2 until you get down to a number that's most one. 
