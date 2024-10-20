% Muller Method for Root Finding
x0 = 4.5;
x1 = 5.5;
x2 = 5;
Ea = 0.03; % Approximate error tolerance
k = 0; % Iteration counter
h = 1; % Initial error

while h > Ea
    % Function values
    fx0 = x0^3 - 13*x0 - 12;
    fx1 = x1^3 - 13*x1 - 12;
    fx2 = x2^3 - 13*x2 - 12;

    % Differences
    h0 = x1 - x0;
    h1 = x2 - x1;

    % Derivatives
    d0 = (fx1 - fx0) / h0;
    d1 = (fx2 - fx1) / h1;

    % Coefficients for the quadratic formula
    a = (d1 - d0) / (h1 + h0);
    b = d1 + a*h1;
    c = fx2;

    % Discriminant calculation
    dis1 = abs(b + sqrt(b^2 - 4*a*c));
    dis2 = abs(b - sqrt(b^2 - 4*a*c));

    if dis1 > dis2
        dis = dis1;
    else
        dis = dis2;
    end

    % New approximation for the root
    x3 = x2 + (-2*c) / dis;
    
    % Calculate relative error
    h = abs((x3 - x2) / x3) * 100;

    % Update values for next iteration
    x0 = x1;
    x1 = x2;
    x2 = x3;
    k = k + 1;
end

% Display final root and number of iterations
x2
k
