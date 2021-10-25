
clear all
close all
load('HGS20_20.mat');
x_2020      = xa_HGS;
y_2020      = ya_HGS;
z_2020      = za_HGS;

load('HGS30_20.mat');
x_3020      = xb_HGS;
y_3020      = yb_HGS;
z_3020      = zb_HGS;

 load('HGS40_20.mat');
x_4020      = x_HGS;
y_4020      = y_HGS;
z_4020      = z_HGS;

load('xi.mat');
T=0.05;
t = [0:T:40];
x_d     = xi_d(1,:)';
y_d     = xi_d(2,:)';
z_d     = xi_d(3,:)';
phi_d   = xi_d(4,:)';
theta_d = xi_d(5,:)';
psi_d   = xi_d(6,:)';

figure
set(gcf,'position', [150,150,800,500])

x=x_HGS; y=y_HGS; z=z_HGS;

plot3(x_d,y_d,z_d,'k--',x_4020,y_4020,z_4020,'r-',x_2020,y_2020,z_2020,'b-.',x_3020,y_3020,z_3020,'g.','LineWidth',2);
xlabel('X [m]','Fontsize',18);
ylabel('Y [m]','Fontsize',18);
zlabel('Z [m]','Fontsize',18);
set(gca,'Fontsize',18)
legend('Desired trajectory ','40ind, 20 iter','30ind, 20 iter','20ind, 20 iter','AutoUpdate','off','Fontsize',18)
hold on
grid on

%%
clear xi_d
load('xiCircle.mat');
x_dC     = xi_d(1,:)';
y_dC     = xi_d(2,:)';
z_dC     = xi_d(3,:)';
x_HGS_C     = xi(:,4);
y_HGS_C     = xi(:,5);
z_HGS_C     = xi(:,6);

figure
set(gcf,'position', [150,150,800,500])

%x=x_HGS; y=y_HGS; z=z_HGS;

plot3(x_dC,y_dC,z_dC,'k--',x_HGS_C,y_HGS_C,z_HGS_C,'r','LineWidth',2);
xlabel('X [m]','Fontsize',18);
ylabel('Y [m]','Fontsize',18);
zlabel('Z [m]','Fontsize',18);
set(gca,'Fontsize',18)
legend('Desired trajectory ','20ind, 20 iter HGS','Fontsize',18)
hold on
grid on