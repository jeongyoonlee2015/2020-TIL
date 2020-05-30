import cv2
import numpy as np

img = cv2.imread('thank.jpg', 0) #0이 들어가야 함
# 캐니 엣지
edges = cv2.Canny(img, 60, 120)

# 소벨 함수 사용
sobelx = cv2.Sobel(img, -1, 1, 0, ksize = 3)
sobely = cv2.Sobel(img, -1, 0, 1, ksize = 3)

# 결과 합치기
merged = np.hstack((img, edges,  sobelx+sobely))
cv2.imshow('Results', merged)

cv2.waitKey(0)
cv2.destroyAllWindows()
