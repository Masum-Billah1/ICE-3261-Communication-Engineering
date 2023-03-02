clc;
clear all;
close all;
data = [1 0 0 1 1 0 1 0];
point = 100;
status = 1;
%Encoded_Signal
%previous one : positive
% 0 -> same
% 1 -> alternate
encoded_signal = zeros(1,length(data)*point);
for i=1:length(data)
    if data(i) == 1
        status = -status;
    end
    encoded_signal((i-1)*point+1:i*point) = status;
end

size = 0:1/point:length(data)-1/point;

subplot(2,1,1);
plot(size,encoded_signal);
title('Encoded Signal');
ylim([-3,3]);

%Decoded_Signal
status = 1;
decoded_signal = zeros(1,length(encoded_signal));
for i=1:length(data)
    if encoded_signal(i*point)~=status
        decoded_signal((i-1)*point+1:i*point) = 1
        status = -status;      
    end
end
    
subplot(2,1,2);
plot(size,decoded_signal);
title('Decoded Signal');
ylim([-3,3]);
