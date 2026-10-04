
 	mov r0, #20h ;kaynak dizinin baslangici
	mov 61h,#01h ;en büyük kabulu
	mov r1, #40h ;çift dizisi indisi
	mov 60h, #00h ;sayaç sifirla

 yenielemanoku:
	MOV A,@R0 ;dizinin elemanini oku
	JB ACC.0,sayitek
	//sayi çift bölgesi
	MOV B,#02H
	DIV AB
	MOV @R1,A  ;yeni diziye yükle
	INC R1	  ;yeni dizi indisi artir
	INC 60H  ;sarti saglayanlarin sayaci 1 artir
	LJMP dongukontrol
sayitek:
	CJNE A,61H,esitdegil
	MOV 62H,R0
	LJMP dongukontrol
esitdegil:
	JC dongukontrol
	;yeni sayi büyük
	MOV 61H,A
	MOV 62H,R0
dongukontrol:
	INC R0
	CJNE R0,#3AH,yenielemanoku

	END
