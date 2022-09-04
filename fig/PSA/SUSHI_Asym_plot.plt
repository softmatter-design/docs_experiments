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
set key at 39.5,0.6
#
set label "N_A=10, N_B=20" at 28,0.65
#
set output "Asym_A10_1.pdf"
#
# N_A=10, N_B=20
#
plot "phi_asym_NA10.dat" ind 0:0 usi 1:2 w l lt 1 lw 2 lc 1 ti "{/Symbol c} = 0.16", \
	"phi_asym_NA10.dat" ind 0:0 usi 1:3 w l lt 2 lw 2 lc 1 noti, \
	"phi_asym_NA10.dat" ind 1:1 usi 1:2 w l lt 1 lw 2 lc 2 ti "{/Symbol c} = 0.24", \
	"phi_asym_NA10.dat" ind 1:1 usi 1:3 w l lt 2 lw 2 lc 2 noti, \
	"phi_asym_NA10.dat" ind 4:4 usi 1:2 w l lt 1 lw 2 lc 3 ti "{/Symbol c} = 0.32", \
	"phi_asym_NA10.dat" ind 4:4 usi 1:3 w l lt 2 lw 2 lc 3 noti
#
# All Data
#
#plot "phi_asym_NA10.dat" ind 0:0 usi 1:2 w l lt 1 lw 2 lc 1 ti "N_A=10, N_B=20,{/Symbol c} = 0.16", \
#	"phi_asym_NA10.dat" ind 0:0 usi 1:3 w l lt 1 lw 2 lc 1 noti, \
#	"phi_asym_NA10.dat" ind 3:3 usi 1:2 w l lt 1 lw 2 lc 2 ti "N_A=10, N_B=20,{/Symbol c} = 0.20", \
#	"phi_asym_NA10.dat" ind 3:3 usi 1:3 w l lt 1 lw 2 lc 2 noti, \
#	"phi_asym_NA10.dat" ind 1:1 usi 1:2 w l lt 1 lw 2 lc 3 ti "N_A=10, N_B=20,{/Symbol c} = 0.24", \
#	"phi_asym_NA10.dat" ind 1:1 usi 1:3 w l lt 1 lw 2 lc 3 noti, \
#	"phi_asym_NA10.dat" ind 2:2 usi 1:2 w l lt 1 lw 2 lc 4 ti "N_A=10, N_B=20,{/Symbol c} = 0.28", \
#	"phi_asym_NA10.dat" ind 2:2 usi 1:3 w l lt 1 lw 2 lc 4 noti, \
#	"phi_asym_NA10.dat" ind 5:5 usi 1:2 w l lt 1 lw 2 lc 5 ti "N_A=10, N_B=20,{/Symbol c} = 0.30", \
#	"phi_asym_NA10.dat" ind 5:5 usi 1:3 w l lt 1 lw 2 lc 5 noti, \
#	"phi_asym_NA10.dat" ind 4:4 usi 1:2 w l lt 1 lw 2 lc 6 ti "N_A=10, N_B=20,{/Symbol c} = 0.32", \
#	"phi_asym_NA10.dat" ind 4:4 usi 1:3 w l lt 1 lw 2 lc 6 noti
#
set output
reset
set term wxt enhanced
#
#
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
set key at 15,0.6
#
set label "N_A=10, N_B=50" at 3,0.67
#
set output "Asym_A10_2.pdf"
#
# N_A=10, N_B=50
#
plot "phi_asym_NA10.dat" ind 6:6 usi 1:2 w l lt 1 lw 2 lc 1 ti "{/Symbol c} = 0.12", \
	"phi_asym_NA10.dat" ind 6:6 usi 1:3 w l lt 2 lw 2 lc 1 noti, \
	"phi_asym_NA10.dat" ind 8:8 usi 1:2 w l lt 1 lw 2 lc 2 ti "{/Symbol c} = 0.16", \
	"phi_asym_NA10.dat" ind 8:8 usi 1:3 w l lt 2 lw 2 lc 2 noti, \
	"phi_asym_NA10.dat" ind 9:9 usi 1:2 w l lt 1 lw 2 lc 3 ti "{/Symbol c} = 0.20", \
	"phi_asym_NA10.dat" ind 9:9 usi 1:3 w l lt 2 lw 2 lc 3 noti
#
#	"phi_asym_NA10.dat" ind 7:7 usi 1:2 w l lt 1 lw 2 lc 4 ti "{/Symbol c} = 0.15", \
#	"phi_asym_NA10.dat" ind 7:7 usi 1:3 w l lt 2 lw 2 lc 4 noti, \
#
set output
reset
set term wxt enhanced
