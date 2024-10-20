Muller Method for Root Finding
This MATLAB script implements the Muller Method for finding the roots of a nonlinear equation. The Muller Method uses three points to fit a parabola, and iteratively refines the root approximation using the quadratic formula. It is particularly useful for finding complex roots and roots of functions that are difficult to solve using other methods.

Method Description
The Muller Method works as follows:

Input: Three initial guesses x0, x1, and x2.
Parabola Fitting: A parabola is fitted using these three points.
Root Calculation: The root of the parabola is found using the quadratic formula.
Iteration: The method iterates until the relative error between successive approximations is below a specified tolerance (Ea).
Files
Muller_Method_Root_Finding.m: The main MATLAB script implementing the Muller method.
README.md: This documentation file explaining the usage of the script.
Usage
Download the Muller_Method_Root_Finding.m file.
Open MATLAB.
Load the script into MATLAB.
Execute the script to find the root of your equation.
Example:
In the script, the initial guesses are:

x0 = 4.5;
x1 = 5.5;
x2 = 5;
The algorithm will run iteratively until the relative error h is less than the tolerance Ea = 0.03. After completion, the approximate root and the number of iterations will be displayed.

Output
The output will display:

The approximate root x2.
The number of iterations k it took to reach the desired accuracy.
Modifications
Adjust the initial guesses x0, x1, x2 as needed.
Modify the error tolerance Ea to control the precision of the result.
Requirements
MATLAB or GNU Octave installed.
License
This project is open-source and free to use for educational purposes.
