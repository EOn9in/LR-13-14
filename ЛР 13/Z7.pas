begin 
  var 
    inf,outf:text; var a:integer;
  assign(inf, 'C:\Users\user\Desktop\z3(input)');
  rewrite(inf);
  a:=random(1,100);
  writeln(inf,a);
  close(inf);
  assign(outf,'C:\Users\user\Desktop\z3(output)');
  reset(inf);
  rewrite(outf);
  var r:integer;
  read(inf,r);
  close(inf);
  var sum:integer;
  var k:integer;
  for var i:=1 to r do begin 
    k:=0;
    for var j:=1 to i do if i mod j = 0 then inc(k);
    if k=5 then sum+=i;
  end;
  print(outf,sum);{сумма чисел (от 1 до n), у которых ровно 5 делителей}
  close(outf);
end.