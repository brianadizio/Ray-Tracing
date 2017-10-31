% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function x = secantmethod(p,p0,p1,tol,N)
% This function finds roots for a function p, given initial
% approximations p0 and p1.
%     INPUTS:
%        p0 = first initial approximation (1x1)
%        p1 = second initia approximation (1x1)
%        tol = threshold for which answer approximation 
%        is sufficient (scalar)
%        N = maximum number of iterations (scalar)
%     OUTPUTS:
%        x = approximate solution of polynomial p or
%        message of failure.

for i=2
    q0 = polyeval(p,p0);
    q1 = polyeval(p,p1);
    while i<=N
          x = p1-q1*(p1-p0)/(q1-q0);
         if abs(x-p1)<tol
            return 
         end
          i=i+1;
          p0=p1;
          q0=q1;
          p1=x;
          q1=polyeval(p,x);
    end
x = 'The method failed after N interations, where N=100, and the procedure was unsuccessful.'
end   