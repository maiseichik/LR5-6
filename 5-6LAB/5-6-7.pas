program p567;
const
  N = 10;
var
  Arr: array[1..N] of integer;
  i, cl, maxl: integer;
begin
  writeln('Введите элементы массива:');
  for i := 1 to N do
  begin
    write('Элемент ', i, ': ');
    readln(Arr[i]);
  end;
  cl := 1; 
  maxl := 1; 
  for i := 2 to N do
  begin
    if Arr[i] >= Arr[i - 1] then
      cl := cl + 1
    else
    begin
      if cl > maxl then
        maxl := cl;
      cl := 1;
    end;
  end;
  if cl > maxl then
    maxl := cl;
  writeln('Максимальная длина неубывающего участка: ', maxl);
end.
