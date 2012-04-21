   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  86                     ; 42 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  86                     ; 43 {
  88                     .text:	section	.text,new
  89  0000               _IWDG_WriteAccessCmd:
  91  0000 88            	push	a
  92       00000000      OFST:	set	0
  95                     ; 45     assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  97  0001 a155          	cp	a,#85
  98  0003 2711          	jreq	L21
  99  0005 4d            	tnz	a
 100  0006 270e          	jreq	L21
 101  0008 ae002d        	ldw	x,#45
 102  000b 89            	pushw	x
 103  000c 5f            	clrw	x
 104  000d 89            	pushw	x
 105  000e ae0000        	ldw	x,#L73
 106  0011 cd0000        	call	_assert_failed
 108  0014 5b04          	addw	sp,#4
 109  0016               L21:
 110                     ; 47     IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
 112  0016 7b01          	ld	a,(OFST+1,sp)
 113  0018 c750e0        	ld	20704,a
 114                     ; 48 }
 117  001b 84            	pop	a
 118  001c 81            	ret	
 209                     ; 57 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 209                     ; 58 {
 210                     .text:	section	.text,new
 211  0000               _IWDG_SetPrescaler:
 213  0000 88            	push	a
 214       00000000      OFST:	set	0
 217                     ; 60     assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 219  0001 4d            	tnz	a
 220  0002 2726          	jreq	L42
 221  0004 a101          	cp	a,#1
 222  0006 2722          	jreq	L42
 223  0008 a102          	cp	a,#2
 224  000a 271e          	jreq	L42
 225  000c a103          	cp	a,#3
 226  000e 271a          	jreq	L42
 227  0010 a104          	cp	a,#4
 228  0012 2716          	jreq	L42
 229  0014 a105          	cp	a,#5
 230  0016 2712          	jreq	L42
 231  0018 a106          	cp	a,#6
 232  001a 270e          	jreq	L42
 233  001c ae003c        	ldw	x,#60
 234  001f 89            	pushw	x
 235  0020 5f            	clrw	x
 236  0021 89            	pushw	x
 237  0022 ae0000        	ldw	x,#L73
 238  0025 cd0000        	call	_assert_failed
 240  0028 5b04          	addw	sp,#4
 241  002a               L42:
 242                     ; 62     IWDG->PR = (uint8_t)IWDG_Prescaler;
 244  002a 7b01          	ld	a,(OFST+1,sp)
 245  002c c750e1        	ld	20705,a
 246                     ; 63 }
 249  002f 84            	pop	a
 250  0030 81            	ret	
 282                     ; 72 void IWDG_SetReload(uint8_t IWDG_Reload)
 282                     ; 73 {
 283                     .text:	section	.text,new
 284  0000               _IWDG_SetReload:
 288                     ; 74     IWDG->RLR = IWDG_Reload;
 290  0000 c750e2        	ld	20706,a
 291                     ; 75 }
 294  0003 81            	ret	
 317                     ; 83 void IWDG_ReloadCounter(void)
 317                     ; 84 {
 318                     .text:	section	.text,new
 319  0000               _IWDG_ReloadCounter:
 323                     ; 85     IWDG->KR = IWDG_KEY_REFRESH;
 325  0000 35aa50e0      	mov	20704,#170
 326                     ; 86 }
 329  0004 81            	ret	
 352                     ; 93 void IWDG_Enable(void)
 352                     ; 94 {
 353                     .text:	section	.text,new
 354  0000               _IWDG_Enable:
 358                     ; 95     IWDG->KR = IWDG_KEY_ENABLE;
 360  0000 35cc50e0      	mov	20704,#204
 361                     ; 96 }
 364  0004 81            	ret	
 377                     	xdef	_IWDG_Enable
 378                     	xdef	_IWDG_ReloadCounter
 379                     	xdef	_IWDG_SetReload
 380                     	xdef	_IWDG_SetPrescaler
 381                     	xdef	_IWDG_WriteAccessCmd
 382                     	xref	_assert_failed
 383                     .const:	section	.text
 384  0000               L73:
 385  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 386  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 387  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 388  0036 5f697764672e  	dc.b	"_iwdg.c",0
 408                     	end
