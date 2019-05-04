[y,fs] = audioread('Sonne.wav');
a = echofunction(y,fs); %assigning ,our input signal with one echo to 'a';
for counter=1:20 %applying echo effect to our echoed signal 20 times
    rev = a;
    a = echofunction(rev,fs);
end
sum = rev+y; %adding 20 times echoed signal to our original signal
sound(sum,fs);