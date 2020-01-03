t=-20:0.01:20;
subplot(511);
plot(t, sinc(t)); 
axis([-10 10 -1.6 1.6]); % axis([xmin, xmax, ymin, ymax])
% xlim([-10 10]);
% ylim([-1.2 1.2]);
subplot(512); % subplot(row_num, column_num, current_occupied_index)
plot(t,rectpuls(t,2)); % rectpuls(time_array, width)
axis([-10 10 -0.5 1.6]); 
subplot(513);
% period of square() and sawtooth() is 2*pi
plot(t,square(t,50)); % square(time_array, duty_percentage), duty_percentage ranges (0,100)
axis([-10 10 -1.6 1.6]);
subplot(514);
plot(t,tripuls(t,1)); % tripuls(time_array, width)
axis([-10 10 -0.5 1.6]);
subplot(515);
plot(t,sawtooth(t,0.5)); % sawtooth(time_array, width), T=2*pi
% plot(t,sawtooth(t*pi,0.5)); % T=2
axis([-10 10 -1.6 1.6]);

