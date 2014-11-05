% Jester data with target rank = 10
load('jester_data_1.mat');
in.A = jester_data_1;


in.k = 10;
in.p = 10;
in.q = 10;

in.sigma_k = 1;
in.froerr = 1;
in.froerr_k = 1;
in.specerr = 1;
in.specerr_k = 1;

in.adaptive = 0;

c_values = (20:10:100);
r_values = (20:10:100);


methods = {'deterministic','subspace_expected','uniform_sampling','near_optimal'};
out = run_different_number_of_c_and_r(in,methods,c_values,r_values);


save('./output/compare_jester10')

c_values_plot;
saveas(gcf,'./plots/c_plots_jester10','fig');
export_fig(gcf,'./plots/c_plots_jester10.pdf');
close all;