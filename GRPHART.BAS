USEGRAPHIC 9:GCLS
S#=4
P=200
DIM  C(4*4*4,1,1,1)
Q=1
FOR I=0 TO 3
  FOR J=0 TO 3
    FOR K=0 TO 3 
      GPALETTE Q,150-I*50,150-J*50,250-K*70
      Q=Q+1
    NEXT
  NEXT
NEXT
FOR I=0 TO P
  X#=FLOAT#(I)*S#/FLOAT#(P)-S#/2
  FOR J=0 TO P
    Y#=FLOAT#(J)*S#/FLOAT#(P)-S#/2
    A#=0
    B#=0
    FOR K=0 TO 50
      T#=A#*A#-B#*B#+X#
      H#=2*A#*B#+Y#
      A#=T#
      B#=H#
      IF A#*A#+B#*B#>4 THEN    
        PSET I,J,K
        BREAK
      ENDIF
    NEXT
  NEXT
NEXT
WHILE INKEY()=0:WEND
END
