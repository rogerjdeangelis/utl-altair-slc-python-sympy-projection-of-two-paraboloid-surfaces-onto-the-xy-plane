%let pgm=utl-altair-slc-python-sympy-projection-of-two-paraboloid-surfaces-onto-the-xy-plane;

%stop_submission;

Altair slc python sympy projection of two paraboloid surfaces onto the xy plane

too log to post on a listserve, see github
https://github.com/rogerjdeangelis/utl-altair-slc-python-sympy-projection-of-two-paraboloid-surfaces-onto-the-xy-plane

Show that the intersection of these two surfaces is a circle in the xy plane

z1 = 2*x**2 + 3*y**2
z2 = 5 - 3*x**2 - 2*y**2

We will show that the projection of the intersection of these two paraboliods is a circle AI
in the xy plane. This is a very simple example of a general technique.

pyhton macros
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

related github
https://github.com/rogerjdeangelis/utl-python-sympy-projection-of-the-intersection-of-two-parabolic-surfaces-onto-the-xy-plane-AI

see
https://stackoverflow.com/questions/45130525/find-the-equation-y-yx-from-the-intersection-of-two-surfaces-z-zx-y
https://stackoverflow.com/users/6655984/alex


MANUAL ALGEBRAIC SOLUTION
=========================

The solution can be manually derived algebraically

   Where does z1=z2

   z1 = 2*x**2 + 3*y**2
   z2 = 5 - 3*x**2 - 2*y**2

   2*x**2 + 3*y**2 = 5 - 3*x**2 - 2*y**2

   Add 3*x**2 + 2*y**2 to both sides

   5*x**2 + 5*y**2 = 5

   Divide both sides by 5

   x**2 + y**2 =1  (unit circle)


Python Sympy Solution
======================

/*--- SEE LINK ABOVE FOR MACROS ---*/
%utl_slc_pybeginx(
   return=                 /*-  return date            -*/
  ,resolve=                /*- resolve macros in python-*/
  );
cards4;
import sympy as sym;
x, y = sym.symbols('x y', real=True);
z1 = 2*x**2 + 3*y**2;
z2 = 5 - 3*x**2 - 2*y**2;
sol = sym.solve(z1-z2, y);
print(str(sol));
pyperclip.copy(str(sol))  # create slc macro variable with the solution
;;;;
%utl_slc_pyendx;

%put &=sol;

OUTPUT
======

%put &=sol; /*-- back to slc from python ---*/
sol=[-sqrt(1 - x**2), sqrt(1 - x**2)]

Pyhton print(sol)
[-sqrt(1 - x**2), sqrt(1 - x**2)]

This provides two solutions, however they both lead to the unit circle

Y = -sqrt(1 - x**2)
Y =  sqrt(1 - x**2)

Squaring both of thes solutions yeilds two fors of the same solution.
just sqare both side

y**2  = 1 - X**2
or

1= = x**2 + y**2

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
