   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
 125                     ; 48 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 125                     ; 49 {
 127                     .text:	section	.text,new
 128  0000               _RST_GetFlagStatus:
 130  0000 88            	push	a
 131       00000000      OFST:	set	0
 134                     ; 51     assert_param(IS_RST_FLAG_OK(RST_Flag));
 136  0001 a110          	cp	a,#16
 137  0003 271d          	jreq	L21
 138  0005 a108          	cp	a,#8
 139  0007 2719          	jreq	L21
 140  0009 a104          	cp	a,#4
 141  000b 2715          	jreq	L21
 142  000d a102          	cp	a,#2
 143  000f 2711          	jreq	L21
 144  0011 4a            	dec	a
 145  0012 270e          	jreq	L21
 146  0014 ae0033        	ldw	x,#51
 147  0017 89            	pushw	x
 148  0018 5f            	clrw	x
 149  0019 89            	pushw	x
 150  001a ae0000        	ldw	x,#L55
 151  001d cd0000        	call	_assert_failed
 153  0020 5b04          	addw	sp,#4
 154  0022               L21:
 155                     ; 55     return ((FlagStatus)((uint8_t)RST->SR & (uint8_t)RST_Flag));
 157  0022 c650b3        	ld	a,20659
 158  0025 1401          	and	a,(OFST+1,sp)
 161  0027 5b01          	addw	sp,#1
 162  0029 81            	ret	
 198                     ; 64 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 198                     ; 65 {
 199                     .text:	section	.text,new
 200  0000               _RST_ClearFlag:
 202  0000 88            	push	a
 203       00000000      OFST:	set	0
 206                     ; 67     assert_param(IS_RST_FLAG_OK(RST_Flag));
 208  0001 a110          	cp	a,#16
 209  0003 271d          	jreq	L42
 210  0005 a108          	cp	a,#8
 211  0007 2719          	jreq	L42
 212  0009 a104          	cp	a,#4
 213  000b 2715          	jreq	L42
 214  000d a102          	cp	a,#2
 215  000f 2711          	jreq	L42
 216  0011 4a            	dec	a
 217  0012 270e          	jreq	L42
 218  0014 ae0043        	ldw	x,#67
 219  0017 89            	pushw	x
 220  0018 5f            	clrw	x
 221  0019 89            	pushw	x
 222  001a ae0000        	ldw	x,#L55
 223  001d cd0000        	call	_assert_failed
 225  0020 5b04          	addw	sp,#4
 226  0022               L42:
 227                     ; 69     RST->SR = (uint8_t)RST_Flag;
 229  0022 7b01          	ld	a,(OFST+1,sp)
 230  0024 c750b3        	ld	20659,a
 231                     ; 70 }
 234  0027 84            	pop	a
 235  0028 81            	ret	
 248                     	xdef	_RST_ClearFlag
 249                     	xdef	_RST_GetFlagStatus
 250                     	xref	_assert_failed
 251                     .const:	section	.text
 252  0000               L55:
 253  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 254  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 255  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 256  0036 5f7273742e63  	dc.b	"_rst.c",0
 276                     	end
