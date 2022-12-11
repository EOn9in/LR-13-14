Var
  s,s1: String;
  filetext,new: Text;
  n,i: Byte;
begin
Assign(filetext,'C:\Users\user\Desktop\text3');
rewrite(filetext);
for i:=1 to 10 do
    println(filetext,i);
close(filetext);
Assign(new,'C:\Users\user\Desktop\text3(new)');
Rewrite(new);
Write('Введите строку S, которую хотите добавить в конец файла: ');
Readln(s);
Reset(filetext);
While not Eof(filetext) do
begin
  Readln(filetext,s1);
  Writeln(new,s1);
end;
Writeln(new,s);
Close(filetext);
Close(new);
Erase(filetext);
Rename(new,'C:\Users\user\Desktop\text3');
end.