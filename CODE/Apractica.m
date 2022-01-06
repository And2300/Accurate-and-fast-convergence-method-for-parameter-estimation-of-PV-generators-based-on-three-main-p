function [nk,Rsk,Rshk,MaxIt] = Apractica(V_MP,I_MP,V_OC,I_SC,T,numcel,err)	
	%Primero hallamos el voltaje térmico
	[V_th]=volter(T,numcel); %T en kelvin

	%luego el n0
	[nG0]=factoridealG(V_MP,I_MP,V_OC,I_SC,V_th);
	[nS0]=factoridealS(V_MP,V_OC,V_th);
	[nP0]=factoridealP(V_MP,I_MP,V_OC,I_SC,V_th);
	[n0]=factorideal0(nG0,nS0,nP0);

	%Hallamos Rs0 y Rsh0
	[Rs0]=resisS(V_MP,I_MP,V_OC,I_SC,V_th,n0);
	[Rsh0]=resisSH(V_MP,I_MP,V_OC,I_SC,V_th,n0,Rs0);

	%valores de inicialización
	Rs1=0;
	k=0;

	while(abs(Rs1-Rs0)>err) %condición de bucle
		%Hallamos nk
		[nG1]=factoridealG1(V_MP,I_MP,V_OC,I_SC,V_th,Rs0,Rsh0);
		[nP1]=factoridealP1(V_MP,I_MP,V_OC,I_SC,V_th,Rs0);
		[alpha0]=factor_alpha(V_MP,I_MP,V_th,n0,Rs0);
		[beta0]=factor_beta(V_MP,V_OC,I_SC,V_th,Rs0,Rsh0);
		[nS1]=factoridealS1(V_MP,V_OC,V_th,alpha0,beta0);
		[nk]=factorideal1(nG1,nS1,nP1);

		%Hallamos Rsk
		[alpha1]=factor_alpha(V_MP,I_MP,V_th,nk,Rs0);
		[Rsk]=resisSK(V_MP,V_OC,I_MP,nk,V_th,alpha1,beta0);

		%Hallamos Rshk
		[Rshk]=resisSKH(V_MP,I_MP,V_OC,I_SC,V_th,Rsk,nk);

		%restituimos valores para el bucle
		Rs1=Rs0;
		Rs0=Rsk;
		Rsh0=Rshk;
		n0=nk;
		k=k+1;
	end

	MaxIt=k;
	graficar(I_SC,Rsk,Rshk,V_OC,nk,V_th,V_MP,I_MP,err)
end