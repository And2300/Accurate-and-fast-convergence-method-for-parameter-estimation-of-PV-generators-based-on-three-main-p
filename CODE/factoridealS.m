function [nS0]=factoridealS(V_MP,V_OC,V_th)
	nS0=(V_OC-V_MP)/(V_th*log(V_MP/V_th));

end