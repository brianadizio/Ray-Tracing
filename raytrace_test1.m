% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

x_s = -1;
y_s = 1;
x_c = 1;
y_c = 1;
a = [-1];
x_guess = 2;

[x,y] = raytrace(x_s,y_s,x_c,y_c,a,x_guess)

% Output should be [0, -1].

