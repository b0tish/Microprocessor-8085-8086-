;16-bit Subtraction
	
	MVI C,00H
	LHLD 2000H
	XHCG
	LHLD 2002H
	MOV A,L
	SUB E
	STA 2004H
	MOV A,H
	SBB D
	JNC GO
	INR C
	GO:STA 2005H
		MOV A,C
		STA 2006H
		HLT


;Using opcode
	2000: 1A 
	2001: 2A
	2002: 48
	2003: AB
	2004: 00
	2005: 00
	2006: 00
	2007: 0E
	2008: 00
	2009: 2A
	200A: 00
	200B: 20
	200C: EB
	200D: 2A
	200E: 02
	200F: 20
	2010: 7D
	2011: 93
	2012: 32
	2013: 04
	2014: 20
	2015: 7C
	2016: 9A
	2017: D2
	2018: 1B
	2019: 20
	201A: 0C
	201B: 32
	201C: 05
	201D: 20
	201E: 79
	201F: 32
	2020: 06
	2021: 20
	2022: 76