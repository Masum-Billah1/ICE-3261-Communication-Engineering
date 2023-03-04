clc;
clear all;
close all;
data = [0 1 0 1 1 0 1 1];
point = 100;
flag = [1 0 -1 0];

%Encoded_Signal
%previous one : negative
% 0 -> same as before
% 1 -> +1,0,-1/-1,0,+1.
status = 0;
index = 1;
encoded_signal = zeros(1,length(data)*point);
for i=1:length(data)
    if data(i) == 1
        status = flag(index)
        encoded_signal((i-1)*point+1:i*point) = status;
        index = mod(index,4)+1;
    else
        encoded_signal((i-1)*point+1:i*point) = status;
    end
    
end

size = 0:1/point:length(data)-1/point;

subplot(2,1,1);
plot(size,encoded_signal);
title('Encoded Signal');
ylim([-3,3]);

%Decoded_Signal
%status same -> 0
%status change -> 1

status = 0;
decoded_signal = zeros(1,length(data));
for i=1:length(data)
    if encoded_signal(i*point)==status
           decoded_signal(i) = 0;
    else
        decoded_signal(i) = 1;
        status = encoded_signal(i*point);
    end
end
    
decoded_signal
