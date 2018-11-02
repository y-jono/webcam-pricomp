function [ s ] = pca( x )
%PCA 主成分分析
%   共分散行列を計算。行列の固有ベクトルを求め、入力信号を主成分得点で表す。
%   この関数は入力信号を正規化するため、事前の正規化は必要ない。

nCh = length(x(1,:));
myu     = mean(x);    % m:平均
sd      = std(x);
rx      = zeros(size(x));
for iCh=1:nCh;
rx(:,iCh) = (x(:,iCh)-myu(iCh))/sd(iCh);
end
R       = corrcoef(x);   % R:共分散行列
[V,D]   = eig(R,eye(3)); % V:固有ベクトル, D:固有値 
s = rx * V;
end
