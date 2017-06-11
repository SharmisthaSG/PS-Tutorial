
%7.5.1

function mean=poissonmeanseq(n);
x=poissrnd(1,[n 1]);
m=(1:n)';
mean=cumsum(x)./m;
r=(1.65)./sqrt(m);
plot(m,mean,m,mean+r,m,mean-r)



% 8.2.6

%voicedatroc.m
t0=[1:0.1:8];
n=9;
PFA9=gamcdf(n,n/3,t0);
PFA9clt=1-normcdf(sqrt(n)*((t0/3)-1));
PM9=1-gamcdf(n,n/6,t0);
PM9clt=normcdf(sqrt(n)*((t0/6)-1));
n=16;
PFA16=gamcdf(n,n/3,t0);
PFA16clt=1.0-normcdf(sqrt(n)*((t0/3)-1));
PM16=1-gamcdf(n,n/6,t0);
PM16clt=normcdf(sqrt(n)*((t0/6)-1));
plot(PFA9,PM9,PFA9clt,PM9clt,PFA16,PM16,PFA16clt,PM16clt)
axis([0 0.8 0 0.8]);
legend('Erlang n=9','CLT n=9','Erlang n=16','CLT n=16');
