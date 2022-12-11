var
 f,g:text;
 k,i:integer;
 s:string;
begin
  print('Введите номер строки, перед которой хотите видеть пустую строку: ');
 readln(k);
 Assign(f,'C:\Users\user\Desktop\4input');
 rewrite(f);
 for i:=1 to 25 do
    println(f,i);
close(f);
 assign(f,'C:\Users\user\Desktop\4input');
 reset(f);
 assign(g,'C:\Users\user\Desktop\4output');
 rewrite(g);
 i:=0;
 while not eof(f) do
 begin
   readln(f,s);
   inc(i);
   if i=k then writeln(g);
   writeln(g,s);
  end;
 close(f);
 close(g);
Erase(f);
Rename(g,'C:\Users\user\Desktop\text4');
end.