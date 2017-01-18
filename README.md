# Raman and Photoluminescence 2D Mapping

A short Matlab script for plotting maps of Raman/Photoluminecence peak values. 
Is suited for use with Nova Raman/Photoluminescence software.

Instructions:

1. Open Raman/Photoluminesnce map in Nova Upright software and export to
'.m' format.

2. Import data using Matlab with space and semicolon delimiters (Matlab
will create 1600x1 doubles labeled VarNameQ where Q = 3 -> 4161).

3. Place 'RamanPLMapPlot.m' into your current Matlab directory and run
'RamanPLMapPlot' from the command line.
