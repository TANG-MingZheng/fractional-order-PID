function G = ousta_fod(r,N,wb,wh)
mu = wh/wb; k=-N:N;
w_kp=(mu).^((k+N+0.5-0.5*r)/(2*N+1))*wb;
w_k = (mu).^((k+N+0.5+0.5*r)/(2*N+1))*wb;
K=wh^r;
G=tf(zpk(-w_kp',-w_k',K));