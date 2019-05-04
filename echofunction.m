function y = echofunction(x,fs)
[szr,szc] = size(x);
k = zeros(szr,szc);
b = 1;
delay = 5002;
while(b <= szc)
    for a=1:1:(szr-delay)
        k(a,b) = x(a+delay,b);
    end
b = b+1;
end
gain = 0.164;
y = x + k.*gain;