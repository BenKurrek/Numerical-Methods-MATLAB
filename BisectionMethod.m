syms x
%f(x) = -0.6*x^2 +2.4*x + 5.5; 
f(x) = x^2 - exp(-x); 

x_low = 0; %CHOOSE SO OPPOSITE OF ROOT
x_upp = 1; 
num_iter = 10; 
desired_err = 1*10^-5; 

num_iters_for_desired_err = log10(abs(x_low - x_upp) / (desired_err/100)) / log10(2); 
disp(round(num_iters_for_desired_err, 3));

x_mid_old = (x_low + x_upp) / 2;
iter = 2; 
cur_e = inf; 

found = 0; 

values = [1, x_low, x_upp, x_mid_old, f(x_low), f(x_upp), f(x_mid_old), (x_upp-x_low)/(x_upp+x_low)*100];
disp(round(values, 3)); 

f_x_mid = f(x_mid_old);
bound_check_upp = f(x_upp) * f_x_mid; 
bound_check_low = f(x_low) * f_x_mid;
if(bound_check_upp > 0)
    x_upp = x_mid_old; 
elseif(bound_check_low > 0) 
    x_low = x_mid_old; 
else
    found = 1; 
end

if(found == 0)
    while cur_e >= desired_err && iter <= num_iter 
        x_mid_new = (x_low + x_upp) / 2;
        
        cur_err = (abs(x_mid_new - x_mid_old)) / x_mid_new * 100; 
        
        values = [iter, x_low, x_upp, x_mid_new, f(x_low), f(x_upp), f(x_mid_new), cur_err];
        %values = [iter, x_low, x_mid_new, x_upp, f(x_low), f(x_mid_new), f(x_upp), cur_err];
        disp(round(values, 3)); 
        bound_check_upp = f(x_upp) * f(x_mid_new); 
        bound_check_low = f(x_low) * f(x_mid_new);
        if(bound_check_upp > 0)
            x_upp = x_mid_new; 
        elseif(bound_check_low > 0) 
            x_low = x_mid_new; 
        else
            disp("FOUND!!!"); 
            break; 
        end

        x_mid_old = x_mid_new; 
        iter = iter + 1; 
    end
end


