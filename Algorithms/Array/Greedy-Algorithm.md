# [Greedy Algorithm](https://www.acmicpc.net/problem/tag/%EA%B7%B8%EB%A6%AC%EB%94%94%20%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98)
최적해를 구하는 데 사용되는 근시안적 방법<br>
최적을 수집하여 최종적인 해답을 만들었다고해서 최종도 최적이 되는 건 아님
e.g. 거스름돈 줄이기

Baby-gin: Greedy Algorithm
-6개의 숫자는 6자리 정수 값으로 입력
-Counts Array의 각 원소 체크하여 run/triplete/Baby-gin 여부 판단
* Greedy Algorithm 적용
* Counts Array 에서 run과 triplete중에 가능한 것 조사(사용한 데이터 삭제)
* 남은데이터를 다시 run과 triplete중에 가능한지 조사

### pseudocode
```
i <- 0, ins <- 0, tri <- 0, run <- 0; 
//인덱스 , 6자리 수에서 수를 추출할 때 사용하는 임시 변수, triplete의 출현 개수,run 출현개수

input_6_numbers // 입력받은 6자리 수
c[12] <- {0, } // 6자리 수로부터 각 자리 수를 추출하여 개수를 누적할 Array

while(i < 6){
	c[inp % 10] <- c[inp % 10] + 1;
	inp <- inp/10;
	i <- i + 1;
}

i <- 0;
while (i < 10){
	if(c[i]> = 3){// triplete조사 후 데이터 삭제
		c[i] <- c[i] - 3;
		tri <- tri + 1;
		continue;
	}
```

1. A candidate set, from which a solution is created
2. A selection function, which chooses the best candidate to be added to the solution
3. A feasibility function, that is used to determine if a candidate can be used to contribute to a solution
4. An objective function, which assigns a value to a solution, or a partial solution, and
5. A solution function, which will indicate when we have discovered a complete solution
