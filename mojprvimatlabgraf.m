% pro tip za risanje v matlabu: izberemo si interval, razdelimo ga na
% delilne točke in tam izračunamo vrednosti in vstavimo v graf

% pro tip: pokliči help linspace
x = linspace(0, 30, 10);
y = vrednost_seznama(x);

%plot(x, y);


% hacker tip: označi tekst in klikni ctrl+9 za vnos teksta v konzolo

% piflar tip: vpiši doc plot v konzoli za dostop do dokumentacije

% estetski tip: če hočeš nadaljevati s pisanjem v novi vrstici vnesi "..." in
% nato pojdi v novo vrstico

plot(x, y, ...
    'r--', 'LineWidth', 3);