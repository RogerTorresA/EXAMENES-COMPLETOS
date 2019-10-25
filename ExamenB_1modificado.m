% Para que el programa corriera de manera correcta no se podian realizar
% con los intervalos marcados en el examen ya que al graficar la funcion de
% [0,2] no hay raiz por lo que cambie a [-2,0] ya que alli si se localizab
% una raiz dentro de la grafica 
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