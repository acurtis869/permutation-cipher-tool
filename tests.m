
p = [3 22 23 11 24 1 25 2 20 16 15 5 19 10 12 8 9 6 17 26 4 18 7 13 14 21];

q = [16 4 17 18 9 24 25 10 22 6 3 12 11 2 7 26 21 1 23 15 8 5 19 14 13 20];

k = Key(randperm(26));

l = Key(randperm(26));

% Test: l(k(i)) == (l*k)(i)
if all(encrypt(l,encrypt(k,'A':'Z')) == encrypt(l*k,'A':'Z'))
 disp('l * k : passed')
else
 disp('l * k : failed')
end

% Test: k * k-1 == 1
if all(encrypt(k * k.invert,'A':'Z') == 'A':'Z')
 disp('k * k.invert : passed')
else
 disp('k * k.invert : failed')
end

% Test: k-1 * k == 1
if all(encrypt(k.invert * k,'A':'Z') == 'A':'Z')
 disp('k.invert * k : passed')
else
 disp('k.invert * k : failed')
end

% Test: k-1 * l-1 == (l * k)-1
if all(encrypt(k.invert * l.invert,'A':'Z') == ...
       encrypt(  invert( l * k )  ,'A':'Z'))
 disp('k-1 * l-1 = (l*k)-1 : passed')
else
 disp('k-1 * l-1 = (l*k)-1 : failed')
end