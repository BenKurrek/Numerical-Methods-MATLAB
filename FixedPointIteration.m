syms x
f(x) = (6-2.1*x^3+11.6*x^2)/17.5;
%f(x) = exp(-x); 

x_old = 3; %CHOOSE SO OPPOSITE OF ROOT

num_iter = 3; 
desired_err = 1*10^-5; 

iter = 0; 
cur_e = inf; 

while cur_e >= desired_err && iter <= num_iter 
    x_new = f(x_old); 
    cur_e = abs(x_new - x_old) / x_new * 100; 

    values = [iter, x_old, x_new, cur_e];
    disp(round(values, 6)); 
    x_old = x_new; 
    iter = iter + 1;
end


