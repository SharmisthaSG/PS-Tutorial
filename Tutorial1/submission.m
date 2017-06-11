

p_on = 0.6

%1
x1 = [-4:.1:4];
y1 = normpdf(x1,1,1)
plot(x1,y1)
hold on
%2
x2 = [-4:.1:4];
y2 = normpdf(x2,-1,1)
plot(x2,y2)

%3
x3 = [-4:.1:4];
y3 = y1 * p_on
plot(x3,y3)

%4
x4 = [-4:.1:4];
y4 = y2 * (1-p_on)
plot(x4,y4)

%5
x5 = [-4:.1:4];
y5 = y3 + y4
plot(x5,y5)
hold off


%p_error
c = [-4:0.1:4]
p_error = qfunc(c+1)*(1-p_on) + (1-qfunc(c-1))*p_on
[a,b] = min(p_error);
ans = a;
ans
plot(c,p_error)



%%%%%%%%%%%%%%%

p_on = 0.3

%1
x1 = [-4:.1:4];
y1 = normpdf(x1,1,1)
plot(x1,y1)
hold on
%2
x2 = [-4:.1:4];
y2 = normpdf(x2,-1,1)
plot(x2,y2)

%3
x3 = [-4:.1:4];
y3 = y1 * p_on
plot(x3,y3)

%4
x4 = [-4:.1:4];
y4 = y2 * (1-p_on)
plot(x4,y4)

%5
x5 = [-4:.1:4];
y5 = y3 + y4
plot(x5,y5)
hold off



%p_error
c = [-4:0.1:4]
p_error = qfunc(c+1)*(1-p_on) + (1-qfunc(c-1))*p_on
[a,b] = min(p_error);
ans = a;
ans
plot(c,p_error)

%%%%%%%%%%%%%%%%%%%%%
p_on = 0.5
%1
x1 = [-4:.1:4];
y1 = normpdf(x1,1,1)
plot(x1,y1)
hold on 
%2
x2 = [-4:.1:4];
y2 = normpdf(x2,-1,1)
plot(x2,y2)

%3
x3 = [-4:.1:4];
y3 = y1 * p_on
plot(x3,y3)

%4
x4 = [-4:.1:4];
y4 = y2 * (1-p_on)
plot(x4,y4)

%5
x5 = [-4:.1:4];
y5 = y3 + y4
plot(x5,y5)
hold off

%p_error
c = [-4:0.1:4]
p_error = qfunc(c+1)*(1-p_on) + (1-qfunc(c-1))*p_on
[a,b] = min(p_error);
ans = a;
ans
plot(c,p_error)
%%%%%%%%%%%%%%%%%%%%%%%

p_on = 0.7
%1
x1 = [-4:.1:4];
y1 = normpdf(x1,1,1)
plot(x1,y1)
hold on
%2
x2 = [-4:.1:4];
y2 = normpdf(x2,-1,1)
plot(x2,y2)

%3
x3 = [-4:.1:4];
y3 = y1 * p_on
plot(x3,y3)

%4
x4 = [-4:.1:4];
y4 = y2 * (1-p_on)
plot(x4,y4)

%5
x5 = [-4:.1:4];
y5 = y3 + y4
plot(x5,y5)
hold off

%p_error
c = [-4:0.1:4]
p_error = qfunc(c+1)*(1-p_on) + (1-qfunc(c-1))*p_on
[a,b] = min(p_error);
ans = a;
ans
plot(c,p_error)


