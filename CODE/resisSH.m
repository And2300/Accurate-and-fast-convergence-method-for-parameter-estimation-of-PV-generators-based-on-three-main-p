function [Rsh0]=resisSH(V_MP,I_MP,V_OC,I_SC,V_th,n0,Rs0)
	Rsh0=(((V_MP - I_MP*Rs0)*V_MP - n0*V_th*V_MP)/(((V_MP - I_MP*Rs0)*(I_SC - I_MP)-n0*V_th*I_MP)))-Rs0;

end