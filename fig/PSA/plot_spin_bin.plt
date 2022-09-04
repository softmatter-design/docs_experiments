#!/gnuplot

set term pdfcairo enhanced font "Arial, 16"

#
set xrange [0:1]
set yrange [0.0:0.5]

set xtics 0.5
set ytics 0.1

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 {/Symbol c}}"
#
set output "spi_bin_A10B20.pdf"
#
set arrow 1 from 0.5858,0.25 to 0.5858,0.1457
#
set key at first 0.4, first 0.15
set key spacing 1.5
set label "Crt. Pt." at 0.58,0.38
set label "{/Symbol f}_{crt} = 0.5858" at 0.58,0.34
set label "{/Symbol c}_{crt} = 0.1457" at 0.58,0.3
set label "N_A=10, N_B=20" at 0.6,0.1
#
plot "spi_bin_A10B20.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "Spinodal line", \
"spi_bin_A10B20.dat" usi 3:4 w li ls 1 lt 1 lw 2 lc 2 ti "Binodal line"
# フォーマットと出力のリセット
set output
reset
set terminal wxt enhanced
###########
set term pdfcairo enhanced font "Arial, 16"

#
set xrange [0:1]
set yrange [0.0:0.4]

set xtics 0.5
set ytics 0.1

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 {/Symbol c}}"
#
set output "spi_bin_A10B30.pdf"
#
set arrow 1 from 0.63397,0.2 to 0.63397,0.1244
#
set key at first 0.4, first 0.1
set key spacing 1.5
set label "Crt. Pt." at 0.62,0.3
set label "{/Symbol f}_{crt} = 0.6340" at 0.62,0.26
set label "{/Symbol c}_{crt} = 0.1244" at 0.62,0.22
set label "N_A=10, N_B=30" at 0.05,0.12
#
plot "spi_bin_A10B30.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "Spinodal line", \
"spi_bin_A10B30.dat" usi 3:4 w li ls 1 lt 1 lw 2 lc 2 ti "Binodal line"
# フォーマットと出力のリセット
set output
reset
set terminal wxt enhanced
###########
set term pdfcairo enhanced font "Arial, 16"
#
set xrange [0:1]
set yrange [0.0:0.4]

set xtics 0.5
set ytics 0.1

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 {/Symbol c}}"
#
set output "spi_bin_A10B50.pdf"
#
set arrow 1 from 0.691,0.2 to 0.691,0.1047
#
set key at first 0.4, first 0.08
set key spacing 1.5
set label "Crt. Pt." at 0.68,0.3
set label "{/Symbol f}_{crt} = 0.6910" at 0.68,0.26
set label "{/Symbol c}_{crt} = 0.1047" at 0.68,0.22
set label "N_A=10, N_B=50" at 0.05,0.1
#
plot "spi_bin_A10B50.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "Spinodal line", \
"spi_bin_A10B50.dat" usi 3:4 w li ls 1 lt 1 lw 2 lc 2 ti "Binodal line"
# フォーマットと出力のリセット
set output
reset
set terminal wxt enhanced
###########
set term pdfcairo enhanced font "Arial, 16"
#
set xrange [0:1]
set yrange [0.0:20]

set xtics 0.5
set ytics 2

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 {/Symbol c}{/Arial-Italic N}"
#
set output "Sym_spin_bin.pdf"
#
set arrow 1 from 0.5,5 to 0.5,2
#
set key at first 0.98, first 17
set key spacing 1.5
set label "Crt. Pt." at 0.5,10
set label "{/Symbol f}_{crt} = 0.5" at 0.5,8
set label "{/Symbol c}{/Arial-Italic N}_{crt} = 2" at 0.5,6
set label "N_A = N_B" at 0.6,18
#
plot "Sym_spin_bin.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "Spinodal line", \
"Sym_spin_bin.dat" usi 1:3 w li ls 1 lt 1 lw 2 lc 2 ti "Binodal line"
# フォーマットと出力のリセット
set output
reset
set terminal wxt enhanced
