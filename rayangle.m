% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function angle=rayangle(x_,y_,p,x)
% Compute angle of incidence or reflection
%
% Input: 
%     x_ = location of source or camera (2x1)
%     y_
%     p = polynomial coefficients (nx1) 
%     x = initial point in physical sitiation (1x1)

% Output: 
%     angle = angle of incidence/reflection (1x1, radians)

% fliplr USE LATER BEFORE PROF ROBS UNIT TEST

px = polyeval(p,x);
% px = polynomial evaluated at x
ppx = polyeval(polyderiv(p),x);
% ppx = first derivative of polynomial evaluated at x
    
v = ([x_, y_] - [x, px]);
n = [-ppx,1];

angle = acos(dot(v,n)/(norm(v)*norm(n)));

