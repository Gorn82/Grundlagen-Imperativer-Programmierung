program Beispiel5412(input,output);
{Grundlegende Operationen mit Zeigern}

  var
  pZeig,
  qZeig,
  sZeig : ^integer;
  rZeig : ^real;

begin
  {Erzeuge zwei neue Objekte}
  new (pZeig);
  new (qZeig);
  writeln (pZeig = qZeig);
  pZeig^ := 3;
  qZeig^ := 7;
  qZeig^ := qZeig^ - pZeig^ - 1;
  {jetzt hat qZeig^ den Wert 7-3-1=3 }
  writeln (pZeig = qZeig, ' ',  pZeig^ = qZeig^);
  new (rZeig);
  rZeig^ := 5.0 * (qZeig^ + 2.0) / pZeig^;
  writeln(rZeig^:5:3);
  qZeig^ := 2 * qZeig^;
  {jetzt hat qZeig^ den Wert 6 }
  sZeig := qZeig;
  qZeig := pZeig;
  pZeig := sZeig;
  writeln (pZeig^, ' ', qZeig^, ' ', sZeig^);
end.
