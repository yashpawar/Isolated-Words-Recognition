function f = feature()
fs=44100;
rec=audiorecorder(fs,16,1);
recordblocking(rec, 2);
x=getaudiodata(rec);
N=length(x);
X=abs(fft(x));
k1=round(N*(fs/4)/fs);
k2=round(N*(fs/2)/fs); 
f=sum(X(1:k1))/sum(X(k1:k2));