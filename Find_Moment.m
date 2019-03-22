%this code imports an image of the wing and uses it to find the moment of
%inertia by dividing it into finite elements

%we assume the mass and wing dimensions are knows

%loads image
wing_image=imread('58046fruitfl.jpg');
imshow(wing_image)

%turn image to greyscale
wing_GreyScale=rgb2gray(wing_image);
imshow(wing_GreyScale)

%% binarize image
SE = strel('square',9);
SE2 = strel('square',11);
binarized_wing_1=imdilate(imerode(imbinarize(wing_GreyScale,0.875),SE),SE);
binarized_wing_2=imdilate(binarized_wing_1,SE2);
imshow(binarized_wing_1)
figure
imshow(binarized_wing_2)
%% Find the contour of the wing
[C, h]=imcontour(binarized_wing_2,1);
C_1=[C(1,2:end),C(2,2:end)];


