program FeldSort3 (input,output);
{sortiert ein einzulesendes Feld von integer-Zahlen}

  const
  FELDGROESSE = 5;
  
  type
  tIndex = 1..FELDGROESSE;
  tFeld = array [tIndex] of integer;
  
  var 
  EingabeFeld : tFeld;
  idx : tIndex;
  
  procedure FeldSortieren (var SortFeld : tFeld);
  
    var
    i : tIndex;
  
    function FeldMinimumPos (Feld:tFeld; von,bis:tIndex) : tIndex;
    
      var
      MinimumPos,
      j : tIndex;
      
    begin
    
      MinimumPos := von;
    
      for j := von+1 to bis do
      begin
        if Feld[j] < Feld[MinimumPos] then
          MinimumPos := j
      end;
      
      FeldMinimumPos := MinimumPos;
      
    end;
    
    procedure vertauschen (var hin, her : integer);
							   
	  var
	  Tausch : integer;
	  
	begin
	
	Tausch := hin;
	hin := her;
	her := Tausch;
	
	end;
	
  begin
  
  for i := 1 to FELDGROESSE do
  begin
    vertauschen(SortFeld[i],SortFeld[FeldMinimumPos(SortFeld,i,FELDGROESSE)]);
  end;
  
  end;
  
begin

  {Feld wird eingelesen}
  
  writeln('Das Feld der Groesse ',FELDGROESSE,' wird eingelesen.');
  writeln;
  
  for idx := 1 to FELDGROESSE do
  begin
    write('Bitte ',idx,'. Wert eingeben: ');
    readln(EingabeFeld[idx]);
  end;
      
  {Feld wird sortiert}
  
  FeldSortieren(EingabeFeld);
  
  {Feld wird ausgegeben}
  
  writeln;
  writeln('Das sortierte Feld lautet:');
  writeln;
  
  for idx := 1 to FELDGROESSE do
  begin
    write(Eingabefeld[idx]:6);
  end
    
end.
