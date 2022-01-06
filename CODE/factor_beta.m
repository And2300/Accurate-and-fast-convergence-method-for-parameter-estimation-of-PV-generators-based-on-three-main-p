function [beta0]=factor_beta(V_MP,V_OC,I_SC,V_th,Rs0,Rsh0)
	beta0=(I_SC*(Rs0+Rsh0)-V_OC)/(I_SC*(Rs0+Rsh0)-2*V_MP);

end