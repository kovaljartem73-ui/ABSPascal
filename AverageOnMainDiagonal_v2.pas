program RandomDiagonalAverage;
var
  a: array[1..10, 1..10] of integer;
  n, i, j, sum: integer;
  avg: real;
begin
  randomize;  // Ініціалізація генератора випадкових чисел

  write('Введіть розмір матриці n: ');
  readln(n);

  sum := 0;

  writeln('Матриця:');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      a[i, j] := Random(201) - 100; // Випадкове число від -100 до 100
      write(a[i, j]:5);             // Вивід елементу матриці для наочності
    end;
    writeln;
  end;

  for i := 1 to n do
    sum := sum + a[i, i];           // Сума елементів головної діагоналі

  avg := sum / n;                    // Середнє арифметичне
  writeln('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.
