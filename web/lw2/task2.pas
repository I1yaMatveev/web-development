PROGRAM SarahRevere(INPUT, OUTPUT);
USES DOS;
VAR
  Qstr, Par, OutS: STRING;
  I: INTEGER;
BEGIN {SarahRevere}
  // http://localhost:4001/cgi-bin/task3(2).cgi/?lanterns=1&last_name=Pov
  // lanterns=1&last_name=Pov
  WRITELN('Content-Type: text/plain');
  WRITELN;
  I := 1;
  OutS := '';
  Qstr := GetEnv('QUERY_STRING');
  Par := copy(Qstr, pos('lanterns=', Qstr) + length('lanterns='), length(Qstr) - length('lanterns=') + 1);
  WHILE (Par[i] <> '&') AND (i < length(Par))
  DO
    BEGIN
      OutS := OutS + Par[i];
      INC(i)
    END;
  IF Par[i] <> '&' 
  THEN    
    OutS := OutS + Par[i];  
  IF OutS = '1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF OutS = '2'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END.
