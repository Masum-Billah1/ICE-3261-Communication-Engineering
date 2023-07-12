clc;
clear all;
close all;
fs = 10000;
t = 0:1/fs:1;

%message signal
fm = 4;
am = 10;
m = am*cos(2*pi*fm*t);
subplot(4,1,1);
plot(t,m)
title('Message Signal');

%carrier signal
fc = 100;
ac = 8;
c = ac*cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,c)
title('Carrier Signal');

%modulation
modulatedSignal = (ac + m).*(c/ac);
subplot(4,1,3);
plot(t,modulatedSignal)
title('Modulated Signal');

%demodulation
demodulatedsignal = (modulatedSignal./(c/ac))-ac;
subplot(4,1,4);
plot(t,demodulatedsignal)
title('Demodulated Signal');
%ref: https://www.tutorialspoint.com/analog_communication/analog_communication_amplitude_modulation.htm
