clc;
clear;
RGB_Go_Board = imread('Images/Go_Board.png');
Gray_Go_Board  = im2gray(RGB_Go_Board);

x= 178;
y= 145;
Gray_Black_Piece = RGB_Go_Board(y-15:y+15,x-18:x+18);

% x= 744;
% y= 137;
% Gray_White_Piece = RGB_Go_Board(y-12:y+10,x-15:x+15);
x= 225;
y= 65;
Gray_White_Piece = RGB_Go_Board(y-8:y+8,x-12:x+12);

A = normxcorr2(Gray_Black_Piece,Gray_Go_Board);
B = normxcorr2(Gray_White_Piece,Gray_Go_Board);
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
