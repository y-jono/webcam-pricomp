function [ s ] = pca( x )
%PCA �听������
%   �����U�s����v�Z�B�s��̌ŗL�x�N�g�������߁A���͐M�����听�����_�ŕ\���B
%   ���̊֐��͓��͐M���𐳋K�����邽�߁A���O�̐��K���͕K�v�Ȃ��B

nCh = length(x(1,:));
myu     = mean(x);    % m:����
sd      = std(x);
rx      = zeros(size(x));
for iCh=1:nCh;
rx(:,iCh) = (x(:,iCh)-myu(iCh))/sd(iCh);
end
R       = corrcoef(x);   % R:�����U�s��
[V,D]   = eig(R,eye(3)); % V:�ŗL�x�N�g��, D:�ŗL�l 
s = rx * V;
end
