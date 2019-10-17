res=1;
while res
clc
rec = audiorecorder(44100,16,1);
recordblocking(rec, 2);
X = getaudiodata(rec);
Fs=44100;
L = length(X);
T = 1/Fs;                     
t = (0:L-1)*T;      
Y = fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) =2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
j=1;
R=zeros(L,1);
for i=1:1:length(P1)
if P1(i)>=0.01
R(j)=f(i);
j=j+1;
end
end
A=unique(sort(R));
A=A(2:end)
res=input("press 0 to stop / 1 to continue  : ");
end
