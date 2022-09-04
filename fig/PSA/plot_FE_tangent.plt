#!/gnuplot

set term pdfcairo enhanced font "Arial, 16"
#set term postscript eps enhanced color "Arial" 25
#set term wxt enhanced

#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2
#
set xrange [0:1]
set yrange [-0.015:0.008]

set xtics 0.5
set ytics 0.01

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 Free Energy}"
#

# �o�̓t�@�C�����̎w��
set output "FE_tan_A10B10Chi0_3.pdf"

set key at first 0.98, first -0.0095
set key spacing 1.2
set label "N_A=N_B=10, {/Symbol c} = 0.3" at 0.65,0.007
set label "bin_1=0.071" at 0.07, -0.008
set label "bin_2=0.929" at 0.8, -0.008

plot "FE_tan_A10B10Chi0_3.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "f_{mix}", \
 1.11577413975e-14  * x +  -0.00583413494415 w li ls 1 lt 1 lw 2 lc 2 ti "tangent line"

# �t�H�[�}�b�g�Əo�͂̃��Z�b�g
set output
reset
set terminal wxt enhanced

########
#
set term pdfcairo enhanced font "Arial, 16"

#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2
#
set xrange [0:1]
set yrange [-0.012:0.0]

set xtics 0.5
set ytics 0.01

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 Free Energy}"
#

# �o�̓t�@�C�����̎w��
set output "FE_tan_A10B20Chi0_2.pdf"

set key at first 0.95, first -0.0088
set key spacing 1.2
set label "N_A=10, N_B=20, {/Symbol c} = 0.2" at 0.55,-0.008
set label "bin_1=0.151" at 0.15, -0.0106
set label "bin_2=0.940" at 0.8, -0.004

plot "FE_tan_A10B20Chi0_2.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "f_{mix}", \
0.00871825924627  * x +  -0.0111717348781 w li ls 1 lt 1 lw 2 lc 2 ti "tangent line"

# �t�H�[�}�b�g�Əo�͂̃��Z�b�g
set output
reset
set terminal wxt enhanced

########
#
set term pdfcairo enhanced font "Arial, 16"

#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2
#
set xrange [0:1]
set yrange [-0.01:0.03]

set xtics 0.5
set ytics 0.01

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 Free Energy}"
#

# �o�̓t�@�C�����̎w��
set output "FE_tan_A10B20Chi0_3.pdf"

set key at first 0.98, first 0.029
set key spacing 1.2
set label "N_A=10, N_B=20, {/Symbol c} = 0.3" at 0.04,0.027
set label "bin_1=0.038" at 0.04, -0.007
set label "bin_2=0.993" at 0.8, -0.005

plot "FE_tan_A10B20Chi0_3.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "f_{mix}", \
0.00311460902258 * x +  -0.00344186976834 w li ls 1 lt 1 lw 2 lc 2 ti "tangent line"

# �t�H�[�}�b�g�Əo�͂̃��Z�b�g
set output
reset
set terminal wxt enhanced

########
#
set term pdfcairo enhanced font "Arial, 16"

#
set xrange [0:1]
set yrange [-0.02:0]

#set xtics 0.5
#set ytics 0.01

set xlabel "{/=20 {/Symbol f}}"
set ylabel "{/=20 Free Energy}"
#

# �o�̓t�@�C�����̎w��
set output "FE_tan_A10B50Chi0_12.pdf"




set key at first 0.98, first -0.014
set key spacing 1.2
set label "N_A=10, N_B=50, {/Symbol c} = 0.12" at 0.1,-0.008
set label "bin_1=0.376" at 0.37, -0.015
set label "bin_2=0.920" at 0.7, -0.003



plot "FE_tan_A10B50Chi0_12.dat" usi 1:2 w li ls 1 lt 1 lw 2 lc 1 ti "f_{mix}", \
0.021377798156  * x +  -0.0225478481649 w li ls 1 lt 1 lw 2 lc 2 ti "tangent line"

# �t�H�[�}�b�g�Əo�͂̃��Z�b�g
set output
reset
set terminal wxt enhanced
