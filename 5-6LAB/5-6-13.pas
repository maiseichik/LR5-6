program p5613;
const
  N = 20;
var
  numbers: array[1..N] of Integer;
  i, minIndex, maxIndex, temp: Integer;
begin
  randomize;
  for i := 1 to N do
    numbers[i] := random(100) - 50; 
  writeln('Исходный массив:');
  for i := 1 to N do
    write(numbers[i], ' ');
  writeln;
  minIndex := 1;
  maxIndex := 1;
  for i := 2 to N do
  begin
    if numbers[i] < numbers[minIndex] then
      minIndex := i;
    if numbers[i] > numbers[maxIndex] then
      maxIndex := i;
  end;
  temp := numbers[minIndex];
  numbers[minIndex] := numbers[maxIndex];
  numbers[maxIndex] := temp;
  writeln('Массив после замены наибольшего и наименьшего элементов:');
  for i := 1 to N do
    write(numbers[i], ' ');
  writeln;
end.
