DECLARE SUB TASKS ()
DECLARE SUB SPEAK (text$)
SCREEN 9
CLS

LET QUIT = 1

REM             Here's a test of things
REM             Resolution: 640x350
REM             Column: width 80, height 25

LOCATE 25, 80

REM                     ---------
REM                     GAME LOOP
REM                     ---------
DO
CLS
TASKS
SPEAK ("AND MORE DIALOGUE")
        WHILE INKEY$ = ""
        WEND
LOOP WHILE QUIT = 0
END

SUB SPEAK (text$)
        LOCATE 22, 2
        PRINT ("SPEAKER")
        LOCATE 22, 12
        PRINT (text$)
END SUB

SUB TASKS
        LOCATE 6, 2
        PRINT "FOOD      ";
        PRINT "16"
        LOCATE 7, 2
        PRINT "SNACKS    ";
        PRINT "78"
        LOCATE 8, 2
        PRINT "BEVERAGES ";
        PRINT "98"
        LOCATE 9, 2
        PRINT "COSMETICS ";
        PRINT "48"
        LOCATE 10, 2
        PRINT "MAGAZINES ";
        PRINT "32"
        LOCATE 11, 2
        PRINT "MEDIA     ";
        PRINT "68"
        LOCATE 12, 2
        PRINT "MISC.     ";
        PRINT "48"
END SUB

