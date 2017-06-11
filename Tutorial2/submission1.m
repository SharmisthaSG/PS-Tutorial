p=0.1;
val=10000;
avg=[];
for a=[2,10,50,100,500]
    sum=tutorial(val,a,p);
    samplemean=sum/a;
    figure;
    histfit(sum);
    figure;
    histfit(samplemean);
    
end    
