clc;
clear all;
close all;
data = [0 1 0 0 1 1];
point = 100;

%Encoded_Signal
% 0 -> +1 to -1
% 1 -> -1 to +1
encoded_signal = zeros(1,length(data)*point);
for i=1:length(data)
    if data(i)==0
        for j=1:point/2
            encoded_signal((i-1)*point+j) = 1;
        end 
        for j=point/2+1:point
            encoded_signal((i-1)*point+j) = -1;
        end
    else
        for j=1:point/2
            encoded_signal((i-1)*point+j) = -1;
        end 
        for j=point/2+1:point
            encoded_signal((i-1)*point+j) = 1;
        end
    end
end

size = 0:1/point:length(data)-1/point;

subplot(2,1,1);
plot(size,encoded_signal);
title('Encoded Signal');
ylim([-3,3]);

%Decoded_Signal
%encoded signal(i*point)=1 -> 0
%encoded signal(i*point)=-1 -> 1
decoded_signal = zeros(1,length(data));
for i=0:length(data)-1
    if encoded_signal(i*point+1)==1
        decoded_signal(i+1) = 0;
    else
        decoded_signal(i+1) = 1;
    end
end
    
decoded_signal
