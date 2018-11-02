H = fft(S); % 周波数解析
P = H .* conj(H); %パワースペクトルもどきの計算

resolution = (1/sampletime) / nSample; % 分解能
startHelz = 40/60;  % [BPM/sec]
endHelz   = 240/60; % [BPM/sec]
startIndex = ceil(startHelz / resolution) +1;
endIndex   = floor(endHelz / resolution)  +1;
fAxis = 0:resolution:((nSample-1)*resolution);
bpmAxis = fAxis * 60;

% plot(fAxis, P);
plot(bpmAxis(startIndex:endIndex), P(startIndex:endIndex,:));
