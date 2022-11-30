function y = zaokrozi(x, m)

mantisa = '';

if x ~= 0
    eksp = floor(log10(abs(x)));
    
    str_x = num2str(x);
    str_x = erase(str_x, '.');
    zacetek = 1;
    
    if eksp < 0
        zacetek = 1 + abs(eksp);
    end
    
    for i = zacetek:(min(length(str_x), m))
        mantisa = strcat(mantisa, str_x(i));
    end

    y = str2double(mantisa);
    napacen_eksp = floor(log10(abs(y)));
    y = y * 10^(eksp - napacen_eksp);

else
    y = 0;
end

end

    
