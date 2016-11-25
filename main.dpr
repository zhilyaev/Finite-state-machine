Program TFYA;

uses
  System.SysUtils;

var
  str : string;
  i, state: integer;

{ Таблица переходов

  __	0	1	2	3	4	5	6
  0|	1	1	4	5	1	1	5
  1|	2	3	2	2	6	6	2
}
  table : array[0..6,0..1] of Integer =
  (
  //  0     1     2     3     4     5     6
  // 0,1   0,1   0,1   0,1   0,1   0,1   0,1
    (1,2),(1,3),(4,2),(5,2),(1,6),(1,6),(5,2)
  );
begin
   Readln(str);
   state := 0;
   for I := 1 to str.Length do
    begin
      state:=table[state , StrToInt(str[i])];
      if (state<0) then Break;
    end;

    if (state>4) then Writeln('true')
    else Writeln('false');

   Readln;
end.
