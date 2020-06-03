% PLOTTING FUNCTIONS: 

% shortcut function for preparing an invisible figure for plotting to a file
    left_margin     = 0.1;
    bottom_margin   = 0.1;
    top_margin		= 0.1;
    plot_width      = 4;
    plot_height     = 2.5;
	function fig = prepare_fig()
		fig = figure('Visible', 'off',...
				'PaperPosition', [left_margin bottom_margin plot_width plot_height],...
				'PaperSize', [(left_margin+plot_width) (bottom_margin+plot_height+top_margin)]);
    end
    
    
% FUNCTIONS FOR VAR MODELS: 
    
% calculate spectral radius of P - check if the model is stable 
lambdas 	= eig(P1);
abslambdas 	= abs(lambdas);
fprintf('Spectral radius = %.3g\n',max(abslambdas));

% calculate asymptotic expectation
% Theorem 4.1.6 - for a stable model, our expectations converge to a
% specific value mu. Formula to calculate mu:
mu = inv(eye(2) - P1 - P2 - P3)*c;  % or however many P's you have - depends on the order of the model
printf('Asymptotic expectation:');
mu. % will return a N-dim vector with a value for every component 
