function [Rshk]=resisSKH(V_MP,I_MP,V_OC,I_SC,V_th,Rsk,nk)
	Rshk=(((V_MP - I_MP*Rsk)*V_MP - nk*V_th*V_MP)/((V_MP - I_MP*Rsk)*(I_SC - I_MP)-nk*V_th*I_MP))-Rsk;

end