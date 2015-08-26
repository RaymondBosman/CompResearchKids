#!/usr/bin/gnuplot

f(x) =  a*x + b
g(x) = c*x + d
h(x) = e*x + f

a=1
b=1
c=1
d=1
e=1
f=1

set fit quiet #stops the fitting procedure from clogging up the terminal
fit [1:] f(x) 'datahyd.dat' u 1:5 via a,b
fit [1:] g(x) 'datadeut.dat' u 1:5 via c,d
fit [1:] h(x) 'datatri.dat' u 1:5 via e,f

plot 	"datahyd.dat" u 1:5 title 'Hydrogen', \
	"datadeut.dat" u 1:($5+4000) title 'Deuterium', \
	"datatri.dat" u 1:($5+8000) title 'Tritium', \
	f(x) title 'Hyd - Best Fit', \
	g(x)+4000 title 'Deut - Best Fit', \
	h(x)+8000 title 'Tri - Best Fit'
#the +4000 and +8000 is to separate the data points so the look nice on the screen. could also be done with multiplot.
#OPTIONS (add whatever you like here, google for more options)
set title 'Varying mass of Hydrogen Trial' 
set xlabel 'steps'
set ylabel 'Total Energy'
set key top left
#set xrange [-10:10]
#set yrange [-10:15000]

replot #saves your options to the screen

#can set term to png jpg or pdf
set term png

#dont forget to change ouput file name if you dont want to overwirte
set output 'EnergyconsHiso.png'
replot #plots your graph to the file

pause -1 #pauses so that you can see the output
