ORG 00H
	
MAIN: SETB P2.0
	       CALL DELAY 
		   CLR P2.0
		   CALL DELAY 
		   SJMP MAIN
		   
		   DELAY: MOV R7,#255
		   D1:MOV R6,#255
              DJNZ R6,$
              DJNZ R7,D1
              RET 
			  
END