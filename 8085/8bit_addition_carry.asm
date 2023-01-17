;8-bit Addition(Carry)

	MVI C 00H
	LDA 2000H
	MOV B,A
	LDA 2001H
	ADD B
	JNC GO
	INR C
	GO: STA 2002H
	    MOV A,C
	    STA 2003H
	    HLT    	

;Using opcode
	2000: FF 
	2001: C0
	2002: 00
	2003: 00
	2004: 0E
	2005: 00
	2006: 3A
	2007: 00
	2008: 20
	2009: 47
	200A: 3A
	200B: 01
	200C: 20
	200D: 80
	200E: D2
	200F: 12
	2010: 20
	2011: 79
	2012: 32
	2013: 03
	2014: 20
	2015: 76
	2016: 32
	2017: 03
	2018: 20
	2019: 76