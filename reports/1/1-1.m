t=-20:0.01:20;
subplot(2,3,1);
plot(t, sinc(t));
subplot(2,3,2);
plot(t,rectpuls(t,2));
subplot(2,3,3);
plot(t,square(t,2));
subplot(2,3,4);
plot(t,tripuls(t,0.5));
subplot(2,3,5);
plot(t,sawtooth(t,0.5));

