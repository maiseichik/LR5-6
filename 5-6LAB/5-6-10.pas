program p5610;
var
  arr: array[1..20] of Integer;
  i, j, n: Integer;
begin
  Randomize;
  for i := 1 to 20 do
    arr[i] := Random(100) - 50; 
  WriteLn('Исходный массив:');
  for i := 1 to 20 do
    Write(arr[i], ' ');
  n := 0; 
  for i := 1 to 20 do
  begin
    if arr[i] <= 0 then
    begin
      n := n + 1;
      arr[n] := arr[i];
    end;
  end;
  for i := n + 1 to 20 do
    arr[i] := 0;
  WriteLn;
  WriteLn('Массив без положительных элементов:');
  for i := 1 to 20 do
    Write(arr[i], ' ');
  ReadLn;
end.