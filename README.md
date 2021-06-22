# Numerical Methods MATLAB Repository

Hub for several of the topics covered in MTE 204 - Numerical Methods coded in MATLAB. 

## DONE:
- [x] Nth Order Regression
- [x] Fixed Point Iteration
- [x] Cramer's Rule
- [x] Bisection Method
- [x] Secant Method
- [x] Roots of Polynomials


## Notes:

These have been coded for my personal learning and understanding. DO NOT USE THESE FOR ANYTHING THAT IS NOT ALLOWED ie - cheating etc... You are free to use any and all material in this repository but please note that some of the code might not be optimized. If you find any bugs or errors please create a new issue. 


# Detailed Guide

## Nth Order Regression
To find the best fit Nth order polynomial for a data set, use this method. To use: 

**File Name: `/NthOrderRegression.m`**
- Open the file and you can change 3 parameters: 
1. `x_points` --> X Coordinates of your points
2. `y_points` --> Y Coordinates of your points
3. `desired_order` --> Order of the polynomial you want to fit your points

Make sure that the data set sizes for x and y MATCH!!

**Output:**
- The coefficients of the polynomial are outputted in the console as shown below: 
![Alt text](/readme_images/nth_order_output_fixed.png "Console Output of Coefficients For Polynomial")
- This will output the graph of the points as well as the curve that has been fitted as shown below: 
![Alt text](/readme_images/nth_order_graph.png "Graph of 3rd Order Polynomial Fit")


## Fixed Point Iteration
This implements the fixed point iteration method. 

**File Name: `/FixedPointIteration.m`**
- Open the file and you can change 4 paramaters: 
1. `f(x)` --> The function for which you are doing the fixed point iteration on
2. `x_old` --> Initial guess
3. `num_iter` --> The number of iterations you want to perform
4. `desired_err` --> The desired error that you want from the fixed point iteration

Keep in mind that the algorithm will stop EITHER when the number of iterators has been reached or the desired error has been reached. 

**Output:**
- The output is shown in the console and it follows the format of: 
`iterator, old x, new x, current error`

![Alt text](/readme_images/fixed_point_iteration_output.png "Console Output for Fixed Point Iteration")


## Cramer's Rule
This implements Cramer's Rule for a 3D matrix. If you want to do an Nth matrix, you will need to change the code a bit to allow for that. 

**File Name: `/CramersRule.m`**
- Open the file and you can change 2 parameters: 
1. `matrix` --> The coefficient matrix
2. `solution` --> The solution matrix


**Output:**
- The output is shown in the console and it follows the format of: `A1, A2, A3`
![Alt text](/readme_images/cramers_output.png "Console Output for Cramer's Rule")

## Bisection Method
This implements the bisection method. In addition, it calculates the number of iterations required to reach a desired error.

**File Name: `/BisectionMethod.m`**
- Open the file and you can change 5 paramaters: 
1. `f(x)` --> The function for which you are doing bisection method on
2. `x_low` --> Lower X Value of your Initial Guess
3. `x_upp` --> Upper X Value of your Initial Guess
4. `num_iter` --> The number of iterations you want to perform
5. `desired_err` --> The desired error that you want from the bisection method. This value will be used to find the number of iterations needed to reach the specified desired error. 

Keep in mind that the algorithm will stop EITHER when the number of iterators has been reached or the desired error has been reached. 

**Output:**
- The output is shown in the console. The first value is the minimum number of iterations required to reach the specified desired error. The output then follows the following form: 
`Iterator, Lower X, Upper X, New Midpoint X, F(lower X), F(upper X), F(New Midpoint X), current error`

![Alt text](/readme_images/bisection_method_output.png "Console Output for Bisection Method")

## Secant Method
This implements the secant method

**File Name: `/SecantMethod.m`**
- Open the file and you can change 5 paramaters: 
1. `f(x)` --> The function for which you are doing the secant method on
2. `x_old` --> Lower X Value of your Initial Guess
3. `x_curr` --> Upper X Value of your Initial Guess
4. `num_iter` --> The number of iterations you want to perform
5. `desired_err` --> The desired error that you want from the secant method. 

Keep in mind that the algorithm will stop EITHER when the number of iterators has been reached or the desired error has been reached. 

**Output:**
- The output is shown in the console and it follows the format of: 
`iterator, old x, current x, f(old x), f(current x), new x, current error` 

![Alt text](/readme_images/secant_method_output.png "Console Output for Secant Method")

## Polynomial Roots
This will find the roots of an nth order polynomial.

**File Name: `/PolynomialRoots.m`**
- Open the file and you can change 1 paramater: 
1. `equation_coeff` --> This is the coefficient vector for the polynomial. If you had `x^2 + 3x -4` for example, the vector would be: `[1, 3, -4]`


**Output:**
- The output is shown in the console and it is simply the x values of your roots. 
![Alt text](/readme_images/polynomial_roots_output.png "Console Output for Polynomial Roots")


