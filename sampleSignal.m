cam = webcam(1);

captime  = 100;      % �L���v�`������
resttime = captime;  % �L���v�`���c�莞��
ni=1;                % �J�E���^
signal=zeros(990,3); % �T���v�����O��, �`�����l����

tic() % �^�C�}�[�J�n

while resttime >= 0;
    snapimg = snapshot(cam);
    faceimg = snapimg(150:500,500:700,:);
    % ��̉摜��\��
    image(faceimg);

    % RGB��摜�̕\��
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
