# Image Filter

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
