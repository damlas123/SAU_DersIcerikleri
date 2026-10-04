
	DEC R1		;1 fazlasi oldugu icin 1 azalttim
	MOV 71H,R1 ;3 e bölünenlerin sayisi
;3 e bölünenlerin en büyügünü bulma
	INC 71h ;sayac kontrolü icin 
	MOV 70H,50H ;ilk elemani en büyük kabul ettim
	MOV R1,#51h
tekrar2:	
	MOV A,@R1
	CJNE A,70H,esitdegil
esitdegil:
	JC yenisayikucuk
	MOV B,#03h
	DIV AB
	MOV 70h,A
yenisayikucuk: 
   	DJNZ 71h,tekrar2
	END

