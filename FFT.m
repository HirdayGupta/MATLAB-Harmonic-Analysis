
x = audioread('A4 - Piano.wav'); %Reading the recorded audio file.
fs = 44100; % Defining the Sampling Rate.
plot(x); %Plotting waveform of recorder sound
title('Plot in the Time Domain - Waveform'); %labelling the graph 	 	 
xlabel('Time (s)') %labelling the axes.

L=length(x);
NFFT = fs/2; %Defining the Range of Meaningful Results	 	 

X=fft(x,NFFT); %running the waveform through a Fast Fourier Transform or FFT	 	 

Px=X.*conj(X)/(NFFT*L); %Power of each freq components 	 
fVals=fs*(0:NFFT/2-1)/NFFT;	 	 
 plot(fVals,Px(1:NFFT/2),'b','LineSmoothing','on','LineWidth',1); %Plotting the results of the FFT	 	 
title('Plot in the Frequency Domain - Fourier Analysis'); %Labelling graph	 	 
xlabel('Frequency (Hz)') %Labelling Axes.
ylabel('PSD');