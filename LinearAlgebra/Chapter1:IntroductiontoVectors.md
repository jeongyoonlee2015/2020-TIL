# Chapter1: Introduction to Vectors

## Vectors, Linear Combinations
* Zero vector<br>
  * Component: 0
  * Vector: 0
  
* Linear Combinations
<br>: The sum of cv and dw is a linear combination of v and w.

* Vectors in Three Dimensions
<br>: A vector with three components corresponds to a point in the three dimensional space.

## Lengths and Dot Products
: The dot product or inner product of v = (v1, v2) and w = (w1, w2) is the number v·w.
> v·w = v1w1 + v2w2 = w·v

* Unit vectors
 <br>e.g.
  * i(1,0)<br>
  * j(0,1)<br>
  * (cosθ, sinθ)<br>
  * u = v/||v||
 * The dot product of a vector with itself gives the lenght of v suared.
> length = ||v|| = sqrt(v·v)

## The angle between two vectors
> cosθ = v·w / ||v||||w||<br>
> ab <= (a^2+b^2)/2
* The doc prodcut is v·w=0 when v is "perpendicular" to w.
> ||v||^2 + ||w||^2 = ||v-w||^2
* Schwarz Inequality
> |v·w| <= ||v||x||w||
* Triangle Inequality
> |v+w| <= ||v||+||w||
### The zero vector v = 0 is perpendicular to every vector w because 0·w is always zero.

## Matrices
## Linear Equations
* Ax = b -> b = Ax
## The Inverse Matrix
* Ax = b is solved by x = A^-1b = Sb
## Cyclic Difference
* The linear combinations of um vm w* lead to a cyclic difference matrix C
  * Actually it is impossible to find the solution to Cx = b, because the three equations either have infinitely many solutions or else no solution.
  
## Independence and Dependence
* The vectors go into the columns of an n by n matrix:
  * Independent columns: Ax = 0 has one solution. A is an Invertible matrix.
  * Dependent columns: Ax = 0 has many solutions. A is a singular matrix.
  
  
