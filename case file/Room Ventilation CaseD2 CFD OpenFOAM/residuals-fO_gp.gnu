#!/usr/bin/gnuplot

# --------------------------------------------------------------------------------------- #
# plottinmg residuals generated suing functionObject residuals --- ubuntu version         #
# foamMonitor replaced by gnuplot itself                                                  #
# --------------------------------------------------------------------------------------- #

set logscale y
set title "Residuals"
set xlabel 'Iteration'
set ylabel 'Residual'
set key autotitle columnheader

set grid

# --------------------------------------------------------------------------------------- #
# -- deactivate the next 2 lines to follow residuals on the screen ---------------------- #
set term pngcairo size 1000,600 font 'Times,14'
set output 'residuals-batch.png'
# --------------------------------------------------------------------------------------- #
# -- sed used to modify residuals file that gnuplot with columnheaders option can be used #
# --------------------------------------------------------------------------------------- #
system( "(sed '/Residuals/d;s/#//g'  ./postProcessing/residuals/0/residuals.dat > residualsmod.dat )")
# --------------------------------------------------------------------------------------- #
# -- adjust number of cols dependeing on the variables used
# --------------------------------------------------------------------------------------- #
plot for[col=2:6] 'residualsmod.dat' using 1:col with lines

# pause 2
# reread
