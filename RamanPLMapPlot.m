% Script for plotting map of Raman/Photoluminecence maximum values (using
% Nova Upright software).
%
%
% Instructions:
%
% 1. Open Raman/Photoluminesnce map in Nova Upright software and export to
% '.m' format.
% 2. Import data using Matlab with space and semicolon delimiters (Matlab
% will create 1600x1 doubles labeled VarNameQ where Q = 3:4161).
% 3. Place 'RamanPLMapPlot.m' into your current Matlab directory and run
% 'RamanPLMapPlot' from the command line.
%
%
% Note that the script is set up for 64 x 64 pixel scans but can be
% modified by changing lines 20 and 25 to the corresponding size of the
% imported data.

% Initialize values
MaxVals = zeros(64,64);
x = 1;
y = 1;

% Cycle through doubles and extract max values
for Q = 3:4161
    s1 = 'VarName';
    s2 = num2str(Q);
    s = strcat(s1,s2);
    name = eval(s);
    maxval = max(name);
    if isnan(maxval)
        x = 1;
        y = y+1;
    else
        MaxVals(x,y) = maxval;
        x = x + 1;
    end    
end

% Plot max values
surf(MaxVals,'LineStyle','none')
view(90,270)
colormap winter