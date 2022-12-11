program z5;
var input,output: text; k,i,max,min,a: integer;
begin
  Writeln('Введите количество чисел для записи в файл input');
  readln(k);
  assign(input,'C:\Users\user\Desktop\input5');
  assign(output,'C:\Users\user\Desktop\output5');
  rewrite(input);
  rewrite(output);
  min:=100; max:=0;
  for i:=1 to k do
  begin
    a:=random(1,100);
    writeln(input,a);
    if a>max then
    max:=a;
    if a<min then
    min:=a;
  end;
  writeln(output,min);
  writeln(output,max);
  close(input);
  close(output);
end.