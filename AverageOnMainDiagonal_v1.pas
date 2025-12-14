program DiagonalAverage;
var
  a: array[1..10, 1..10] of integer;
  n, i, sum: integer;
  avg: real;
begin
  write('Введіть розмір матриці n: ');
  readln(n);

  sum := 0;
  writeln('Введіть елементи матриці:');
  for i := 1 to n do
    for var j := 1 to n do
      read(a[i, j]);

  for i := 1 to n do
    sum := sum + a[i, i];

  avg := sum / n;
  writeln('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.
