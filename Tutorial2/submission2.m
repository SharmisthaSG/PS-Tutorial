
function arr=tutorial(m,n,p)
arr=[];
for j=1:m
    r=rand;
    for i=1:n
    x=binocdf(i,n,p);
    y=binocdf(i-1,n,p);
    if(y<=r&&r<x)
        arr(end+1)=i;
        break;
    end
    end
end
end

        