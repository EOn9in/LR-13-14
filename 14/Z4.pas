program z4;
var inf:file of integer; r:integer;
begin
  assign(inf,'C:\Users\user\Desktop\4');
  rewrite(inf);
  for var i:=1 to 500 do
    begin 
    r:=i;
    write(inf,r);
    end;
  close(inf);
  reset(inf);
  println('Сумма четных чисел:');
  var s:=0;
  while not eof(inf) do
    begin
  read(inf,r);
  if r mod 2 = 0 then s:=s+r;
    end;
  print(s);
end.