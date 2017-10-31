% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function px = polyeval(a,x)
% This function evaluates any polynomial at a point, x.
%   Inputs:
%        p = a polynomial (nx1)
%        x = a point in the domain of p
%   Output:
%        px = the sum of each term evaluated at x.


px=0;
% Self-made sum

for i=1:numel(a);
     px=px+(a(i))*(x.^(i-1));
end