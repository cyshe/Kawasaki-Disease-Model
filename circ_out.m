%filename: circ_out.m
%script to plot results of computer simulation 
%of the entire circulation.
%left ventricular compliance, pressures, and flows:
figure(1)
subplot(3,1,1),plot(t_plot(2900:3000),C_plot(iLV,2900:3000)), xlabel('time(minutes)'), ylabel('C_{LV}(L/mmHg)')
subplot(3,1,2),plot(t_plot(2900:3000),P_plot([ipv,iLV,isa],2900:3000)), xlabel('time(minutes)'), ylabel('Pressure(mmHg)'), legend({'pulmonary veins', 'left ventricular', 'systemic arteries'})
subplot(3,1,3),plot(t_plot(2900:3000),Q_plot([jMi,jAo],2900:3000)), xlabel('time(minutes)'), ylabel('Flow(L)'), legend({'mitral valve', 'aortic valve'})
%right ventricular compliance, pressures, and flows:
figure(2)
subplot(3,1,1),plot(t_plot(2900:3000),C_plot(iRV,2900:3000)), xlabel('time(minutes)'), ylabel('C_{RV}(L/mmHg)')
subplot(3,1,2),plot(t_plot(2900:3000),P_plot([isv,iRV,ipa],2900:3000)), xlabel('time(minutes)'), ylabel('Pressure(mmHg)'), legend({'systemic veins', 'right ventricular', 'pulmonary artieries'})
subplot(3,1,3),plot(t_plot(2900:3000),Q_plot([jTr,jPu],2900:3000)), xlabel('time(minutes)'), ylabel('Flow(L)'), legend({'tricuspid valve', 'pulmonary valves'})
%systemic and pulmonary flows:
figure(3)
plot(t_plot(2900:3000),Q_plot([js,jp],2900:3000)), xlabel('time(minutes)'), ylabel('Flow(L)'), legend({'systemic', 'pulmonary'})
figure(4)%pressure-volume loops for both ventricles
subplot(2,1,1),plot(V_plot(iLV,2900:3000),P_plot(iLV,2900:3000)), xlabel('Volume(L)'), ylabel('left ventricular Pressure(mmHg)')
subplot(2,1,2),plot(V_plot(iRV,2900:3000),P_plot(iRV,2900:3000)), xlabel('Volume(L)'), ylabel('right ventricular Pressure(mmHg)')
