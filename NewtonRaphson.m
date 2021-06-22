syms x
f(x) = exp(-0.5*x)*(4-x)-2;
f_prime(x) = diff(f, x); 

x_old = 2; %CHOOSE SO OPPOSITE OF ROOT

num_iter = 100; 
desired_err = 0.01; 
cur_e = inf; 

iter = 0; 

while cur_e >= desired_err && iter <= num_iter 
    div_term = f(x_old) / f_prime(x_old); 
    
    x_new = x_old - div_term; 
    values = [iter, x_old, f(x_old), f_prime(x_old), x_new, cur_e];
    cur_e = abs(x_new - x_old) / x_new * 100; 
    
    disp(round(values, 6)); 
    x_old = x_new; 
    iter = iter + 1;
end

values = [iter, x_old, f(x_old), f_prime(x_old), x_new, cur_e];
disp(round(values, 6)); 


