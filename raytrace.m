% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function [x,y] = raytrace(x_s,y_s,x_c,y_c,a,x_guess)
% Compute reflection location on polynomially-curved mirror
%
%
% Input:
%   x_s,y_s = is the location of the source
%   x_c,y_c = is the location of the camera
%   p       = is a vector of length N (1xN matrix), 3
%             listing the an N-1 degree polynomial mirror
%   x_guess = is the initial guess for a reflection point
% Output:
%   x,y = is the location where angle of incidence == reflection

tol = 0.01;
N = 100;
p0 = x_guess+1;
a=fliplr(a);

for i=2
    q0 = rayangle(x_c,y_c,a,p0)-rayangle(x_s,y_s,a,p0);
    q1 = rayangle(x_c,y_c,a,x_guess)-rayangle(x_s,y_s,a,x_guess);
    while i<=N
          x = x_guess-q1*(x_guess-p0)/(q1-q0);
          y=polyeval(a,x);
         if abs(x-x_guess)<tol
            return 
         end
          i=i+1;
          p0=x_guess;
          q0=q1;
          x_guess=x;
          q1=rayangle(x_c,y_c,a,x)-rayangle(x_s,y_s,a,x);
    end
x = 'The method failed after N interations, where N=100, and the procedure was unsuccessful.'
end   