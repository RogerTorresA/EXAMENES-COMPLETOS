
% El examen no da valores que de los cuales no se pueden sacar una solucionpor lo tanto el programa no funciona para programar y darle solucion 
%cambiamos los parametros y asi la grafica de la funcion se define correctamente
 
i=1
xl=-2
xu=0
e(i)=10

while(e(i) > 0.001)
    
    xr=(xl+xu)/2
    
    fxl=(xl^4)-1-3*(exp(xl))
    fxr=(xr^4)-1-3*(exp(xr))
    fxu=(xu^4)-1-3*(exp(xu))
    
    if(fxl*fxr < 0)
        xu=xr
        e(i+1)=abs(xl-xr);
    end
    
    if(fxu*fxr < 0)
        xl=xr
        e(i+1)=abs(xr-xu);
    end
    i=1+i;
    
    if(fxu*fxr==0)
        xr=xr
    end
end

tamanio = size(e);
ite = 1:1:tamanio(2);
figure('DefaultAxesFontsize', 14)
set (gcf , 'color', 'white');
plot(ite,e,'color',[1 0 0], 'LineWidth',2)
grid on
hold on
xlabel('Iterations')
ylabel('error')
legend ('error')
