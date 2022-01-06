function [V_th]=volter(T,numcel)
	k=1.3806e-23;
	q=1.6022e-19;
	V_th=numcel*k*T/q;  %esto debería ser

	%V_th=k*T/q; %esto dice el paper
end


%M. G. Villalva and J. R. Gazoli, ”Comprehensive approach to modeling and simulation of photovoltaic arrays,” Power Electronics, IEEE Trans- actions on, vol. 24, pp. 1198-1208, 2009.
