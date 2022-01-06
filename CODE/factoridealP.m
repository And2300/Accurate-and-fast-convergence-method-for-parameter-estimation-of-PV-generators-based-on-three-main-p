function [nP0]=factoridealP(V_MP,I_MP,V_OC,I_SC,V_th)
	nP0=(I_SC-I_MP)*(V_MP - V_th)/(I_SC*V_th);

end