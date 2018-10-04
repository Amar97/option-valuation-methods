clear all;

r=0.15;
assd(1)=4;
d29(1)=4;
T = 20;
L=40;
deltat = T/L;


for i = 1:L % let run for L delta t periods
   tval(i+1) = i + 1; % time in years 
   assd(i+1) = (1 + r*(deltat^(1/2)))*assd(i); 
   d29(i+1) = (1 + r*(deltat^(3/2)))*d29(i); 
end

plot(assd);
hold on;
plot(d29)