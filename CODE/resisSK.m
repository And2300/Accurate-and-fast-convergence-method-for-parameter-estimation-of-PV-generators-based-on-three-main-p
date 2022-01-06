function [Rsk]=resisSK(V_MP,V_OC,I_MP,nk,V_th,alpha1,beta0)
	Rsk=(1/I_MP)*(V_OC - V_MP - nk*V_th*log(alpha1*beta0));

end