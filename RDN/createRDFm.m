clear all; clc;

%% create node points
filesave = 'nodes.txt';
% text = fileread(filenames);

fileID = fopen(filesave,'w');
formatSpec = '%i %2.1f %1.2f %1.4f\n';

Xmax = 5;    % 20 m
Ymax = 0.5;   % 5 m
dx = 0.05;   % 0.1 m => 1m = > 0.04cm
Zmax = 0.01;  % 3cm

nstep = Xmax/dx;

for i = 0:1:2*nstep
    if(mod(i,2) == 0)
        fprintf(fileID,formatSpec,i, dx*floor(i/2),-Ymax,Zmax*rand);
    else
        fprintf(fileID,formatSpec,i, dx*floor(i/2),Ymax,Zmax*rand);
    end
end


%% create element 
filesave = 'elements.txt';
fileID = fopen(filesave,'w');
formatSpec = '%i %i %i\n';
Nstep = 2*nstep;

for i = 0:1:Nstep
    if(mod(i,2) == 0)
        fprintf(fileID,formatSpec,i,i+1,i+2);
    else
        fprintf(fileID,formatSpec,i+1,i+2,i);
    end
end