in.A = read_snap_data('CA-GrQc.txt');

in.k = 20;
in.c = 80;
in.r = 80;
in.q = 15;

methods = {'subspace_expected'};
p_values = (1:40);

% s = svds(in.A,p_values(end));
% plot(p_values,s(p_values(1):end)./s(p_values(1)));
% title('singular value decay');
% export_fig('./plots/decay_GR20.pdf');
% close all;


out = run_dataset_different_p(in,methods,p_values);

% save('./output/GR20')
% 
% p_values_plot_deterministic;
% export_fig(gcf,'./plots/p_plots_GR20_deterministic.pdf');
% close all;

p_values_plot_subspace_expected;
export_fig(gcf,'./plots/p_plots_GR20_subspace_expected.pdf');
close all;