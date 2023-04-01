%filename: sa.m
clear all % clear all variables
clf       % and figures
global T TS TMAX QMAX;
global Rs Csa dt;
in_sa %initialization

one_period = T/dt;
  t_plot1=zeros(1,one_period);
QAo_plot1=zeros(1,one_period);
Psa_plot1=zeros(1,one_period);


maxPsa=zeros(1,20);
minPsa=zeros(1,20);
Tplot=zeros(1,20);

for i=1:20
    T = 0.005 + 0.015*i/20
    for klok=1:klokmax
        t=klok*dt;
        QAo=QAo_now(t);
        Psa=Psa_new(Psa,QAo); %new Psa overwrites old
        %Store values in arrays for future plotting:
        t_plot(klok)=t;
        QAo_plot(klok)=QAo;
        Psa_plot(klok)=Psa;
        if 19 * one_period < klok
            t_plot1(klok-19*one_period)=t;
            QAo_plot1(klok-19*one_period)=QAo;
            Psa_plot1(klok-19*one_period)=Psa;
        end
    end 
    Tplot(i) = T;
    maxPsa(i) = max(Psa_plot1);
    minPsa(i) = min(Psa_plot1);
end
%Now plot results in one figure 
%with QAo(t) in upper frame
% and Psa(t) in lower frame
%subplot(2,1,1), plot(t_plot,QAo_plot)
%xlabel("Time(minutes)")
%ylabel("Aortic Flow(liters/minute)")
%subplot(2,1,2), plot(t_plot,Psa_plot)
%xlabel("Time(minutes)")
%ylabel("Pressure Systemic arteries(mmHg)")

hold on;
plot(Tplot,maxPsa,'DisplayName', 'max')
plot(Tplot,minPsa,'DisplayName', 'min')
xlabel("Period(minutes)")
ylabel("Pressure Systemic arteries(mmHg)")
legend()


%fprintf("Max: %f Min: %f", max(Psa_plot1), min(Psa_plot1))
