function [Rs0]=resisS(V_MP,I_MP,V_OC,I_SC,V_th,n0)
	Rs0=(1/I_MP)*(V_OC - V_MP - n0*V_th*log(V_MP/(n0*V_th)));

end