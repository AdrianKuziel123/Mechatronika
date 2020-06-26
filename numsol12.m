
% a * x.^4 - x.^3 + (a.^2 - 1) * x.^2  + 5 * x + 7 == 0
%
% 0 < a <= 15

wartosci_m = 0:0.001:15;
ilosci_rzeczywistych = zeros(size(wartosci_m));


for k = 1:length(wartosci_m)
    
    a = wartosci_m(k);
    pierwiastki = roots ([a, a.^2 - 1, 5, 7]) ;

   

    for pierwiastek = pierwiastki
        if isreal(pierwiastek)
            z=k+1;
        end
    end

end


    
    
    ilosc_rzeczywistych(k) = z;
        


plot(wartosci_m, ilosc_rzeczywistych);
grid on;
grid minor;