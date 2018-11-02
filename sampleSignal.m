cam = webcam(1);

captime  = 100;      % キャプチャ時間
resttime = captime;  % キャプチャ残り時間
ni=1;                % カウンタ
signal=zeros(990,3); % サンプリング数, チャンネル数

tic() % タイマー開始

while resttime >= 0;
    snapimg = snapshot(cam);
    faceimg = snapimg(150:500,500:700,:);
    % 顔の画像を表示
    image(faceimg);

    % RGB顔画像の表示
    ch1img = zeros(size(faceimg),'uint8');
    ch2img = zeros(size(faceimg),'uint8');
    ch3img = zeros(size(faceimg),'uint8');
    ch1img(:,:,1) = faceimg(:,:,1);
    ch2img(:,:,2) = faceimg(:,:,2);
    ch3img(:,:,3) = faceimg(:,:,3);

    signal(ni,1) = sum(sum(faceimg(:,:,1)));
    signal(ni,2) = sum(sum(faceimg(:,:,2)));
    signal(ni,3) = sum(sum(faceimg(:,:,3)));

    ni = ni + 1;

    resttime = resttime - toc();
end

clear cam;
