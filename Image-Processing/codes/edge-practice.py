# Practice Canny and Sobel Edge

import cv2
import numpy as np

img = cv2.imread('thank.jpg')
# 그레이 스케일
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
# 캐니 엣지 low parameter
edges_low = cv2.Canny(img, 20, 30)
# 캐니 엣지 교재 parameter
edges = cv2.Canny(img, 60, 120)
# 캐니 엣지 high parameter
edges_high = cv2.Canny(gray, 100, 200)

# 소벨 함수 사용
sobelx = cv2.Sobel(img, -1, 1, 0, ksize = 3)
sobely = cv2.Sobel(img, -1, 0, 1, ksize = 3)

# Display the resulting frame
merged1 = np.hstack((gray, edges_low, edges, edges_high))
merged2 = np.hstack((img, sobelx, sobely, sobelx+sobely))

cv2.imshow('Canny', merged1)
cv2.imshow('Sobel', merged2)

cv2.waitKey(0)
cv2.destroyAllWindows()
