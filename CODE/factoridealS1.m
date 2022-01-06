function [nS1]=factoridealS1(V_MP,V_OC,V_th,alpha0,beta0)
	nS1=(V_OC - V_MP)/(V_th*log(alpha0*beta0));

end