function [nG0]=factoridealG(V_MP,I_MP,V_OC,I_SC,V_th)
	nG0=(V_OC-V_MP-V_th)/(V_th*log(I_SC/(I_SC-I_MP)));

end