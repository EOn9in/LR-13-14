var
   filetext: text;
   a:string;
   i:integer;
begin
assign(filetext,'C:\Users\user\Desktop\text');
rewrite(filetext);
for i:=1 to 10 do
    write(filetext,i,' ');
close(filetext);
reset(filetext);
for i:=1 to 10 do begin
    read(filetext,a);
    println(a);
end;
close(filetext);
end.