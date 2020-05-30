# Image Filter
------------
## Filter
입력 값에서 원하지 않는 값은 걸러내고 원하는 결과만을 얻는다는 의미로 쓰임
1. 영상의 품격을 높임
2. ** Edge를 검출하고 엣지의 방향을 알아냄 **

## 공간영역필터; spatial domain filter
기존 픽셀 값 하나가 아닌 그 픽셀과 주변 픽셀들의 값을 활용하는방법

## Convolution
공간 영역 필터의 핵심 <br>
### n x n Kernal
window; filter; mask

커널의 각 요소와 대응하는 입력 픽셀 값을 곱해서 모두 합한 것을 결과 픽셀 값으로 결정하고, 이것을 마지막 픽셀까지 반복하는 것
```.py
cv2.filter2D()
# e.g.
dst = cv2.filter2D(src, ddepth, kernel{, dst, anchor, delta, borderType})
```
## Blurring; smoothing
* 가장 쉬운 방법: 주변 픽셀 값들의 평균을 적용하는 것
* p.217 [예제 6-1]
```.py
import cv2
import numpy as np

img = cv2.imread('../img.jpg')

#필터 커널 생성하기 case1
kernel = np.array( )

#필터 커널 생성하기 case2
kernel = np.ones

#필터 적용
blured = cv2.filter2D(img, -1, kernel)

# 결과 출력
cv2.imshow
cv2,imshow
cv2.waitKey
cv2.destroyAllWindows
```

```.py
dst = cv2.blur(src, ksize[, dst, anchor, borderType])
# 커널 사이즈는 홀수로 하면 좋다!
```
## Gaussian blur
평균이 아닌 가우시안 분포를 갖는 커널로 블러링을 하는 것
중앙 값이 가장 크고 멀어질수로 그 값이 작아지는 커널을 사용하는 것을 말함
```.py
cv2.GaussianBlur(src, ksize, sigmaX[, sigmaY, borderType])
# p.221
```
## 미디언 블러링

-----------
## Edge 검출
배경과 전경을 분리하는 데 가장 기본적인 작업
## 샤프닝:
## 필터
* 로버츠 교차 필터: 사선 경계 검출 효과를 높였으나 노이즈에 민감하고 엣지 강도가 약함
* 프리윗 필터: 엣지 강도가 강하고 수직과 수평 엣지를 동등하게 찾는 장점이 있지만 대각선 검출이 약함 
* 소벨 필터: 중심 픽셀의 차분 비중을 두 배로 주어 수평, 수직 대각선 경계 검출에 모두 강한 마스크
```.py
dst = cb2.Sobel{src, ddpth, dx, dy[, dst, ksize, scale, dleta, borderType]}
```
* 라플라시안 필터 (oh's p.125)

## 캐니 엣지
1. 노이즈 제거
2. 소벨 마스크로 엣지그레디언트 방향 계산
3. 비최대치 억제
4. 이력 스레스 홀딩
```.py
edges = cv2.Canny(img, threshold1, threshold2[, edges, aperturesSize, L2gardient])
```









