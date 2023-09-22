function [fitresult, gof] = createFit(trials, xsteepmean)
[xData, yData] = prepareCurveData( trials, xsteepmean );

ft = fittype( 'c-a*exp(-b*x)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf];
opts.StartPoint = [0.694828622975817 0.317099480060861 0.950222048838355];

[fitresult, gof] = fit( xData, yData, ft, opts );
a=coeffvalues(fitresult);
b=1/a(2);
