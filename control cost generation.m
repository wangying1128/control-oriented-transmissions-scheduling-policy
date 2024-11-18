A = 1.01;
Q = 0.01;
K = 1;
g = 1.3;
R = 1;
Q_w = 1;
aoi_max = 200;
for j  =1:length(g)
    for i = 1:aoi_max
        sum = 0;
        sum_1 = 0;
        if i==1
            J(j,1) = 0;
            J_1(j,1) = 0;
        else
            for k = 1:i-1
                sum = sum+(g(j))^(2*(k-1))*(Q+K*R*K)*Q_w;
                sum_1 = sum_1 + A^(2*(k-1))*Q*Q_w
            end
            J(j,i) = sum;
            J_1(j,i) = sum_1;
        end
    end
end
J