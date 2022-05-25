PROGRAM GetQueryStringParameter_(INPUT, OUTPUT);
USES dos;
  // http://localhost:4001/cgi-bin/test4.cgi/?first_name=Pavel&last_name=Chukhlantsev&age=18

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Str, OutS: STRING;
  I: INTEGER;
BEGIN
  I := 1;
  Str := GetEnv('QUERY_STRING');
  Str := Copy(Str, POS(Key, Str) + length(Key) + 1, Length(Str));
  WHILE (Str[i] <> '&') or (I < length(Str))
  DO
    BEGIN
      OutS := OutS + Str[i];
      inc(I)
    END;
  GetQueryStringParameter := OutS;
END;

BEGIN {Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {Hello}
