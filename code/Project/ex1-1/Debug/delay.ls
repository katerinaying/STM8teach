   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  56                     ; 3 void delay_ms(u16 t_ms)
  56                     ; 4 {
  58                     	switch	.text
  59  0000               _delay_ms:
  61  0000 89            	pushw	x
  62       00000000      OFST:	set	0
  65  0001 2005          	jra	L13
  66  0003               L72:
  67                     ; 6 			delay_us(1000);
  69  0003 ae03e8        	ldw	x,#1000
  70  0006 ad11          	call	_delay_us
  72  0008               L13:
  73                     ; 5 	while (t_ms--){
  75  0008 1e01          	ldw	x,(OFST+1,sp)
  76  000a 1d0001        	subw	x,#1
  77  000d 1f01          	ldw	(OFST+1,sp),x
  78  000f 1c0001        	addw	x,#1
  79  0012 a30000        	cpw	x,#0
  80  0015 26ec          	jrne	L72
  81                     ; 8 }
  84  0017 85            	popw	x
  85  0018 81            	ret
 128                     ; 10 void delay_us(u16 t_us)
 128                     ; 11 {
 129                     	switch	.text
 130  0019               _delay_us:
 132  0019 89            	pushw	x
 133       00000002      OFST:	set	2
 136                     ; 12 	u16 count=t_us/3;
 138  001a 90ae0003      	ldw	y,#3
 139  001e 65            	divw	x,y
 140  001f 1f01          	ldw	(OFST-1,sp),x
 142  0021               L36:
 143                     ; 13 	while (count--);
 145  0021 1e01          	ldw	x,(OFST-1,sp)
 146  0023 1d0001        	subw	x,#1
 147  0026 1f01          	ldw	(OFST-1,sp),x
 148  0028 1c0001        	addw	x,#1
 149  002b a30000        	cpw	x,#0
 150  002e 26f1          	jrne	L36
 151                     ; 14 }
 154  0030 85            	popw	x
 155  0031 81            	ret
 168                     	xdef	_delay_us
 169                     	xdef	_delay_ms
 188                     	end
