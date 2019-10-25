i= 1
xl= 0
xu= 1
e(i)= 10
 
while(e(i) > 0.001)
    
  xr = (xl+xu)/2
    
 fxl = (xl)-2^(- xl)
 fxr = (xr)-2^(- xr)
 fxu = (xu)-2^(- xu)
if (fxl*fxr <  0)
        xu=xr
        e(i + 1 )= abs (xl-xr);
    end
  if(fxu*fxr<  0)
        xl = xr
        e(i+1)= abs(xr-xu);
    end
    i=1+i;
   if (fxu*fxr == 0 )
        xr=xr
    enn
    end
tamanio = size(e);
ite= 1:1:tamanio(2);
figure ('DefaultAxesFontsize', 14)
set (gcf, 'color', 'white');
plot(ite,e,'color',[1 0 0],'LineWidth',2);
grid on
hold on
xlabel('Iterations')
ylabel('error')
legend ('error')
