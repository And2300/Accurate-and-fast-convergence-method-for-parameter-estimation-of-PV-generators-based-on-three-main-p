function [nG1]=factoridealG1(V_MP,I_MP,V_OC,I_SC,V_th,Rs0,Rsh0)
	nG1=(V_OC - V_MP - I_MP*Rs0)/(V_th*log((I_SC*(Rs0+Rsh0)-V_OC)/((I_SC - I_MP)*(Rs0+Rsh0)-V_MP)));

end