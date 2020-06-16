# [Histograms of Oriented Gradients for Human Detection](https://www.learnopencv.com/histogram-of-oriented-gradients/)
Navneet Dalal and Bill Triggs

### Summary
* A feature descriptor is a representation of an image or an image patch that simplifies the image by extracting useful information and throwing away extraneous information.

* The feature vector produced by these algorithms when fed into an image classification algorithms like Support Vector Machine (SVM) produce good results.

* Good features extracted from an image should be able to tell the difference.

1. Preprocessing
    * The only constraint is that the patches being analyzed have a fixed aspect ratio. In our case, the patches need to have an aspect ratio of 1:2. 
    * Crop & Resize

2. Calculate the Gradient Images
    
3. Calculate HOGs in 8x8 cells
    * In this step, the image is divided into 8×8 cells and
a HOGs is calculated for each 8×8 cells.
    * Quantization

4. 16×16 Block Normalization
    * Dividing each element of this vector gives us a normalized vector
    
5. Calculate the HOG feature vector

[Implementation Ref.Aishwarya Singh](https://www.analyticsvidhya.com/blog/2019/09/feature-engineering-images-introduction-hog-feature-descriptor/)

* HOG는 공간적인 특성을 많이 잃어버리긴 하나, 특성의 일부분은 가지고 있다.

[Ref](https://medium.com/@ageitgey/machine-learning-is-fun-part-4-modern-face-recognition-with-deep-learning-c3cffc121d78)
[Ref-Kor](https://medium.com/@jongdae.lim/%EA%B8%B0%EA%B3%84-%ED%95%99%EC%8A%B5-machine-learning-%EC%9D%80-%EC%A6%90%EA%B2%81%EB%8B%A4-part-4-63ed781eee3c)

[viola jones algorithm](https://www.vocal.com/video/face-detection-using-viola-jones-algorithm/)

[Face Landmark 실습하기-Ref](https://blog.naver.com/PostView.nhn?blogId=chandong83&logNo=221487549771&parentCategoryNo=&categoryNo=&viewDate=&isShowPopularPosts=false&from=postView)

* 결과
<img width="567" alt="face_landmark" src="https://user-images.githubusercontent.com/43804152/84749858-80bdeb80-aff5-11ea-8d1e-a59d143cea30.png">
