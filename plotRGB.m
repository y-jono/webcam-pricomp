nSample = length(signal(:,1));
sampletime = captime / nSample; % [s/1]�T���v�����O��񂠂���̌o�ߎ���
xAxis = 0:sampletime:(captime-sampletime);
plot(xAxis,signal(:,1),'r', xAxis,signal(:,2),'g', xAxis,signal(:,3),'b');
