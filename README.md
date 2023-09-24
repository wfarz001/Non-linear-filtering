# Non-linear-filtering
The assignment is focused on applying softening, sharpening and non-linear filter on acquired
noisy or blurry images. The main idea of the assignment is to acquire a noisy or blurry image
utilizing personal camera or phone rather than utilizing online available images. In addition,
comparing the output of filtered image after applying different types of filters.
In image processing domain, filtering is a process to modify or enhance an image. For instance,
by utilizing the filter we can enhance or suppress certain features of images. The image processing
operation can be conducted by utilizing smoothing, sharpening, or detecting edge of an image.
Filter mainly works on the pixels of the image and the pixel value of the output filtered image is
determined by the function operation done by a particular filter on the neighborhood pixel values
of image. Neighborhood pixels are in a particular position compared to the specific pixel. In broad
terms, filter can be classified into linear and non-linear filter. Linear filtered image output pixel
value is linear combination of input image neighborhood pixels. Non-linear filter does not follow
the linearity property of linear filters. Basically, non-linear filters obtain the neighborhood pixels,
order, or sort them and an output pixel is generated from the order pixel value.
The mathematical operation underlying all kinds of filter operations is convolution. Convolution
is basically a multiplication of each element between two arrays of different size producing a third
array. The input image can be considered as 2D array which rows and columns and the second
array are called filter kernel or mask, size is smaller than the input image size, which is slide
through the image and convolution of image and filter mask produce a filtered output image.

The following steps are performed in the assignment:
1. First, we acquire a blurry image using personal phone. The image is taken in dim light and
shadow is visible in the image.
2. Afterwards, different linear and non-linear filter is applied to the input image using
MATLAB software and difference in input and output image is observed quantitively and
qualitatively.
3. In terms of softening or blurring operations, box filter and gaussian filter with different
sigma value is applied and image signal to noise ratio, peak signal to noise ratio is
calculated to quantitively difference in output image.
4. In case of sharpening operation, Laplacian filter mask is used in the input image and output
is generated for general and strong Laplacian kernel.
5. In case of non-linear operation, median filter is utilized. To understand the impact of
median filter, salt and pepper noise is added to the original image and different kernel size
of median filter is applied to the noisy image and output is observed for different size of
kernel.
