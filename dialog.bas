CLS
SCREEN 9
COLOR 15, 15

file$ = "C:\mint\dialog.txt"

skip$ = ""
LOCATE 22
OPEN file$ FOR INPUT AS 1:
        LINE INPUT #1, char$
        PRINT " " + char$;
        LET S = 0
        DO WHILE NOT EOF(1)
                LINE INPUT #1, l$
                IF skip$ = "" THEN
                        IF l$ = "END" THEN skip$ = "SKIP"
                        length = LEN(l$)
                        IF length > 4 THEN
                                FOR t = 1 TO 80
                                        LOCATE 23, t
                                        IF t <= length THEN
                                                PRINT MID$(l$, t, 1);
                                                PLAY "O1 MS L64 A."
                                        ELSE
                                                PRINT " ";
                                        END IF
                                NEXT
                                DO
                                        in$ = UCASE$(INKEY$)
                                        LOOP WHILE in$ = ""
                                        PLAY "O4 MS L64 C."
                        ELSEIF length = 4 THEN
                                IF LEFT$(l$, 1) = in$ THEN
                                        skip$ = RIGHT$(l$, 3)
                                        PLAY "MF O3 L16 C."
                                END IF
                        END IF
                ELSEIF skip$ = l$ THEN skip$ = ""
                END IF
        LOOP
CLOSE 1

END



