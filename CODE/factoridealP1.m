function [nP1]=factoridealP1(V_MP,I_MP,V_OC,I_SC,V_th,Rs0)
	nP1=((I_SC- I_MP)*(V_MP - I_MP*Rs0))/(V_th*I_SC);

end