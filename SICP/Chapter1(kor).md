# 1.프로시저를 써서 요약하는 방법

## Computational Process
* 계산 프로세스란 컴퓨터 속에 잇는 것이며 data라고 하는 것을 조작하면서 어떤 일을 한다.
* Process: 사람이 만든 규칙에 따라 움직이고, 이 규칙을 가리켜 Program이라고 한다.
* Program: symbolic expression으로 이루어지는데, 이런 식을 적을 때 쓰는 말을 Programming Language라 한다.

#### Lisp
recursion equation을 computation모형으로 사용할 수 있는지 살펴보기 위해 1950년대에 John MacCarthy가 만든 언어
<br>
[Recursive Functions of Symbolic Expressions and Their Computation by Machine, McCarthy 1960](http://jmc.stanford.edu/articles/recursive.html)

* Lisp interpreter: Lisp으로 표현한 프로세스를 처리하는 기계를 말함
* Lisp; LISt Processing

* 처음에는 대수식(algebraic expression)의 미분식이나 적분식을 구하는 것처럼, 기호로 이루어진 데이터(symbolic data)를 다루기에 알맞은 언어로 설계됨
* 그 목적에 맞추어 atom이나 list라는 새로운 타입의 데이터가 들어감
  * 이런 점에서 Lsip은 그때까지 나온 언어들과 크게 달랐음
  * 여러 사람이 뜻을 모아 한 번에 설계한 언어가 아님 -> Lisp 공동체에는 공식적으로 언어를 정의하여 널리 퍼뜨리는 것을 꺼리는 전통이 있음
        
        
