# 1.프로시저를 써서 요약하는 방법 (미완성본)

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
  * 여러 사람이 뜻을 모아 한 번에 설계한 언어가 아님

## 1.1 프로그램 짤 때 바탕이 되는 것
*  프로그래밍 언어의 세가지 표현 방식
   * primitive expression - 언어에서 가장 단순한 것
   * means of combination - 간단한 것을 모아 복잡한 것(compound element)으로 만듦
   * means of abstraction - 복잡한 것에 이름을 붙여 하나로 다를 수 있게 간추림
* Procedure & Data
  * Procedure: 데이터를 처리하는 규칙을 적은 것
  * Data: 프로시저에서 쓰려는 stuff
  * combination: 여러 식을 괄호로 묶어 리스트를 만들고 procedure application을 하도록 엮어 놓은 식

* pretty-printing
```.scm
(+  (* 3
      (+ (* 2 4)
         (+ 3 5)))
    (+ (- 10 7)
        6))

```
* Scheme에서 이름 짓기 예시 (단, 아래의 경우는 combination이 아님)
```.scm
(define x 3)
```

* combination 값 계산하기 (recursive process)
1. combination에서 subexpression의 값을 모두 구한다.
2. combination에서 맨 왼쪽에 있는 식(연산자)의 값은 프로시저가 되고, 나머지 식(피연산자)의 값은 인자가 된다. <br>프로시저를 인자에 적용하여 combination의 값을 구한다.
* built-in operator 같은 기본 식 계산하기
  * 숫자 식의 값은 여러 숫자가 모여서 나타내는 값
  * built-in operator의 값은 그 연산자가 뜻하는 연산을 하도록 미리 묶어 놓은 기계 명령들임
  * 그 밖에 다른 이름 값은 환경에서 그 이름으로 정의해 둔 물체임
  
* special form
계산 규칙으로는 값을 구하지 못하기 때문에 계산 규칙이 따로 밝혀져 있어야 하는 문법

* case analysis
```.scm
(define (abs x)
 (cond ((> x 0) x)
       ((= x 0) 0)
       ((< x 0) (- x))))
```

* variable
  * bound variable
  * free variable
  
* block structre(p.39-40)
  * 프로시저 정의를 겹쳐 쓰는 모양
  * name-packaging 문제를 푸는 좋은 방법임
  * 프로시저 정의를 짧게 줄여 쓸 수 있다.
