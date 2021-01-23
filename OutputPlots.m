% Plotting energy consumption versus number of mobile users
numusers = categorical([12,20,32,40,60]);
SAPA = [25.101
27.537
80.1366
946.424
1813.65];
PSO = [4.7213
7.4689
12.6144
19.8159
26.0105];
bar(numusers,[PSO,SAPA]);
grid on;
ylim([0 100]);
legend('PSO','SAPA')
xlabel('Number of mobile users')
ylabel('Energy Consumption (J)')

%%
% Plotting energy consumption versus pmax
numusers = categorical([12,20,32,40,60]);
pmax_4 = [4.7213
7.4689
10.0413
17.766
23.8686];
pmax_5 = [4.7213
7.4689
12.6144
19.8159
26.0105];
pmax_6 = [4.7213
7.5415
12.7801
18.9349
28.7437];
plot(numusers,pmax_4,'-d',...
    'LineWidth',2,...
    'MarkerFaceColor','blue',...
    'MarkerSize',5);
hold on;
plot(numusers,pmax_5,'-^',...
    'LineWidth',2,...
    'MarkerFaceColor','r',...
    'MarkerSize',5);
plot(numusers,pmax_6,'-o',...
    'LineWidth',2,...
    'MarkerFaceColor','green',...
    'MarkerSize',5);
hold off;
grid on;
ylim([0 40]);
legend('Pmax = 4W','Pmax = 5W','Pmax = 6W')
xlabel('Number of mobile users')
ylabel('Energy Consumption (J)')

%%
% Plotting performance versus number of mobile users
numusers = categorical([12,20,32,40,60]);
rr = [1
1
1
0.95
0.9];
bar(numusers,rr,0.4);
ylim([0 1.2]);
grid on;
xlabel('Number of mobile users')
ylabel('Response rate')
welfare = [11.9989
19.9952
31.9894
36.0156
50.0382];
plot(numusers,welfare,'-d',...
    'LineWidth',2,...
    'MarkerFaceColor','blue',...
    'MarkerSize',5);
grid on;
xlabel('Number of mobile users')
ylabel('Welfare')

%%
% Plotting welfare under different request workload
numusers = categorical([12,20,32,40,60]);
w1500 = [11.9989
19.9952
31.9894
36.0156
50.0382];
w2000 = [11.9990 
19.9975
31.9915
38.0651
50.0486];
w2500 = [11.9963
19.9919
31.9874
39.0129
51.019];
plot(numusers,w1500,'-d',...
    'LineWidth',2,...
    'MarkerFaceColor','blue',...
    'MarkerSize',5);
hold on;
plot(numusers,w2000,'-^',...
    'LineWidth',2,...
    'MarkerFaceColor','r',...
    'MarkerSize',5);
plot(numusers,w2500,'-o',...
    'LineWidth',2,...
    'MarkerFaceColor','green',...
    'MarkerSize',5);
hold off;
grid on;
ylim([0 70]);
legend('Wq = 1500','Wq = 2000','Wq = 2500')
xlabel('Number of mobile users')
ylabel('Welfare')

%%
% Plotting welfare versus request workload
rworkload = categorical([1000,1500,2000,2500,3000]);
welf = [52.04569
50.0382
50.041
50.039
50.0279];
bar(rworkload,welf,0.4,'red');
grid on;
xlabel('Request Workload (Magacycles)')
ylabel('Welfare')

%%
% Plotting welfare versus request input
Inputdata = categorical([600,700,800,900,1000]);
welfinput = [50.0434
50.0382
47.1137
47.6045
47.4919];
bar(Inputdata,welfinput,0.4,'magenta');
grid on;
xlabel('Request Input (MB)')
ylabel('Welfare')