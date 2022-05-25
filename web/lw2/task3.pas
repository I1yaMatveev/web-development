PROGRAM Hello(INPUT, OUTPUT);
//USES Dos;
  // http://localhost:4001/cgi-bin/task3.cgi/?name=Pavel
VAR
  NPar, Qstr, OutS, Check, Par: STRING;
  I: INTEGER;
  F: BOOLEAN;

BEGIN {Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  //Qstr := GetEnv('QUERY_STRING'); // name=Pavel&age=18
  Qstr := '';
  NPar := 'name=';
  I := 1;
  Check := COPY(Qstr, POS(NPar, Qstr), length(NPar));
  Par := copy(Qstr, pos(NPar, Qstr) + length(NPar), length(Qstr) - length(NPar) + 1);
  WRITELN(Par);
  IF Par[1] = '&'
  THEN
    BEGIN
      WRITELN('Hello Anonymous!');
      F := TRUE
    END
  ELSE
    BEGIN
      IF length(Par) <> 0 
      THEN
        BEGIN
          WHILE (Par[i] <> '&') AND (i < length(Par))
          DO
            BEGIN
              OutS := OutS + Par[i];
              INC(i)
            END;
          IF Par[i] <> '&' 
          THEN    
            OutS := OutS + Par[i]
        END
      ELSE
        BEGIN
          WRITELN('Hello Anonymous!');
          F := TRUE;  
        END;
      IF (Check = NPar) AND (length(Par) > 0)
      THEN
        WRITELN('Hello dear, ', OutS, '!');
      IF (Check <> NPar) AND (F = FALSE)
      THEN
        WRITELN('Hello Anonymous!')
    END
END. {Hello}