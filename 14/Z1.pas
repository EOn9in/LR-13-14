program z1;
var f1, f2: file of char; c:char; s:string;
begin
  assign(f1,'C:\Users\user\Desktop\1');
  assign(f2,'C:\Users\user\Desktop\2');
  rewrite(f1);
  var n:=readinteger('Введите кол-во символов для записи');
  println('Введите символы');
  for var i:=1 to n+1 do
    begin
    readln(c);
    print(f1,c);
    end;
    close(f1);
    rewrite(f2);
    reset(f1);
    while not eof(f1) do
    begin
      if c=' ' then exit;
      read(f1,c);
      print(f2,c);
    end;
    close(f1);
    close(f2);
end.