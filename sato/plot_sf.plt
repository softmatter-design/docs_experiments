set term pngcairo font "Arial,12" size 480, 480
set colorsequence classic 
# 
data = "sample_1_at.dat" 
set output "sample_1_at_lin.png "
#
set size square
#
set key left

set xlabel "1/T (10^{-3} K^{-1})"
set ylabel "a_T"

set logscale y
set format y "10^{%L}"

s=2.2
e=2.75
a=1
b=1
lin(x) = a*exp(b*x/8.314)
fit [s:e] lin(x) data via a,b

set label 1 "Aexp(Ea/RT)" at graph 0.2, 0.6
set label 2 sprintf("Ea= %.1e", b) at graph 0.2, 0.5
set label 3 sprintf("region: from %.2f to %.2f", s, e) at graph 0.2, 0.4
#
plot data w l lt 1 noti, \
[s:e] lin(x) noti

reset

set term pngcairo font "Arial,12" 
set colorsequence classic 
# 
data = "sample_1_at_2.dat" 
set output "sample_1_at_vogel.png "
#
set size square
#
set key left

set xlabel "K"
set ylabel "a_T"

set logscale y
set format y "10^{%L}"

set xtics 50

s1=280
e1=350
c=3000
Tv=200
Tr=403
vogel(x) = c*(1/(x-Tv) -1/(Tr-Tv))
fit [s1:e1] vogel(x) data u 1:(log($2)) via c, Tv

set label 1 "ln a_T=(Ea/R)(1/(x-Tv) -1/(Tr-Tv))\nTr=403 K" at graph 0.1, 0.5
set label 3 sprintf("Ea=%.1e kJ/mol", c*8.14/1000) at graph 0.1, 0.3
set label 2 sprintf("T_{vogel} = %d K", Tv) at graph 0.1, 0.2


plot data w l lt 1 noti, \
[s1:e1] exp(vogel(x)) noti