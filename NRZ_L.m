clc;
clear all;
close all;
%Encode :
% 0 -> 1
% 1 -> -1
data = [1 0 0 1 1 0 1 0];
point = 100;

%Encoded_Signal
encoded_signal = zeros(1,length(data)*point);
for i=1:length(data)
    if data(i)==1
        encoded_signal((i-1)*point+1:i*point) = -1;
    else
        encoded_signal((i-1)*point+1:i*point) = 1;
    end
end

size = 0:1/point:length(data)-1/point;

subplot(2,1,1);
plot(size,encoded_signal);
title('Encoded Signal');
ylim([-3,3]);

%Decoded_Signal
decoded_signal = zeros(1,length(encoded_signal));
for i=1:length(encoded_signal)
    if encoded_signal(i)==-1
        decoded_signal(i) = 1;
    else
        decoded_signal(i) = 0;
    end
end
    
subplot(2,1,2);
plot(size,decoded_signal);
title('Decoded Signal');
ylim([-3,3]);
