program p5612;
const
  N = 20;
var
  numbers: array[1..N] of Integer;
  i: Integer;
begin
  randomize;
  for i := 1 to N do
    numbers[i] := random(100) - 50;
  writeln('Исходный массив:');
  for i := 1 to N do
    write(numbers[i], ' ');
  writeln;
  for i := N downto 1 do
  begin
    if numbers[i] > 0 then
    begin
      for j := N downto i + 1 do
        numbers[j] := numbers[j-1];
      numbers[i] := 0;
    end;
  end;
  writeln('Массив с вставленными нулями:');
  for i := 1 to N do
    write(numbers[i], ' ');
  writeln;
end.
