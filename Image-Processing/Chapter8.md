# 13주차
## Ch.2
### Perceptron (Frank Rosenblatt, 1958)(1957)
* Deep-learning의 기원
* 다수의 신호를 입력받아 하나의 신호를 출력함
<br> y = 0 || 1
<br> y = x1w1 + x2w2
* 직선으로 분류하기 어려워서 침체기?(XOR)
* 단층 Perceptron으로는 비선형 레이어를 분리할 수 없다
<br> [Ref](https://sacko.tistory.com/10)

### Multi-Layer Perceptron
* 층 2개 하니까 되더라
> 입력층 - 은닉층 - 출력층
## Ch.3
#### 활성화 함수(Activation Function)
* Sigmoid function: 미분에 좋은 특성을 가지고 있음
* Step function(Ideal)
* ReLu(Rectified Linear Unit): hottest

#### 다차원 배열
#### 신경망 표기법
* W(1)12: (1)1층의 가중치, 1: 다음층의 첫번째뉴런 2 앞층의 두번째 뉴런
* Forward propagation
* MNIST Data ```load_mnist```
* Loss Function: 작게 만드는 게 좋음
  * 평균 제곱 오차(Mean Squared Error, MSE)
  * 교차 엔트로피 오차(Cross Entropy Error, CEE)
  * mini batch
* Numerical Differentiation cf. Analytic Differentiation
* Computational Graph; CG cf. Backpropagation
  * [Andrej karpathy](http://karpathy.github.io/) & [Stanford CS231n: Convolutional Neural Networks for Visual Recognition](http://cs231n.stanford.edu/)
* Backward Propagation
* Chain Rule
* 매개변수의 갱신
  * SGD
  * Momentum
  * AdaGrad(Adative Gradient Algorithm)
  * Adam
* 가중치의 초기값
  * Xavier 초기값
  * He 초기값(ReLU에 좋음)
* Batch Normalization
* Dropout
* CNN
  * LeNet
  * AlexNet
  * VGG - SSD(Single Shot multibox Detector)
[참고자료](https://wikidocs.net/61375)
