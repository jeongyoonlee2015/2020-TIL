# Image Processing with OpenCV

* 7th Semester Lecture

## Chapter1. 
<br> 영상처리(Image Processing): 영상을 처리한다.
<br> 처리= 연산

#### 영상처리의 대표적인 목적
영상(화질) 개선: 사진이나 동영상이 너무 어둡거나 밝아서 화질을 개선하는 과정
<br> 영상 복원: 오래되어 빛바랜 옛날 사진이나 영상을 현대적인 품질로 복원하는 과정
<br> 영상 분할: 사진이나 영상에서 원하는 부분만 오려내는 과정

#### 컴퓨터비전: 영상 처리 개념을 포함하는 좀 더 큰 포괄적인 의미
- 영상처리: 원본 영상을 사용자가 원하는 새로운 영상으로 바꿔주는 기술
<br> - 컴퓨터 비전: 영상에서 의미 있는 정보를 추출해 주는 기술
* 객체 검출(object detection): 영상 속에 원하는 대상이 어디에 있는지 검출
* 객체 추적(object tracking): 영상 속 관심 있는 피사체가 어디로 움직이는지 추적
* 객체 인식(object recognition): 영상 속 피사체가 무엇인지 인식

#### <컴퓨터 비전 프로세스>
[원본 영상]-(영상처리)-[전처리 영상]-(컴퓨터 비전)-[최종 결과]

### Installation
* python 3.6
* NumPy Module 1.14
* OpenCV-Python Module 3.4.1, contrib Module
* Matplotlib 2.2.2

#### [NumPy Installation](https://pypi.python.org/pypi/numpy)

```bash
$ pip3 install numpy
>>> import numpy
>>> numpy.__version__
```
#### OpenCV-Python Installation in Mac
* pip
* source build

> Main Module
```bash
$ pip3 install opencv-python
```

> Include Extra Module

```bash
$ pip3 install opencv-contrib-python
>>> import cv2
>>> cv2.__version__
```







