SCREEN 9
COLOR 0, 15
CLS

file$ = "C:\MINT\dude.bpx"

LET y = 0
LET b = -1
OPEN file$ FOR INPUT AS 1
    DO WHILE NOT EOF(1)
        LINE INPUT #1, l$
        LET t = VAL(l$)
        t = t * 2
        IF b = 1 THEN LINE (x, y)-(x + t, y + 1), 1, BF
        b = b * -1
        x = x + t
        IF x > 175 THEN
                y = y + 2
                x = 0
                b = b * -1
        END IF
    LOOP
CLOSE 1

