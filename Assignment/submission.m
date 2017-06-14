% To obtain an appropriate histogram, the values 50 and 100 have been changed to 500 and
% 10000 respectively
rng(9600) %setting a seed
diary
diary on
p1 = rand(); % generating a random probability between 0 and 1
p2 = p1.*rand(1,1);
p3 = p2.*rand(1,1);
p4 = p3.*rand(1,1);
disp(p1);
disp(p2);
disp(p3);
disp(p4);
diary off
%calculating required probabilties manually to compare with plotted histograms 
ans1 = p1;
ans2 = (p1*p2) + p1*(1 - p1);
ans3 = p3*p1*p2 + p1*(1-p2)*(p1) + p1*(p1)*(1 - p1) + p4*(1 - p1)*(1- p1);
ans4 = (p2*p1)/ans2;
ans5 = p1*p2*p3;

disp(ans1);
disp(ans2);
disp(ans3);
disp(ans4);
disp(ans5);

% loss = 0
% win = 1

arr1 = zeros(1,10000);
arr2 = zeros(1,10000);
arr3 = zeros(1,10000);
arr4 = zeros(1,10000);
arr5 = zeros(1,10000);
for k = 1:10000
    A = zeros(3,500); % 3 X 500 matrix initialised
    count = 0;
    for i = 1:500
        num = rand();
        if num <= p1
            A(1,i)= 1;
            count = count+ 1;
        end
    end
    prob1 = count/500;
    arr1(1,k)= prob1;

    sum = 0;
    for i = 1:500
        for j = 1:1
            num1 = rand();
            if A(j,i) == 1 && num1 < p2
                A(j+1,i) = 1;
                sum = sum + 1;
            elseif A(j,i) == 0 && num1 < p1
                A(j+1,i) = 1;   
                sum = sum + 1;
            end
        end
    end
    prob2 = sum/500;
    arr2(1,k)= prob2;
    
    sum1 = 0;
    for i = 1:500
        for j = 1:1
            num2 = rand();
            if A(j,i) == 0 && A(j+1,i) == 0 && num2 <= p4
                A(j+2,i) = 1;
                sum1 = sum1 + 1;
            elseif A(j,i) == 0 && A(j+1,i) == 1 && num2 <= p1
                A(j+2,i) = 1;
                sum1 = sum1 + 1;
            elseif A(j,i) == 1 && A(j+1,i) == 0 && num2 <= p1
                A(j+2,i) = 1;
                sum1 = sum1 + 1;
            elseif A(j,i) == 1 && A(j+1,i) == 1 && num2 <= p3
                A(j+2,i) = 1;
                sum1 = sum1 + 1;
            end
        end
    end
    prob3 = sum1/500;
    arr3(1,k)= prob3;

    sum2 = 0;
    sum3 = 0;
    for i = 1:500
       for j = 1:1
           if A(j,i) == 1 && A(j+1,i) == 1
                sum2 = sum2 + 1;
           end
           if A(j,i) == 1 && A(j+1,i) == 1 && A(j+2,i) == 1
                sum3 = sum3 + 1;
           end
       end
    end
    prob4 = sum2/sum1;
    arr4(1,k)= prob4;
    
    prob5 = sum3/500;
    arr5(1,k)= prob5; 
    
    %disp(prob1);
    %disp(prob2);
    %disp(prob3);
    %disp(prob4);
    %disp(prob5);
end

histogram(arr1,1000);
%histogram(arr2,1000);
%histogram(arr3,1000);
%histogram(arr4,1000);
%histogram(arr5,1000);



            
            
        







    

