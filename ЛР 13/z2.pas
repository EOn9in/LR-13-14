var  filetext:text; n,m:integer; s:string;
begin
  Writeln('Введите количество строк и количество символов в строке:');
  Readln(n,m);
  for var i:=1 to m do
    s:=s+'*';
  assign(filetext,'C:\Users\user\Desktop\text2');
  rewrite(filetext);
  for var i:=1 to n do
    writeln(filetext, s);
  close(filetext);
end.