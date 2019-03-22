function [thresh] = Find_Threshold(wing_image)


T = 0.01:0.02:0.3;
[a b c]=size(wing_image);
%tries 5 different frames 

    frame_number= round((c-1)*rand + 1);
    BW1 = imbinarize(wing_image(:,:,frame_number),T(1));BW2 = imbinarize(wing_image(:,:,frame_number),T(2));BW3 = imbinarize(wing_image(:,:,frame_number),T(3));
    BW4 = imbinarize(wing_image(:,:,frame_number),T(4));BW5 = imbinarize(wing_image(:,:,frame_number),T(5));BW6 = imbinarize(wing_image(:,:,frame_number),T(6));
    BW7 = imbinarize(wing_image(:,:,frame_number),T(7));BW8 = imbinarize(wing_image(:,:,frame_number),T(8));BW9 = imbinarize(wing_image(:,:,frame_number),T(9));
    BW10 = imbinarize(wing_image(:,:,frame_number),T(10));BW11 = imbinarize(wing_image(:,:,frame_number),T(11));BW12 = imbinarize(wing_image(:,:,frame_number),T(12));
    
    figure(1)
    h(1) = subplot(3,4,1);imagesc(BW1);
    h(2) = subplot(3,4,2);imagesc(BW2);
    h(3) = subplot(3,4,3);imagesc(BW3);
    h(4) = subplot(3,4,4);imagesc(BW4);
    h(5) = subplot(3,4,5);imagesc(BW5);
    h(6) = subplot(3,4,6);imagesc(BW6);
    h(7) = subplot(3,4,7);imagesc(BW7);
    h(8) = subplot(3,4,8);imagesc(BW8);
    h(9) = subplot(3,4,9);imagesc(BW9);
    h(10) = subplot(3,4,10);imagesc(BW10);
    h(11) = subplot(3,4,11);imagesc(BW11);
    h(12) = subplot(3,4,12);imagesc(BW12);
    % find which subplot was clicked
    [x, y] = ginput(1);
    pInd = find(gca == h);
    disp(num2str(pInd));
    close (1)
    
    %finds more than one choice for the same video
    thresh=T(pInd);




