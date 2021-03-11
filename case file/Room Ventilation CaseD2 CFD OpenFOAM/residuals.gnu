set logscale y
set term png size 1000,600
set output 'Forces.png'
plot 'logs/Ux_0' w l, 'logs/Uy_0' w l, 'logs/Uz_0' w l, 'logs/p_rgh_0' w l, 	
	'logs/k_0' w l, 'logs/epsilon_0' w l

