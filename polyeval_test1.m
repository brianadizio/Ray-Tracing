% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

a=[-0.125 0.15 0.5 -2];
a = fliplr(a)
yest = polyeval(a,1)

a=[-0.125 0.15 0.5 -2];
y = sum(a.*(1.^((size(a,2)-1):-1:0)))