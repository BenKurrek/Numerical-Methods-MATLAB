x_points = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50];
y_points = [17, 24, 31, 33, 37, 37, 40, 40, 42, 41];

desired_order = 1; 

size_n = size(x_points);
n = size_n(2);

delta_xy = 0; 
delta_x = sum(x_points);
delta_y = sum(y_points); 
delta_x2 = 0; 

iter = 1; 

coeff_matrix = zeros(desired_order+1, desired_order+1);
coeff_matrix(1,1) = n; 
solution_matrix = zeros(desired_order+1, 1);

delta_x_vector = zeros(1, desired_order + desired_order); 
delta_xy_vector = zeros(1, desired_order+1); 

while(iter <= n)
    for c = 1:desired_order+desired_order
        if(c <= desired_order+1)
            x_term = x_points(iter)^(c-1); 
            y_term = y_points(iter); 
            delta_xy_vector(c) = delta_xy_vector(c) + x_points(iter)^(c-1)*y_points(iter);
        end
        x_vector_x_term = x_points(iter)^c; 
        delta_x_vector(c) = delta_x_vector(c) + x_vector_x_term; 
    end
    iter = iter + 1; 
end

for row = 1:desired_order+1
    for col = 0:desired_order
        if(~(row == 1 && col == 0))
            coeff_matrix(row, col+1) = delta_x_vector(col-1 + row); 
        end
    end
    solution_matrix(row, 1) = delta_xy_vector(row); 
end

solution = linsolve(coeff_matrix, solution_matrix);
solution_reverse = solution(end:-1:1); 
text = sprintf("Solution Vector (From Ao -> Am Terms): "); 
disp(text); 
disp(solution_reverse); 

hold on;

syms x
f = poly2sym(solution_reverse); 
fplot(f); 
plot(x_points, y_points, 'o'); 

hold off; 

