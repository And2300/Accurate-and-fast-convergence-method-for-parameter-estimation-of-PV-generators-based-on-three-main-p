function [r] = mynewton(f,a,n,err)
	syms x;
	z = f(x);
	diffZ = diff(z); %// derivada
	y = a; %// raíz inicial
	k=0;
		while (k<n)  
	    	numZ = subs(z,x,y); %// Numerator - Sustituye f(x) por f(y)
	    	denZ = subs(diffZ,x,y); %// Denominator - Susyituye f'(x) por f'(y)
	    	y1 = y - double(numZ)/double(denZ); %// actualiza y
				
				if (abs(y1-y)<err)
					break
				else
					k=k+1;
					y=y1;
				end
		end
	r = y; %// salida
end