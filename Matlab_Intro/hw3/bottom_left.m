function bl_m = bottom_left(N, n)
bl_m_cols = N(:,1:n);
bl_m = bl_m_cols(size(N,1)-n+1:size(N,1),:);
end