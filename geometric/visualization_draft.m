%% l2
clear all;
figure1 = figure('DefaultAxesFontSize',20);
set(figure1,'Position',[10 200 1500 800]);
subplot(2,3,1);
x1=[0.05327 0.05231 0.04518 0.04436;
    0.06366 0.06190 0.04544 0.04358;
    0.06883 0.06789 0.05153 0.04529];
fig1=bar(x1);
set(gca,'XTickLabel',{'118AC','118DC','2383DC'});
xlabel('Dataset');
ylabel('L_2 error');

subplot(2,3,2);
x2=[0.06582 0.06023 0.05818 0.05650;
    0.08961 0.07010 0.05942 0.05448;
    0.19981 0.17822 0.13629 0.12051];
fig2=bar(x2);
set(gca,'XTickLabel',{'118AC','118DC','2383DC'});
xlabel('Dataset');
ylabel('L_{inf} error');

subplot(2,3,3);
x3=[0.00666 0.00716 0.01347 0.01180;
    0.00625 0.00576 0.09288 0.09290;
    2.07751e-6 0.00024049900 0.00043944782 0.00046262846];
fig3=bar(x3);
set(gca,'XTickLabel',{'118AC','118DC','2383DC'});
set(gca,'YScale','log');
xlabel('Dataset');
ylabel('Feasibility level');
subplot(2,3,4);
x4=[351e3 351e3 5.8e6 5.8e6;
    351e3 351e3 5.8e6 5.8e6;
    142e6 142e6 284e6 284e6];
fig4=bar(x4);
set(gca,'XTickLabel',{'118AC','118DC','2383DC'});
set(gca,'YScale','log');
legend('GNN+feas.','GNN','FCNN+feas.','FCNN','Location','northwest','NumColumns',1);
xlabel('Dataset');
ylabel('Model complexity in #params');

subplot(2,3,5);
x5=[1365 935 953 953;
    1369 939 953 953;
    1919 1919 2295 2295];
fig5=bar(x5);
set(gca,'XTickLabel',{'118AC','118DC','2383DC'});
xlabel('Dataset');
ylabel('Memory usage [MB]');

subplot(2,3,6);
x6=[113 166 13 20;
    160 95 12 33;
    401 1277 166 145];
fig6=bar(x6);
set(gca,'XTickLabel',{'118AC','118DC','2383DC'});
set(gca,'YScale','log');
xlabel('Dataset');
ylabel('Training time [s]');
% saveas(gcf,'time.png');