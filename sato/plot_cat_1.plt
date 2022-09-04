set term pngcairo font "Arial,14" 
set colorsequence classic 
# 
data = "sample_1_cat_1per.dat" 
set output "sample_1_cat_1per.png "
#
set size square
#
set key left

set xlabel "freq."
set ylabel "tan {/Symbol d}"

set y2range [1e-1:1e1]
set y2tics
set logscale xyy2

set format x "10^{%L}" 
set format y "10^{%L}"
set format y2 "10^{%L}"

set yrange [1e1:]
set y2range [1e-2:1e1]
#
plot data u 1:2 w l lt 2 ti "G'", \
data u 1:3 w l lt 3 ti 'G"', \
data u 1:4 w l axis x1y2 lt 1 ti 'tan {/Symbol d}'