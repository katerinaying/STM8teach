   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  22                     .const:	section	.text
  23  0000               _APR_Array:
  24  0000 00            	dc.b	0
  25  0001 1e            	dc.b	30
  26  0002 1e            	dc.b	30
  27  0003 1e            	dc.b	30
  28  0004 1e            	dc.b	30
  29  0005 1e            	dc.b	30
  30  0006 1e            	dc.b	30
  31  0007 1e            	dc.b	30
  32  0008 1e            	dc.b	30
  33  0009 1e            	dc.b	30
  34  000a 1e            	dc.b	30
  35  000b 1e            	dc.b	30
  36  000c 1e            	dc.b	30
  37  000d 3d            	dc.b	61
  38  000e 17            	dc.b	23
  39  000f 17            	dc.b	23
  40  0010 3e            	dc.b	62
  41  0011               _TBR_Array:
  42  0011 00            	dc.b	0
  43  0012 01            	dc.b	1
  44  0013 02            	dc.b	2
  45  0014 03            	dc.b	3
  46  0015 04            	dc.b	4
  47  0016 05            	dc.b	5
  48  0017 06            	dc.b	6
  49  0018 07            	dc.b	7
  50  0019 08            	dc.b	8
  51  001a 09            	dc.b	9
  52  001b 0a            	dc.b	10
  53  001c 0b            	dc.b	11
  54  001d 0c            	dc.b	12
  55  001e 0c            	dc.b	12
  56  001f 0e            	dc.b	14
  57  0020 0f            	dc.b	15
  58  0021 0f            	dc.b	15
  87                     ; 67 void AWU_DeInit(void)
  87                     ; 68 {
  89                     .text:	section	.text,new
  90  0000               _AWU_DeInit:
  94                     ; 69     AWU->CSR = AWU_CSR_RESET_VALUE;
  96  0000 725f50f0      	clr	20720
  97                     ; 70     AWU->APR = AWU_APR_RESET_VALUE;
  99  0004 353f50f1      	mov	20721,#63
 100                     ; 71     AWU->TBR = AWU_TBR_RESET_VALUE;
 102  0008 725f50f2      	clr	20722
 103                     ; 72 }
 106  000c 81            	ret	
 269                     ; 82 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 269                     ; 83 {
 270                     .text:	section	.text,new
 271  0000               _AWU_Init:
 273  0000 88            	push	a
 274       00000000      OFST:	set	0
 277                     ; 86     assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 279  0001 4d            	tnz	a
 280  0002 274e          	jreq	L41
 281  0004 a101          	cp	a,#1
 282  0006 274a          	jreq	L41
 283  0008 a102          	cp	a,#2
 284  000a 2746          	jreq	L41
 285  000c a103          	cp	a,#3
 286  000e 2742          	jreq	L41
 287  0010 a104          	cp	a,#4
 288  0012 273e          	jreq	L41
 289  0014 a105          	cp	a,#5
 290  0016 273a          	jreq	L41
 291  0018 a106          	cp	a,#6
 292  001a 2736          	jreq	L41
 293  001c a107          	cp	a,#7
 294  001e 2732          	jreq	L41
 295  0020 a108          	cp	a,#8
 296  0022 272e          	jreq	L41
 297  0024 a109          	cp	a,#9
 298  0026 272a          	jreq	L41
 299  0028 a10a          	cp	a,#10
 300  002a 2726          	jreq	L41
 301  002c a10b          	cp	a,#11
 302  002e 2722          	jreq	L41
 303  0030 a10c          	cp	a,#12
 304  0032 271e          	jreq	L41
 305  0034 a10d          	cp	a,#13
 306  0036 271a          	jreq	L41
 307  0038 a10e          	cp	a,#14
 308  003a 2716          	jreq	L41
 309  003c a10f          	cp	a,#15
 310  003e 2712          	jreq	L41
 311  0040 a110          	cp	a,#16
 312  0042 270e          	jreq	L41
 313  0044 ae0056        	ldw	x,#86
 314  0047 89            	pushw	x
 315  0048 5f            	clrw	x
 316  0049 89            	pushw	x
 317  004a ae002e        	ldw	x,#L501
 318  004d cd0000        	call	_assert_failed
 320  0050 5b04          	addw	sp,#4
 321  0052               L41:
 322                     ; 89     AWU->CSR |= AWU_CSR_AWUEN;
 324  0052 721850f0      	bset	20720,#4
 325                     ; 92     AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 327  0056 c650f2        	ld	a,20722
 328  0059 a4f0          	and	a,#240
 329  005b c750f2        	ld	20722,a
 330                     ; 93     AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 332  005e 5f            	clrw	x
 333  005f 7b01          	ld	a,(OFST+1,sp)
 334  0061 97            	ld	xl,a
 335  0062 c650f2        	ld	a,20722
 336  0065 da0011        	or	a,(_TBR_Array,x)
 337  0068 c750f2        	ld	20722,a
 338                     ; 96     AWU->APR &= (uint8_t)(~AWU_APR_APR);
 340  006b c650f1        	ld	a,20721
 341  006e a4c0          	and	a,#192
 342  0070 c750f1        	ld	20721,a
 343                     ; 97     AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 345  0073 5f            	clrw	x
 346  0074 7b01          	ld	a,(OFST+1,sp)
 347  0076 97            	ld	xl,a
 348  0077 c650f1        	ld	a,20721
 349  007a da0000        	or	a,(_APR_Array,x)
 350  007d c750f1        	ld	20721,a
 351                     ; 99 }
 354  0080 84            	pop	a
 355  0081 81            	ret	
 410                     ; 108 void AWU_Cmd(FunctionalState NewState)
 410                     ; 109 {
 411                     .text:	section	.text,new
 412  0000               _AWU_Cmd:
 416                     ; 110     if (NewState != DISABLE)
 418  0000 4d            	tnz	a
 419  0001 2705          	jreq	L531
 420                     ; 113         AWU->CSR |= AWU_CSR_AWUEN;
 422  0003 721850f0      	bset	20720,#4
 425  0007 81            	ret	
 426  0008               L531:
 427                     ; 118         AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 429  0008 721950f0      	bres	20720,#4
 430                     ; 120 }
 433  000c 81            	ret	
 481                     	switch	.const
 482  0022               L62:
 483  0022 0001adb0      	dc.l	110000
 484  0026               L03:
 485  0026 000249f1      	dc.l	150001
 486  002a               L63:
 487  002a 000003e8      	dc.l	1000
 488                     ; 135 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 488                     ; 136 {
 489                     .text:	section	.text,new
 490  0000               _AWU_LSICalibrationConfig:
 492  0000 5206          	subw	sp,#6
 493       00000006      OFST:	set	6
 496                     ; 138     uint16_t lsifreqkhz = 0x0;
 498                     ; 139     uint16_t A = 0x0;
 500                     ; 142     assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 502  0002 96            	ldw	x,sp
 503  0003 1c0009        	addw	x,#OFST+3
 504  0006 cd0000        	call	c_ltor
 506  0009 ae0022        	ldw	x,#L62
 507  000c cd0000        	call	c_lcmp
 509  000f 250f          	jrult	L42
 510  0011 96            	ldw	x,sp
 511  0012 1c0009        	addw	x,#OFST+3
 512  0015 cd0000        	call	c_ltor
 514  0018 ae0026        	ldw	x,#L03
 515  001b cd0000        	call	c_lcmp
 517  001e 250e          	jrult	L23
 518  0020               L42:
 519  0020 ae008e        	ldw	x,#142
 520  0023 89            	pushw	x
 521  0024 5f            	clrw	x
 522  0025 89            	pushw	x
 523  0026 ae002e        	ldw	x,#L501
 524  0029 cd0000        	call	_assert_failed
 526  002c 5b04          	addw	sp,#4
 527  002e               L23:
 528                     ; 144     lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 530  002e 96            	ldw	x,sp
 531  002f 1c0009        	addw	x,#OFST+3
 532  0032 cd0000        	call	c_ltor
 534  0035 ae002a        	ldw	x,#L63
 535  0038 cd0000        	call	c_ludv
 537  003b be02          	ldw	x,c_lreg+2
 538  003d 1f03          	ldw	(OFST-3,sp),x
 539                     ; 148     A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 541  003f 54            	srlw	x
 542  0040 54            	srlw	x
 543  0041 1f05          	ldw	(OFST-1,sp),x
 544                     ; 150     if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 546  0043 58            	sllw	x
 547  0044 58            	sllw	x
 548  0045 1f01          	ldw	(OFST-5,sp),x
 549  0047 1e03          	ldw	x,(OFST-3,sp)
 550  0049 72f001        	subw	x,(OFST-5,sp)
 551  004c 1605          	ldw	y,(OFST-1,sp)
 552  004e 9058          	sllw	y
 553  0050 905c          	incw	y
 554  0052 cd0000        	call	c_imul
 556  0055 1605          	ldw	y,(OFST-1,sp)
 557  0057 9058          	sllw	y
 558  0059 bf00          	ldw	c_x,x
 559  005b 9058          	sllw	y
 560  005d 90b300        	cpw	y,c_x
 561  0060 7b06          	ld	a,(OFST+0,sp)
 562  0062 2504          	jrult	L161
 563                     ; 152         AWU->APR = (uint8_t)(A - 2U);
 565  0064 a002          	sub	a,#2
 567  0066 2001          	jra	L361
 568  0068               L161:
 569                     ; 156         AWU->APR = (uint8_t)(A - 1U);
 571  0068 4a            	dec	a
 572  0069               L361:
 573  0069 c750f1        	ld	20721,a
 574                     ; 158 }
 577  006c 5b06          	addw	sp,#6
 578  006e 81            	ret	
 601                     ; 165 void AWU_IdleModeEnable(void)
 601                     ; 166 {
 602                     .text:	section	.text,new
 603  0000               _AWU_IdleModeEnable:
 607                     ; 168     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 609  0000 721950f0      	bres	20720,#4
 610                     ; 171     AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 612  0004 35f050f2      	mov	20722,#240
 613                     ; 172 }
 616  0008 81            	ret	
 660                     ; 180 FlagStatus AWU_GetFlagStatus(void)
 660                     ; 181 {
 661                     .text:	section	.text,new
 662  0000               _AWU_GetFlagStatus:
 666                     ; 182     return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 668  0000 720a50f002    	btjt	20720,#5,L44
 669  0005 4f            	clr	a
 671  0006 81            	ret	
 672  0007               L44:
 673  0007 a601          	ld	a,#1
 676  0009 81            	ret	
 711                     	xdef	_TBR_Array
 712                     	xdef	_APR_Array
 713                     	xdef	_AWU_GetFlagStatus
 714                     	xdef	_AWU_IdleModeEnable
 715                     	xdef	_AWU_LSICalibrationConfig
 716                     	xdef	_AWU_Cmd
 717                     	xdef	_AWU_Init
 718                     	xdef	_AWU_DeInit
 719                     	xref	_assert_failed
 720                     	switch	.const
 721  002e               L501:
 722  002e 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 723  0040 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 724  0052 685f64726976  	dc.b	"h_driver\src\stm8s"
 725  0064 5f6177752e63  	dc.b	"_awu.c",0
 726                     	xref.b	c_lreg
 727                     	xref.b	c_x
 747                     	xref	c_imul
 748                     	xref	c_ludv
 749                     	xref	c_lcmp
 750                     	xref	c_ltor
 751                     	end
