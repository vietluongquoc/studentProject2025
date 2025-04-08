clear all; clc;

Carr = 0:0.2:1.8;
% Carr = 1:10:91;
Karr = 1000000:200000:2200000;

% K = 2000000;
% Cadd = 0:0.2:1;
% Karr2 = 2000000;
RMSarr = [];
% RMS2 = [];
for i = 1:1:7
    for j = 1:1:10
        filename = sprintf('SimulationData/results%d_%d.mat',Karr(i),Carr(j));
        load(filename);
        RMSarr(i,j) = rms(outAZ(1:500));
    end
end
% for i = 1:1:5
%     filename = sprintf('SimulationData/results%d_%d.mat',Karr2,Carr(j));
%     load(filename);
%     RMS2(i) = rms(outAZ(1:500));
% end


figure(1)
% hold on
% mesh(Karr,Carr,RMSarr');
mesh(Carr,0.001*Karr,RMSarr);
xlabel('C (kNm/s)');
ylabel('K (kN/m)');
zlabel('RMS (m/s^2)');
% mesh(Karr2,Cadd,RMS2);
% C = 1;
% for i = 1:6
%     filename = sprintf('SimulationData/results%d_%d.mat',K,Carr(i));
%     load(filename);
%     RMSarr(i) = rms(outAZ(1:500));
% end
% 
% figure(1)
% plot(Carr, RMSarr)