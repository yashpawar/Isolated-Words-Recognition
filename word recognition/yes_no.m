clc;clear;
threshold = 12; % threshold value
N = length(x);
k1 = round(N*5000/fs); % FFT component(index) corresponding to 5000 Hz
k2 = round(N*11025/fs); % FFT component(index) corresponding to 11025 Hz
X = abs(fft(x));
f = sum(X(1:k1))/sum(X(k1:k2)); % calculate feature
if f < threshold
output = 'yes'; % if feature is below threshold, return 'yes'
else
output = 'no'; % if feature is above threshold, return 'no'
end