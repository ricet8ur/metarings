function J = MutIndIntegral(a ,b)
%   Takes double integral to get the inductance (formula 17)
%   b == height, a == horizontal distance
fun = @(x,y) cos(x-y)./(4.*pi.*sqrt(a.^2 + b.^2 + 2.*(1 - cos(x-y)) + ...
    2.*a.*(cos(y) - cos(x))));
J = integral2(fun, 0, 2.*pi, 0, 2.*pi);
end

