matrix = [0.3, 0.52, 1; 0.5, 1, 1.9; 0.1, 0.3, 0.5];
solution = [-0.01; 0.67; -0.44];

d_original = det(matrix); 

first_col = matrix(:,1);
sec_col = matrix(:,2);
third_col = matrix(:,3);

x_matrix = [solution, sec_col, third_col];
y_matrix = [first_col, solution, third_col];
z_matrix = [first_col, sec_col, solution];

x_det = det(x_matrix); 
y_det = det(y_matrix); 
z_det = det(z_matrix); 

final = [x_det/d_original, y_det/d_original, z_det/d_original];
disp(round(final, 4)); 