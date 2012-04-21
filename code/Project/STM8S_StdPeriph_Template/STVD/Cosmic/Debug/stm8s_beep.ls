   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 48 void BEEP_DeInit(void)
  50                     ; 49 {
  52                     .text:	section	.text,new
  53  0000               _BEEP_DeInit:
  57                     ; 50     BEEP->CSR = BEEP_CSR_RESET_VALUE;
  59  0000 351f50f3      	mov	20723,#31
  60                     ; 51 }
  63  0004 81            	ret	
 129                     ; 61 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 129                     ; 62 {
 130                     .text:	section	.text,new
 131  0000               _BEEP_Init:
 133  0000 88            	push	a
 134       00000000      OFST:	set	0
 137                     ; 65     assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 139  0001 4d            	tnz	a
 140  0002 2716          	jreq	L41
 141  0004 a140          	cp	a,#64
 142  0006 2712          	jreq	L41
 143  0008 a180          	cp	a,#128
 144  000a 270e          	jreq	L41
 145  000c ae0041        	ldw	x,#65
 146  000f 89            	pushw	x
 147  0010 5f            	clrw	x
 148  0011 89            	pushw	x
 149  0012 ae000c        	ldw	x,#L15
 150  0015 cd0000        	call	_assert_failed
 152  0018 5b04          	addw	sp,#4
 153  001a               L41:
 154                     ; 68     if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 156  001a c650f3        	ld	a,20723
 157  001d a41f          	and	a,#31
 158  001f a11f          	cp	a,#31
 159  0021 2610          	jrne	L35
 160                     ; 70         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 162  0023 c650f3        	ld	a,20723
 163  0026 a4e0          	and	a,#224
 164  0028 c750f3        	ld	20723,a
 165                     ; 71         BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 167  002b c650f3        	ld	a,20723
 168  002e aa0b          	or	a,#11
 169  0030 c750f3        	ld	20723,a
 170  0033               L35:
 171                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 173  0033 c650f3        	ld	a,20723
 174  0036 a43f          	and	a,#63
 175  0038 c750f3        	ld	20723,a
 176                     ; 76     BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 178  003b c650f3        	ld	a,20723
 179  003e 1a01          	or	a,(OFST+1,sp)
 180  0040 c750f3        	ld	20723,a
 181                     ; 78 }
 184  0043 84            	pop	a
 185  0044 81            	ret	
 240                     ; 87 void BEEP_Cmd(FunctionalState NewState)
 240                     ; 88 {
 241                     .text:	section	.text,new
 242  0000               _BEEP_Cmd:
 246                     ; 89     if (NewState != DISABLE)
 248  0000 4d            	tnz	a
 249  0001 2705          	jreq	L301
 250                     ; 92         BEEP->CSR |= BEEP_CSR_BEEPEN;
 252  0003 721a50f3      	bset	20723,#5
 255  0007 81            	ret	
 256  0008               L301:
 257                     ; 97         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 259  0008 721b50f3      	bres	20723,#5
 260                     ; 99 }
 263  000c 81            	ret	
 311                     .const:	section	.text
 312  0000               L62:
 313  0000 0001adb0      	dc.l	110000
 314  0004               L03:
 315  0004 000249f1      	dc.l	150001
 316  0008               L63:
 317  0008 000003e8      	dc.l	1000
 318                     ; 114 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 318                     ; 115 {
 319                     .text:	section	.text,new
 320  0000               _BEEP_LSICalibrationConfig:
 322  0000 5206          	subw	sp,#6
 323       00000006      OFST:	set	6
 326                     ; 121     assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 328  0002 96            	ldw	x,sp
 329  0003 1c0009        	addw	x,#OFST+3
 330  0006 cd0000        	call	c_ltor
 332  0009 ae0000        	ldw	x,#L62
 333  000c cd0000        	call	c_lcmp
 335  000f 250f          	jrult	L42
 336  0011 96            	ldw	x,sp
 337  0012 1c0009        	addw	x,#OFST+3
 338  0015 cd0000        	call	c_ltor
 340  0018 ae0004        	ldw	x,#L03
 341  001b cd0000        	call	c_lcmp
 343  001e 250e          	jrult	L23
 344  0020               L42:
 345  0020 ae0079        	ldw	x,#121
 346  0023 89            	pushw	x
 347  0024 5f            	clrw	x
 348  0025 89            	pushw	x
 349  0026 ae000c        	ldw	x,#L15
 350  0029 cd0000        	call	_assert_failed
 352  002c 5b04          	addw	sp,#4
 353  002e               L23:
 354                     ; 123     lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 356  002e 96            	ldw	x,sp
 357  002f 1c0009        	addw	x,#OFST+3
 358  0032 cd0000        	call	c_ltor
 360  0035 ae0008        	ldw	x,#L63
 361  0038 cd0000        	call	c_ludv
 363  003b be02          	ldw	x,c_lreg+2
 364  003d 1f03          	ldw	(OFST-3,sp),x
 365                     ; 127     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 367  003f c650f3        	ld	a,20723
 368  0042 a4e0          	and	a,#224
 369  0044 c750f3        	ld	20723,a
 370                     ; 129     A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 372  0047 54            	srlw	x
 373  0048 54            	srlw	x
 374  0049 54            	srlw	x
 375  004a 1f05          	ldw	(OFST-1,sp),x
 376                     ; 131     if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 378  004c 58            	sllw	x
 379  004d 58            	sllw	x
 380  004e 58            	sllw	x
 381  004f 1f01          	ldw	(OFST-5,sp),x
 382  0051 1e03          	ldw	x,(OFST-3,sp)
 383  0053 72f001        	subw	x,(OFST-5,sp)
 384  0056 1605          	ldw	y,(OFST-1,sp)
 385  0058 9058          	sllw	y
 386  005a 905c          	incw	y
 387  005c cd0000        	call	c_imul
 389  005f 1605          	ldw	y,(OFST-1,sp)
 390  0061 9058          	sllw	y
 391  0063 9058          	sllw	y
 392  0065 bf00          	ldw	c_x,x
 393  0067 9058          	sllw	y
 394  0069 90b300        	cpw	y,c_x
 395  006c 7b06          	ld	a,(OFST+0,sp)
 396  006e 2504          	jrult	L721
 397                     ; 133         BEEP->CSR |= (uint8_t)(A - 2U);
 399  0070 a002          	sub	a,#2
 401  0072 2001          	jra	L131
 402  0074               L721:
 403                     ; 137         BEEP->CSR |= (uint8_t)(A - 1U);
 405  0074 4a            	dec	a
 406  0075               L131:
 407  0075 ca50f3        	or	a,20723
 408  0078 c750f3        	ld	20723,a
 409                     ; 139 }
 412  007b 5b06          	addw	sp,#6
 413  007d 81            	ret	
 426                     	xdef	_BEEP_LSICalibrationConfig
 427                     	xdef	_BEEP_Cmd
 428                     	xdef	_BEEP_Init
 429                     	xdef	_BEEP_DeInit
 430                     	xref	_assert_failed
 431                     	switch	.const
 432  000c               L15:
 433  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 434  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 435  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
 436  0042 5f626565702e  	dc.b	"_beep.c",0
 437                     	xref.b	c_lreg
 438                     	xref.b	c_x
 458                     	xref	c_imul
 459                     	xref	c_ludv
 460                     	xref	c_lcmp
 461                     	xref	c_ltor
 462                     	end
