syms x
f(x) = 2.1*x^3 - 11.6*x^2 + 17.5*x - 6;

x_old = 3; %CHOOSE SO OPPOSITE OF ROOT
x_curr = 4; 

num_iter = 3; 
desired_err = 0.01; 

cur_e = inf; 
iter = 0; 

while cur_e >= desired_err && iter <= num_iter 
    x_new = x_curr - f(x_curr)*(x_old-x_curr)/(f(x_old)-f(x_curr)); 
    cur_e = abs(x_new - x_curr) / x_new * 100; 
    
    values = [iter, x_old, x_curr, f(x_old), f(x_curr), x_new, cur_e]; 
    %values = [iter, x_curr, f(x_curr), cur_e]; 
    disp(round(values, 6)); 
    
    x_old = x_curr; 
    x_curr = x_new; 
    iter = iter + 1;
end

