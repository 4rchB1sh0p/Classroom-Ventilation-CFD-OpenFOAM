#!/usr/bin/gnuplot

set logscale y
set title "Residuals"
set xlabel 'Iteration'
set ylabel 'Residual'

set grid

# --- deactivate the next 2 lines to follow residuals on the screen --------------------- #
set term pngcairo size 1000,600 font 'Times,14'
set output 'residuals-plot.png'
# --------------------------------------------------------------------------------------- #

plot "< cat ./log.buoyantSimpleFoam | grep 'Solving for Ux' | cut -d' ' -f9 | tr -d ','" title 'Ux' with lines,\
     "< cat ./log.buoyantSimpleFoam | grep 'Solving for Uy' | cut -d' ' -f9 | tr -d ','" title 'Uy' with lines,\
     "< cat ./log.buoyantSimpleFoam | grep 'Solving for Uz' | cut -d' ' -f9 | tr -d ','" title 'Uz' with lines,\
     "< cat ./log.buoyantSimpleFoam | grep 'Solving for p_rgh' | cut -d' ' -f9 | tr -d ','" title 'p\_rgh' with lines,\
	 "< cat ./log.buoyantSimpleFoam | grep 'Solving for p' | cut -d' ' -f9 | tr -d ','" title 'p' with lines,\
     "< cat ./log.buoyantSimpleFoam | grep 'Solving for T' | cut -d' ' -f9 | tr -d ','" title 'T' with lines,\
     "< cat ./log.buoyantSimpleFoam | grep 'Solving for k' | cut -d' ' -f9 | tr -d ','" title 'k' with lines,\
     "< cat ./log.buoyantSimpleFoam | grep 'Solving for epsilon' | cut -d' ' -f9 | tr -d ','" title 'epsilon' with lines

#pause 10
#reread
