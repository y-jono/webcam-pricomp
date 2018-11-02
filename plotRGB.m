nSample = length(signal(:,1));
sampletime = captime / nSample; % [s/1]サンプリング一回あたりの経過時間
xAxis = 0:sampletime:(captime-sampletime);
plot(xAxis,signal(:,1),'r', xAxis,signal(:,2),'g', xAxis,signal(:,3),'b');
