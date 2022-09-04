#!/gnuplot
#

set term pdfcairo enhanced font "Arial, 16"
#set term wxt enhanced

#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2

#####
set output "FE_derivatives_arrow.pdf"
##
set xlabel "{/Symbol f}"
set ylabel "Free Energy and derivatives"
#set y2label "Chemical Potential"
#
set xtics 0.5
set ytics 1
set y2tics 2

set xzeroaxis lt -1

set xrange [0:1]
set yrange [-0.012:0.007]
set y2range [-0.24:0.14]

set arrow 1 from 0.071,-0.008 to 0.071,0
set arrow 2 from 0.21,-0.006 to 0.21,0
set arrow 3 from 0.79,-0.0035 to 0.79,0
set arrow 4 from 0.929,-0.0035 to 0.929,0

set label "binodal_1" at 0.026,-0.0087
set label "spinodal_1" at 0.12,-0.0067
set label "bin_2" at 0.9,-0.0043
set label "spin_2" at 0.75,-0.0043
set label "N_A=N_B=10,{/Symbol c}=0.3" at 0.7,-0.0068
#
#set key spacing 1.2
set key at 0.95,-0.0075
#
# Chi = 0.3, N = 10
#
plot x*log(x)/10 + (1-x)*log(1-x)/10 + 0.3*x*(1-x) w li axis x1y1 lt 1 lw 2 lc 1 ti "Fr. Engy." \
, log(x)/10 - log(1-x)/10 + 0.3*(1-2*x) axis x1y2 lt 1 lw 2 lc 2 ti "(FE)'" \
, 1/(x*(1-x))/10 - 2*0.3 axis x1y2 lt 1 lw 2 lc 3 ti "{(FE)''}"

#
set output
reset
set term wxt enhanced

