# [Histograms of Oriented Gradients for Human Detection](https://www.learnopencv.com/histogram-of-oriented-gradients/)
Navneet Dalal and Bill Triggs

### Summary
* A feature descriptor is a representation of an image or an image patch that simplifies the image by extracting useful information and throwing away extraneous information.

* The feature vector produced by these algorithms when fed into an image classification algorithms like Support Vector Machine (SVM) produce good results.

* Good features extracted from an image should be able to tell the difference.

1. Preprocessing
    * The only constraint is that the patches being analyzed have a fixed aspect ratio. In our case, the patches need to have an aspect ratio of 1:2. 
    * Crop & Resize

2. Calculate the Graident Images
    
3. Calculate HOGs in 8x8 cells
    * In this step, the image is divided into 8×8 cells and
a HOGs is calculated for each 8×8 cells.
    * Quantization

4. 16×16 Block Normalization
    * Dividing each element of this vector gives us a normalized vector
    
5. Calculate the HOG feature vector

[Implementation Ref. Aishwarya Singh](https://www.analyticsvidhya.com/blog/2019/09/feature-engineering-images-introduction-hog-feature-descriptor/)
