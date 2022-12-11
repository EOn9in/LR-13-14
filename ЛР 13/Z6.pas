begin
  var filein,fileout:text; var s:string;
  assign(filein, 'C:\Users\user\Desktop\input6');
  reset(filein);
  assign(fileout,'C:\Users\user\Desktop\output6');
  rewrite(fileout);
  while not eof(filein) do begin
    readln(filein,s);
    if s<>'' then println(fileout,s);
  end;
  close(filein);
  close(fileout);
end.