% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

p = [1, 0, -1]
p0 = 0
p1 = 2
tol = 0.001
N = 100
q0 = polyeval(p,p0)
q1 = polyeval(p,p1)
x = secantmethod(p,p0,p1,tol,N)

% roots should be at x=-1 or x=1 depending on the two initial
% approximations.