clc;
clear all;
close all;
data = [0 1 0 0 1 0];
point = 100;
status = 1;

%Encoded_Signal
%previous one : negative
% 0 -> 0
% 1 -> alternate of last non zero

encoded_signal = zeros(1,length(data)*point);
for i=1:length(data)
    if data(i) == 1
        encoded_signal((i-1)*point+1:i*point) = status;
        status = -status;
    end
end

size = 0:1/point:length(data)-1/point;

subplot(2,1,1);
plot(size,encoded_signal);
title('Encoded Signal');
ylim([-3,3]);

%Decoded_Signal
%0 -> 0
%1/-1 -> 1

decoded_signal = zeros(1,length(data));
for i=1:length(data)
    if encoded_signal(i*point)~=0
           decoded_signal(i) = 1;
    end
end
    
decoded_signal
