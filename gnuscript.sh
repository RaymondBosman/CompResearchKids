#!/usr/bin/gnuplot

#enter your:
#     datafile  columns    label in key
plot 'data.dat' u 1:2 title 'Data'

#OPTIONS (add whatever you like here, google for more options)
set title 'Graph Title' 
set xlabel 'x-axis'
set ylabel 'y-axis'
set key left top #other options are (left centre right)(top centre bottom)
set xrange [-10:10]
set yrange [-10:10]

replot #saves your options to the screen

#can set term to png jpg or pdf
set term png

#dont forget to change ouput file name if you dont want to overwirte
set output 'data.png'
replot #plots your graph to the file

pause -1 #pauses so that you can see the output
