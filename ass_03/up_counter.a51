ORG 0000H;
	
MOV TMOD,#01H;
MOV R1,#00H;
LOOP: INC R1;
      
      MOV P2,R1;
	  ACALL DELAY;
	  CJNE R1,#63H,LOOP;
	  SJMP EXIT;
DELAY: 
	  MOV R2,#255
D1:MOV R3, #255
D2:DJNZ R3, D2
DJNZ R2, D1
	          RET
			  EXIT:	  
END
	
