program p561;

var
a: array[1..20] of integer;
i: integer;
begin
writeln('Введите 20 чисел');
for i := 1 to 20 do
read(a[i]);
writeln('Массив после замены отрицательных чисел на 0');
for i := 1 to 20 do
begin
if a[i] < 0 then
a[i] := 0;
write(a[i], ' ');
end;
writeln;
writeln('Массив после возведения положитльных чисел в квадрат');
for i := 1 to 20 do
begin
if a[i] > 0 then
a[i] := a[i] * a[i];
write(a[i], ' ');
end;

end.