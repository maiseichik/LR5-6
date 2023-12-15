program p566;
const
  N = 10; 
var
  Arr: array[1..N] of integer;
  i: integer;
  uporyad: boolean;
begin
  writeln('Введите элементы массива:');
  for i := 1 to N do
  begin
    write('Элемент ', i, ': ');
    readln(Arr[i]);
  end;
  uporyad := true;
  for i := 1 to N-1 do
  begin
    if Arr[i] > Arr[i+1] then
    begin
      uporyad := false;
      break;
    end;
  end;
  if uporyad then
    writeln('Элементы массива упорядочены по возрастанию.')
  else
    writeln('Элементы массива не упорядочены по возрастанию.');
end.