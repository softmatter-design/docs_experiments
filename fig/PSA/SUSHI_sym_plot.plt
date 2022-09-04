#!/gnuplot

set term pdfcairo enhanced font "Arial, 16"
#
set xrange [0:40]
#
set xtics 10
set ytics 0.5
#
set xlabel "{/=20 {/Arial-Italic x} (position)}"
set ylabel "{/=20 {/Symbol f}}"
#
set key at 39.8,0.59
#
set label "N_A = N_B = 10" at 28,0.63
#
#
set output "sym_A10_1.pdf"

plot "phi_sym_N10.dat" ind 0:0 usi 1:2 w l lt 1 lw 2 lc 1 ti "{/Symbol c}N = 2.1", \
	"phi_sym_N10.dat" ind 0:0 usi 1:3 w l lt 2 lw 2 lc 1 noti, \
	"phi_sym_N10.dat" ind 1:1 usi 1:2 w l lt 1 lw 2 lc 2 ti "{/Symbol c}N = 2.3", \
	"phi_sym_N10.dat" ind 1:1 usi 1:3 w l lt 2 lw 2 lc 2 noti, \
	"phi_sym_N10.dat" ind 2:2 usi 1:2 w l lt 1 lw 2 lc 3 ti "{/Symbol c}N = 2.5", \
	"phi_sym_N10.dat" ind 2:2 usi 1:3 w l lt 2 lw 2 lc 3 noti, \
	"phi_sym_N10.dat" ind 3:3 usi 1:2 w l lt 1 lw 2 lc 4 ti "{/Symbol c}N = 3.0", \
	"phi_sym_N10.dat" ind 3:3 usi 1:3 w l lt 2 lw 2 lc 4 noti
#
set output
reset
set term wxt enhanced
#
#
set term pdfcairo enhanced font "Arial, 16"
#
set xrange [5:15]
#
set xtics 5
set ytics 0.5
#
set xlabel "{/=20 {/Arial-Italic x} (position)}"
set ylabel "{/=20 {/Symbol f}}"
#
set key at 14.5,0.8
#
set label "N_A = N_B = 10" at 12,0.85
#
set output "sym_A10_2.pdf"
#
plot "phi_sym_N10.dat" ind 4:4 usi 1:2 w l lt 1 lw 2 lc 1 ti "{/Symbol c}N = 4", \
	"phi_sym_N10.dat" ind 4:4 usi 1:3 w l lt 2 lw 2 lc 1 noti, \
	"phi_sym_N10.dat" ind 5:5 usi 1:2 w l lt 1 lw 2 lc 2 ti "{/Symbol c}N = 6", \
	"phi_sym_N10.dat" ind 5:5 usi 1:3 w l lt 2 lw 2 lc 2 noti, \
	"phi_sym_N10.dat" ind 6:6 usi 1:2 w l lt 1 lw 2 lc 3 ti "{/Symbol c}N = 8", \
	"phi_sym_N10.dat" ind 6:6 usi 1:3 w l lt 2 lw 2 lc 3 noti, \
	"phi_sym_N10.dat" ind 7:7 usi 1:2 w l lt 1 lw 2 lc 4 ti "{/Symbol c}N = 10", \
	"phi_sym_N10.dat" ind 7:7 usi 1:3 w l lt 2 lw 2 lc 4 noti
#
set output
reset
set term wxt enhanced
