## <Normdist 함수>

=NORMDIST<br>
: 엑셀의 함수를 이용하면 분포표를 찾지 않고도 정확한 확률 값을 찾을 수 있다.<br> 
NORMDIST 함수는 정규분포와 관련된 함수 중 하나로 정규분포에서의 누적분포함수 값을 구해준다.<br>
지정된 평균과 표준 편차를 갖는 정규 분포 값을 반환하며 가설 검정 등과 같은 통계의 광범위한 영역에서 사용된다.<br>

= NORMDIST(x, mean, standard_dev, cumulative)<br>

* x: 분포를 구하려는 값; 변수 값
* mean: 분포의 산술 평균; 평균
* standard_dev: 분포의 표준편차; 표준편차
* cumulative: 함수의 형식을 결정하는 논리 값; 누적구분
     - If Cumulative == TRUE, Return 누적분포함수 
     - If Cumulative == FALSE, Return 확률질량함수
-------------
* mean, standard_dev가 숫자가 아니면 NORMDIST에서는 #VALUE! 에러 반환
* standard_dev <= 0 이면 #NUM! 에러 반환
* mean = 0, standard_dev = 1이고 cumulative = TRUE이면 NORMDIST 함수가 반환
* mean = 0, standard_dev = 1이고 cumulative = FALSE이면 정규밀도함수가 반환
* cumulative = TRUE일 때 주어진 수식을 -∞에서 x까지 적분한 값이 된다.

