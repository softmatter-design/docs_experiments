set term pngcairo font "Arial,14"

#set mono
set colorsequence classic

set output "peaks.png"

set size square
set xrange [0:100]
#set yrange [0.:]
#set xtics 0.5
#set ytics 0.01
set xlabel "{/Symbol l}"
set ylabel "Absorbance"

peak = 50
sigma = 2
b = 0.1
f(x) = exp(-1*(x-peak)**2/2/sigma**2)/(2*3.14*sigma**2)**0.5
g(x) = 1e-5*x**2 + b
h(x) = f(x) + g(x)

plot h(x) ti 'peak'

reset

set term pngcairo font "Arial,14"

#set mono
set colorsequence classic

set output "peaks_lc.png"

set size square
set xrange [0:100]
#set yrange [0.:]
#set xtics 0.5
#set ytics 0.01
set xlabel "{/Symbol l}"
set ylabel "A"

peak = 50
sigma = 2
b = 0.1
f(x) = exp(-1*(x-peak)**2/2/sigma**2)/(2*3.14*sigma**2)**0.5
g(x) = 1e-5*x**2 + b
h(x) = f(x) + g(x)

plot h(x) ti "peak", \
g(x) ti "baseline", \
f(x) ti 'original'

reset

set term pngcairo font "Arial,14"

#set mono
set colorsequence classic

set output "der_1.png"

set size square
set xrange [0:100]
#set yrange [0.:]
#set xtics 0.5
#set ytics 0.01
set xlabel "{/Symbol l}"
set ylabel "d/d{/Symbol l}"

p = 50
s = 2
df(x) = -1*(x-p)*exp(-1*(x-p)**2/2/s**2)/(2*3.14)**0.5/s**3
dg(x) = 2*1e-5*x
dh(x) = df(x) + dg(x)

plot df(x) ti 'df/d{/Symbol l}', \
dg(x) ti 'dg/d{/Symbol l}', \
dh(x) ti 'dA/d{/Symbol l}'

reset


set term pngcairo font "Arial,14"

#set mono
set colorsequence classic

set output "der_2.png"

set size square
set xrange [0:100]
#set yrange [0.:]
#set xtics 0.5
#set ytics 0.01
set xlabel "{/Symbol l}"
set ylabel "d^2/d{/Symbol l}^2"

p = 50
s = 2
d2f(x) = ((x-p)**2-s**2)*exp(-1*(x-p)**2/2/s**2)/(2*3.14)**0.5/s**5
d2g(x) = 2*1e-5
d2h(x) = d2f(x) + d2g(x)

plot d2f(x) ti 'd^2f/d^2{/Symbol l}', \
d2g(x) ti 'd^2g/d^2{/Symbol l}', \
d2h(x) ti 'd^2A/d^2{/Symbol l}'

reset

set term pngcairo font "Arial,14"

#set mono
set colorsequence classic

set output "peaks_multi.png"

set size square
set xrange [0:100]
#set yrange [0.:]
#set xtics 0.5
#set ytics 0.01
set xlabel "{/Symbol l}"
set ylabel "Absorbance"

peak = 50
sigma = 2
b = 0.1
f(x) = exp(-1*(x-peak)**2/2/sigma**2)/(2*3.14*sigma**2)**0.5
h1(x) = 0.2*f(x)
h2(x) = 0.5*f(x)

plot h1(x) noti, \
h2(x) noti, \
f(x) noti

reset

set term pngcairo font "Arial,14"

#set mono
set colorsequence classic

set output "der_2_multi.png"

set size square
set xrange [0:100]
#set yrange [0.:]
#set xtics 0.5
#set ytics 0.01
set xlabel "{/Symbol l}"
set ylabel "d^2/d{/Symbol l}^2"

p = 50
s = 2
d2f(x) = ((x-p)**2-s**2)*exp(-1*(x-p)**2/2/s**2)/(2*3.14)**0.5/s**5
d2g(x) = 2*1e-5
d2h(x) = d2f(x) + d2g(x)
d2h1(x) = 0.2*d2h(x)
d2h2(x) = 0.5*d2h(x)
plot d2h1(x) noti, \
d2h2(x) noti, \
d2h(x) noti

reset