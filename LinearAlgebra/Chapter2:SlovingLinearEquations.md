# Chapter2: Sloving Linear Equations

* The pivots are on the diagonal of the triangle after elimination

## GJE (가우스 조던 소거법)
1. 기본행연산(Elementary Row Operations)<br>
  (1) 0이 아닌 상수를 행에 곱할 수 있다.<br>
  (2) 두 행을 교환할 수 있다.<br>
  (3) 한 행을 상수배하여 다른 행에 더할 수 있다.<br>

2. 역행렬 구하는 법<br>
  (1) 기존 행렬을 가져오고, 단위행렬을 하나 만든다.<br>
  (2) 기준 행을 이용해서 나머지 행의 기준 요소를 0으로 만들어 준다.<br>
  (3) 마지막 행 기준요소가 0이라면 행렬식은 0이되므로 0을 반환한다.<br>
  (4) 상삼각행렬을 이용해서 행렬식을 구한다.<br>
  (5) 후방소거를 한다.<br>
  (6) 같은 과정을 반복해서 기존 행렬이 단위 행렬이 되었다면 단위행렬에서 반환된 행렬을 뱐환한다.<br>
