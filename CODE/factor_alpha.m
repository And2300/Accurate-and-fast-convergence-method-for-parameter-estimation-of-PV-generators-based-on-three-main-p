function [alpha0]=factor_alpha(V_MP,I_MP,V_th,n0,Rs0)
	alpha0=(V_MP + n0*V_th -I_MP*Rs0)/(n0*V_th);

end