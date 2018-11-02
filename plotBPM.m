H = fft(S); % ���g�����
P = H .* conj(H); %�p���[�X�y�N�g�����ǂ��̌v�Z

resolution = (1/sampletime) / nSample; % ����\
startHelz = 40/60;  % [BPM/sec]
endHelz   = 240/60; % [BPM/sec]
startIndex = ceil(startHelz / resolution) +1;
endIndex   = floor(endHelz / resolution)  +1;
fAxis = 0:resolution:((nSample-1)*resolution);
bpmAxis = fAxis * 60;

% plot(fAxis, P);
plot(bpmAxis(startIndex:endIndex), P(startIndex:endIndex,:));
