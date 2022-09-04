#!/gnuplot

set term pdfcairo enhanced font "Arial, 16"
#
set log y
#
set xrange [0:10]
set yrange [1e-7:1e-2]
#
set xtics 2
set format y "10^{%L}"
#
set xlabel "{/=20 x (position)}"
set ylabel "{/=20 d{/Symbol f}/dx}"
#
set key at 3.1,0.004
#
set label "N_A=10, N_B=20" at 0.2, 0.0055
#
# 出力ファイル名の指定
set output "Asym_phi_der_1.pdf"
#
plot "phi_asym_NA10.dat" ind 0:0 usi 1:4 w li lt 1 lw 2 lc 1 ti "{/Symbol c} = 0.16", \
"phi_asym_NA10.dat" ind 3:3 usi 1:4 w li lt 1 lw 2 lc 2 ti "{/Symbol c} = 0.20", \
"phi_asym_NA10.dat" ind 1:1 usi 1:4 w li lt 1 lw 2 lc 3 ti "{/Symbol c} = 0.24", \
"phi_asym_NA10.dat" ind 2:2 usi 1:4 w li lt 1 lw 2 lc 4 ti "{/Symbol c} = 0.28"
#
set output
reset
set term wxt enhanced

#
#
set term pdfcairo enhanced font "Arial, 16"
#
set log y
#
set xrange [30:40]
set yrange [1e-7:1e-2]
#
set xtics 2
set format y "10^{%L}"
#
set xlabel "{/=20 x (position)}"
set ylabel "{/=20 d{/Symbol f}/dx}"
#
set key at 33.1, 0.004
#
set label "N_A=10, N_B=20" at 30.2, 0.0055
#
# 出力ファイル名の指定
set output "Asym_phi_der_2.pdf"
#
plot "phi_asym_NA10.dat" ind 0:0 usi 1:4 w li lt 1 lw 2 lc 1 ti "{/Symbol c} = 0.16", \
"phi_asym_NA10.dat" ind 3:3 usi 1:4 w li lt 1 lw 2 lc 2 ti "{/Symbol c} = 0.20", \
"phi_asym_NA10.dat" ind 1:1 usi 1:4 w li lt 1 lw 2 lc 3 ti "{/Symbol c} = 0.24", \
"phi_asym_NA10.dat" ind 2:2 usi 1:4 w li lt 1 lw 2 lc 4 ti "{/Symbol c} = 0.28"
#
set output
reset
set term wxt enhanced