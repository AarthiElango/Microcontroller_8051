ORG 0000H;
	
	MAIN:
	  MOV TMOD,#01H;
	  
	   
	   AGAIN: MOV P1,#0FFH;
	          MOV R1,#0EH;
	          ACALL DELAY;
			  MOV P1,#00H;
			  MOV R1,#0EH;
	          ACALL DELAY;
			  SJMP AGAIN;
			  
              	  
	  
	  DELAY: 
	      
		  MOV TH0,#00H;
		  MOV TL0,#00H;
		  SETB TR0;
			  LOOP: JNB TF0,LOOP;
			  CLR TR0;
			  CLR TF0;
			  DJNZ R1,DELAY;
	         RET
			  
END		        
	