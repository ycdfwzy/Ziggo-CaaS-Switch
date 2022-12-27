PROGRAM program0
  VAR
    PB1 AT %IX0.0 : BOOL;
    LED AT %QX0.0 : BOOL;
  END_VAR

  LED := PB1;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION