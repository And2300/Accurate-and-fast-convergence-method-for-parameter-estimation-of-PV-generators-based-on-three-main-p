function graficar(I_SC,Rsk,Rshk,V_OC,nk,V_th,V_MP,I_MP,err)
	Il=(I_SC*(Rsk+Rshk))/(Rshk);
	I0=((I_SC*(Rsk+Rshk)-V_OC)/Rshk)*exp(-V_OC/(nk*V_th));
	
	%fun=@(Ia) Ia-Il+I0*(exp((Va+Ia*Rsk)/(nk*V_th))-1)+(Va+Ia*Rsk)/(Rshk);
	[V,If] = NRIV(V_OC,Il,I0,nk,V_th,Rsk,Rshk,err);

	plot(V,If)
	title('Curva I vs V')
	xlabel('Voltaje (V)')
	ylabel('Corriente (A)')
	grid on
	hold on

end

