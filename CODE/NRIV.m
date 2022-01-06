function [V,If] = NRIV(V_OC,Il,I0,nk,V_th,Rsk,Rshk,err)
	V=linspace(0,V_OC,100);
	n=length(V);
	I=zeros(1,n);
	for i=1:n
		Va=V(i);
		fun=@(Ia) Ia-Il+I0*(exp((Va+Ia*Rsk)/(nk*V_th))-1)+(Va+Ia*Rsk)/(Rshk);
		[ValNR]=mynewton(fun,I0,n,err);
		I(i)=ValNR;
	end
	If=I;
end