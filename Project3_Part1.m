clc;
clear;
RGB_Go_Board = imread('Images/Go_Board.png');
Gray_Go_Board  = im2gray(RGB_Go_Board);


% threshold = 200;
% mask = Gray_Go_Board(:,:,1) > threshold;
% newRgbImage = Gray_Go_Board;
% R = newRgbImage(:,:,1);
% R(mask) = 255;
% finalImage = cat(3, R);
% Gray_Go_Board = finalImage;
% 
% x= 178;
% y= 145;
% Gray_Black_Piece = Gray_Go_Board(y-15:y+15,x-18:x+18);
% 
% 
x= 225;
y= 65;
Gray_White_Piece = Gray_Go_Board(y-8:y+8,x-14:x+12);
% 
% 
% A = normxcorr2(Gray_Black_Piece,Gray_Go_Board);
% B = normxcorr2(Gray_White_Piece,Gray_Go_Board);


%-------------------
x= 178;
y= 145;
Gray_Black_Piece = Gray_Go_Board(y-15:y+15,x-18:x+18);
A = normxcorr2(Gray_Black_Piece,Gray_Go_Board);



threshold = 50;
mask = Gray_Go_Board(:,:,1) < threshold;
newRgbImage = Gray_Go_Board;
R = newRgbImage(:,:,1);
R(mask) = 150;
finalImage = cat(3, R);
Gray_Go_Board = finalImage;

threshold = 220;
mask = Gray_Go_Board(:,:,1) > threshold;
newRgbImage = Gray_Go_Board;
R = newRgbImage(:,:,1);
R(mask) = 0;
finalImage = cat(3, R);
Gray_Go_Board = finalImage;

B = normxcorr2(Gray_Black_Piece,Gray_Go_Board);
%-------------

tiledlayout(2, 3, 'TileSpacing', 'compact', 'Padding', 'compact');
nexttile;
imshow(Gray_Go_Board)
nexttile;
imshow(Gray_White_Piece)
nexttile;
imshow(Gray_Black_Piece)
nexttile;
imshow(A>0.55)
nexttile;
imshow(B>0.55)
