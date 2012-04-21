   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 61 void I2C_DeInit(void)
  50                     ; 62 {
  52                     .text:	section	.text,new
  53  0000               _I2C_DeInit:
  57                     ; 63   I2C->CR1 = I2C_CR1_RESET_VALUE;
  59  0000 725f5210      	clr	21008
  60                     ; 64   I2C->CR2 = I2C_CR2_RESET_VALUE;
  62  0004 725f5211      	clr	21009
  63                     ; 65   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  65  0008 725f5212      	clr	21010
  66                     ; 66   I2C->OARL = I2C_OARL_RESET_VALUE;
  68  000c 725f5213      	clr	21011
  69                     ; 67   I2C->OARH = I2C_OARH_RESET_VALUE;
  71  0010 725f5214      	clr	21012
  72                     ; 68   I2C->ITR = I2C_ITR_RESET_VALUE;
  74  0014 725f521a      	clr	21018
  75                     ; 69   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  77  0018 725f521b      	clr	21019
  78                     ; 70   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  80  001c 725f521c      	clr	21020
  81                     ; 71   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  83  0020 3502521d      	mov	21021,#2
  84                     ; 72 }
  87  0024 81            	ret	
 255                     .const:	section	.text
 256  0000               L65:
 257  0000 00061a81      	dc.l	400001
 258  0004               L46:
 259  0004 000186a1      	dc.l	100001
 260  0008               L66:
 261  0008 000f4240      	dc.l	1000000
 262                     ; 90 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 262                     ; 91               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 262                     ; 92               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 262                     ; 93 {
 263                     .text:	section	.text,new
 264  0000               _I2C_Init:
 266  0000 5209          	subw	sp,#9
 267       00000009      OFST:	set	9
 270                     ; 94   uint16_t result = 0x0004;
 272                     ; 95   uint16_t tmpval = 0;
 274                     ; 96   uint8_t tmpccrh = 0;
 276  0002 0f07          	clr	(OFST-2,sp)
 277                     ; 99   assert_param(IS_I2C_ACK_OK(Ack));
 279  0004 7b13          	ld	a,(OFST+10,sp)
 280  0006 270e          	jreq	L41
 281  0008 a101          	cp	a,#1
 282  000a 270a          	jreq	L41
 283  000c a102          	cp	a,#2
 284  000e 2706          	jreq	L41
 285  0010 ae0063        	ldw	x,#99
 286  0013 cd015b        	call	LC001
 287  0016               L41:
 288                     ; 100   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 290  0016 7b14          	ld	a,(OFST+11,sp)
 291  0018 270a          	jreq	L42
 292  001a a180          	cp	a,#128
 293  001c 2706          	jreq	L42
 294  001e ae0064        	ldw	x,#100
 295  0021 cd015b        	call	LC001
 296  0024               L42:
 297                     ; 101   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 299  0024 1e10          	ldw	x,(OFST+7,sp)
 300  0026 a30400        	cpw	x,#1024
 301  0029 2506          	jrult	L23
 302  002b ae0065        	ldw	x,#101
 303  002e cd015b        	call	LC001
 304  0031               L23:
 305                     ; 102   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 307  0031 7b12          	ld	a,(OFST+9,sp)
 308  0033 270a          	jreq	L24
 309  0035 a140          	cp	a,#64
 310  0037 2706          	jreq	L24
 311  0039 ae0066        	ldw	x,#102
 312  003c cd015b        	call	LC001
 313  003f               L24:
 314                     ; 103   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 316  003f 7b15          	ld	a,(OFST+12,sp)
 317  0041 2704          	jreq	L64
 318  0043 a119          	cp	a,#25
 319  0045 2506          	jrult	L05
 320  0047               L64:
 321  0047 ae0067        	ldw	x,#103
 322  004a cd015b        	call	LC001
 323  004d               L05:
 324                     ; 104   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 326  004d 96            	ldw	x,sp
 327  004e 1c000c        	addw	x,#OFST+3
 328  0051 cd0000        	call	c_lzmp
 330  0054 270f          	jreq	L45
 331  0056 96            	ldw	x,sp
 332  0057 1c000c        	addw	x,#OFST+3
 333  005a cd0000        	call	c_ltor
 335  005d ae0000        	ldw	x,#L65
 336  0060 cd0000        	call	c_lcmp
 338  0063 2506          	jrult	L06
 339  0065               L45:
 340  0065 ae0068        	ldw	x,#104
 341  0068 cd015b        	call	LC001
 342  006b               L06:
 343                     ; 109   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 345  006b c65212        	ld	a,21010
 346  006e a4c0          	and	a,#192
 347  0070 c75212        	ld	21010,a
 348                     ; 111   I2C->FREQR |= InputClockFrequencyMHz;
 350  0073 c65212        	ld	a,21010
 351  0076 1a15          	or	a,(OFST+12,sp)
 352  0078 c75212        	ld	21010,a
 353                     ; 115   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 355  007b 72115210      	bres	21008,#0
 356                     ; 118   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 358  007f c6521c        	ld	a,21020
 359  0082 a430          	and	a,#48
 360  0084 c7521c        	ld	21020,a
 361                     ; 119   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 363  0087 725f521b      	clr	21019
 364                     ; 122   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 366  008b 96            	ldw	x,sp
 367  008c 1c000c        	addw	x,#OFST+3
 368  008f cd0000        	call	c_ltor
 370  0092 ae0004        	ldw	x,#L46
 371  0095 cd0000        	call	c_lcmp
 373  0098 2560          	jrult	L711
 374                     ; 125     tmpccrh = I2C_CCRH_FS;
 376  009a a680          	ld	a,#128
 377  009c 6b07          	ld	(OFST-2,sp),a
 378                     ; 127     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 380  009e 96            	ldw	x,sp
 381  009f 0d12          	tnz	(OFST+9,sp)
 382  00a1 261d          	jrne	L121
 383                     ; 130       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 385  00a3 1c000c        	addw	x,#OFST+3
 386  00a6 cd0000        	call	c_ltor
 388  00a9 a603          	ld	a,#3
 389  00ab cd0000        	call	c_smul
 391  00ae 96            	ldw	x,sp
 392  00af 5c            	incw	x
 393  00b0 cd0000        	call	c_rtol
 395  00b3 7b15          	ld	a,(OFST+12,sp)
 396  00b5 cd0167        	call	LC002
 398  00b8 96            	ldw	x,sp
 399  00b9 cd0175        	call	LC003
 400  00bc 1f08          	ldw	(OFST-1,sp),x
 402  00be 2021          	jra	L321
 403  00c0               L121:
 404                     ; 135       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 406  00c0 1c000c        	addw	x,#OFST+3
 407  00c3 cd0000        	call	c_ltor
 409  00c6 a619          	ld	a,#25
 410  00c8 cd0000        	call	c_smul
 412  00cb 96            	ldw	x,sp
 413  00cc 5c            	incw	x
 414  00cd cd0000        	call	c_rtol
 416  00d0 7b15          	ld	a,(OFST+12,sp)
 417  00d2 cd0167        	call	LC002
 419  00d5 96            	ldw	x,sp
 420  00d6 cd0175        	call	LC003
 421  00d9 1f08          	ldw	(OFST-1,sp),x
 422                     ; 137       tmpccrh |= I2C_CCRH_DUTY;
 424  00db 7b07          	ld	a,(OFST-2,sp)
 425  00dd aa40          	or	a,#64
 426  00df 6b07          	ld	(OFST-2,sp),a
 427  00e1               L321:
 428                     ; 141     if (result < (uint16_t)0x01)
 430  00e1 1e08          	ldw	x,(OFST-1,sp)
 431  00e3 2603          	jrne	L521
 432                     ; 144       result = (uint16_t)0x0001;
 434  00e5 5c            	incw	x
 435  00e6 1f08          	ldw	(OFST-1,sp),x
 436  00e8               L521:
 437                     ; 150     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 439  00e8 7b15          	ld	a,(OFST+12,sp)
 440  00ea 97            	ld	xl,a
 441  00eb a603          	ld	a,#3
 442  00ed 42            	mul	x,a
 443  00ee a60a          	ld	a,#10
 444  00f0 cd0000        	call	c_sdivx
 446  00f3 5c            	incw	x
 447  00f4 1f05          	ldw	(OFST-4,sp),x
 448                     ; 151     I2C->TRISER = (uint8_t)tmpval;
 450  00f6 7b06          	ld	a,(OFST-3,sp)
 452  00f8 2028          	jra	L721
 453  00fa               L711:
 454                     ; 158     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 456  00fa 96            	ldw	x,sp
 457  00fb 1c000c        	addw	x,#OFST+3
 458  00fe cd0000        	call	c_ltor
 460  0101 3803          	sll	c_lreg+3
 461  0103 3902          	rlc	c_lreg+2
 462  0105 3901          	rlc	c_lreg+1
 463  0107 96            	ldw	x,sp
 464  0108 3900          	rlc	c_lreg
 465  010a 5c            	incw	x
 466  010b cd0000        	call	c_rtol
 468  010e 7b15          	ld	a,(OFST+12,sp)
 469  0110 ad55          	call	LC002
 471  0112 96            	ldw	x,sp
 472  0113 ad60          	call	LC003
 473                     ; 161     if (result < (uint16_t)0x0004)
 475  0115 a30004        	cpw	x,#4
 476  0118 2403          	jruge	L131
 477                     ; 164       result = (uint16_t)0x0004;
 479  011a ae0004        	ldw	x,#4
 480  011d               L131:
 481  011d 1f08          	ldw	(OFST-1,sp),x
 482                     ; 170     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 484  011f 7b15          	ld	a,(OFST+12,sp)
 485  0121 4c            	inc	a
 486  0122               L721:
 487  0122 c7521d        	ld	21021,a
 488                     ; 175   I2C->CCRL = (uint8_t)result;
 490  0125 7b09          	ld	a,(OFST+0,sp)
 491  0127 c7521b        	ld	21019,a
 492                     ; 176   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 494  012a 7b08          	ld	a,(OFST-1,sp)
 495  012c a40f          	and	a,#15
 496  012e 1a07          	or	a,(OFST-2,sp)
 497  0130 c7521c        	ld	21020,a
 498                     ; 179   I2C->CR1 |= I2C_CR1_PE;
 500  0133 72105210      	bset	21008,#0
 501                     ; 182   I2C_AcknowledgeConfig(Ack);
 503  0137 7b13          	ld	a,(OFST+10,sp)
 504  0139 cd0000        	call	_I2C_AcknowledgeConfig
 506                     ; 185   I2C->OARL = (uint8_t)(OwnAddress);
 508  013c 7b11          	ld	a,(OFST+8,sp)
 509  013e c75213        	ld	21011,a
 510                     ; 186   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 510                     ; 187                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 512  0141 7b10          	ld	a,(OFST+7,sp)
 513  0143 a403          	and	a,#3
 514  0145 97            	ld	xl,a
 515  0146 4f            	clr	a
 516  0147 02            	rlwa	x,a
 517  0148 4f            	clr	a
 518  0149 01            	rrwa	x,a
 519  014a 48            	sll	a
 520  014b 59            	rlcw	x
 521  014c 9f            	ld	a,xl
 522  014d 6b04          	ld	(OFST-5,sp),a
 523  014f 7b14          	ld	a,(OFST+11,sp)
 524  0151 aa40          	or	a,#64
 525  0153 1a04          	or	a,(OFST-5,sp)
 526  0155 c75214        	ld	21012,a
 527                     ; 188 }
 530  0158 5b09          	addw	sp,#9
 531  015a 81            	ret	
 532  015b               LC001:
 533  015b 89            	pushw	x
 534  015c 5f            	clrw	x
 535  015d 89            	pushw	x
 536  015e ae000c        	ldw	x,#L511
 537  0161 cd0000        	call	_assert_failed
 539  0164 5b04          	addw	sp,#4
 540  0166 81            	ret	
 541  0167               LC002:
 542  0167 b703          	ld	c_lreg+3,a
 543  0169 3f02          	clr	c_lreg+2
 544  016b 3f01          	clr	c_lreg+1
 545  016d 3f00          	clr	c_lreg
 546  016f ae0008        	ldw	x,#L66
 547  0172 cc0000        	jp	c_lmul
 548  0175               LC003:
 549  0175 5c            	incw	x
 550  0176 cd0000        	call	c_ludv
 552  0179 be02          	ldw	x,c_lreg+2
 553  017b 81            	ret	
 609                     ; 196 void I2C_Cmd(FunctionalState NewState)
 609                     ; 197 {
 610                     .text:	section	.text,new
 611  0000               _I2C_Cmd:
 613  0000 88            	push	a
 614       00000000      OFST:	set	0
 617                     ; 200   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 619  0001 4d            	tnz	a
 620  0002 2711          	jreq	L001
 621  0004 4a            	dec	a
 622  0005 270e          	jreq	L001
 623  0007 ae00c8        	ldw	x,#200
 624  000a 89            	pushw	x
 625  000b 5f            	clrw	x
 626  000c 89            	pushw	x
 627  000d ae000c        	ldw	x,#L511
 628  0010 cd0000        	call	_assert_failed
 630  0013 5b04          	addw	sp,#4
 631  0015               L001:
 632                     ; 202   if (NewState != DISABLE)
 634  0015 7b01          	ld	a,(OFST+1,sp)
 635  0017 2706          	jreq	L161
 636                     ; 205     I2C->CR1 |= I2C_CR1_PE;
 638  0019 72105210      	bset	21008,#0
 640  001d 2004          	jra	L361
 641  001f               L161:
 642                     ; 210     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 644  001f 72115210      	bres	21008,#0
 645  0023               L361:
 646                     ; 212 }
 649  0023 84            	pop	a
 650  0024 81            	ret	
 686                     ; 220 void I2C_GeneralCallCmd(FunctionalState NewState)
 686                     ; 221 {
 687                     .text:	section	.text,new
 688  0000               _I2C_GeneralCallCmd:
 690  0000 88            	push	a
 691       00000000      OFST:	set	0
 694                     ; 224   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 696  0001 4d            	tnz	a
 697  0002 2711          	jreq	L211
 698  0004 4a            	dec	a
 699  0005 270e          	jreq	L211
 700  0007 ae00e0        	ldw	x,#224
 701  000a 89            	pushw	x
 702  000b 5f            	clrw	x
 703  000c 89            	pushw	x
 704  000d ae000c        	ldw	x,#L511
 705  0010 cd0000        	call	_assert_failed
 707  0013 5b04          	addw	sp,#4
 708  0015               L211:
 709                     ; 226   if (NewState != DISABLE)
 711  0015 7b01          	ld	a,(OFST+1,sp)
 712  0017 2706          	jreq	L302
 713                     ; 229     I2C->CR1 |= I2C_CR1_ENGC;
 715  0019 721c5210      	bset	21008,#6
 717  001d 2004          	jra	L502
 718  001f               L302:
 719                     ; 234     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 721  001f 721d5210      	bres	21008,#6
 722  0023               L502:
 723                     ; 236 }
 726  0023 84            	pop	a
 727  0024 81            	ret	
 763                     ; 246 void I2C_GenerateSTART(FunctionalState NewState)
 763                     ; 247 {
 764                     .text:	section	.text,new
 765  0000               _I2C_GenerateSTART:
 767  0000 88            	push	a
 768       00000000      OFST:	set	0
 771                     ; 250   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 773  0001 4d            	tnz	a
 774  0002 2711          	jreq	L421
 775  0004 4a            	dec	a
 776  0005 270e          	jreq	L421
 777  0007 ae00fa        	ldw	x,#250
 778  000a 89            	pushw	x
 779  000b 5f            	clrw	x
 780  000c 89            	pushw	x
 781  000d ae000c        	ldw	x,#L511
 782  0010 cd0000        	call	_assert_failed
 784  0013 5b04          	addw	sp,#4
 785  0015               L421:
 786                     ; 252   if (NewState != DISABLE)
 788  0015 7b01          	ld	a,(OFST+1,sp)
 789  0017 2706          	jreq	L522
 790                     ; 255     I2C->CR2 |= I2C_CR2_START;
 792  0019 72105211      	bset	21009,#0
 794  001d 2004          	jra	L722
 795  001f               L522:
 796                     ; 260     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 798  001f 72115211      	bres	21009,#0
 799  0023               L722:
 800                     ; 262 }
 803  0023 84            	pop	a
 804  0024 81            	ret	
 840                     ; 270 void I2C_GenerateSTOP(FunctionalState NewState)
 840                     ; 271 {
 841                     .text:	section	.text,new
 842  0000               _I2C_GenerateSTOP:
 844  0000 88            	push	a
 845       00000000      OFST:	set	0
 848                     ; 274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 850  0001 4d            	tnz	a
 851  0002 2711          	jreq	L631
 852  0004 4a            	dec	a
 853  0005 270e          	jreq	L631
 854  0007 ae0112        	ldw	x,#274
 855  000a 89            	pushw	x
 856  000b 5f            	clrw	x
 857  000c 89            	pushw	x
 858  000d ae000c        	ldw	x,#L511
 859  0010 cd0000        	call	_assert_failed
 861  0013 5b04          	addw	sp,#4
 862  0015               L631:
 863                     ; 276   if (NewState != DISABLE)
 865  0015 7b01          	ld	a,(OFST+1,sp)
 866  0017 2706          	jreq	L742
 867                     ; 279     I2C->CR2 |= I2C_CR2_STOP;
 869  0019 72125211      	bset	21009,#1
 871  001d 2004          	jra	L152
 872  001f               L742:
 873                     ; 284     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 875  001f 72135211      	bres	21009,#1
 876  0023               L152:
 877                     ; 286 }
 880  0023 84            	pop	a
 881  0024 81            	ret	
 918                     ; 294 void I2C_SoftwareResetCmd(FunctionalState NewState)
 918                     ; 295 {
 919                     .text:	section	.text,new
 920  0000               _I2C_SoftwareResetCmd:
 922  0000 88            	push	a
 923       00000000      OFST:	set	0
 926                     ; 297   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 928  0001 4d            	tnz	a
 929  0002 2711          	jreq	L051
 930  0004 4a            	dec	a
 931  0005 270e          	jreq	L051
 932  0007 ae0129        	ldw	x,#297
 933  000a 89            	pushw	x
 934  000b 5f            	clrw	x
 935  000c 89            	pushw	x
 936  000d ae000c        	ldw	x,#L511
 937  0010 cd0000        	call	_assert_failed
 939  0013 5b04          	addw	sp,#4
 940  0015               L051:
 941                     ; 299   if (NewState != DISABLE)
 943  0015 7b01          	ld	a,(OFST+1,sp)
 944  0017 2706          	jreq	L172
 945                     ; 302     I2C->CR2 |= I2C_CR2_SWRST;
 947  0019 721e5211      	bset	21009,#7
 949  001d 2004          	jra	L372
 950  001f               L172:
 951                     ; 307     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 953  001f 721f5211      	bres	21009,#7
 954  0023               L372:
 955                     ; 309 }
 958  0023 84            	pop	a
 959  0024 81            	ret	
 996                     ; 318 void I2C_StretchClockCmd(FunctionalState NewState)
 996                     ; 319 {
 997                     .text:	section	.text,new
 998  0000               _I2C_StretchClockCmd:
1000  0000 88            	push	a
1001       00000000      OFST:	set	0
1004                     ; 321   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1006  0001 4d            	tnz	a
1007  0002 2711          	jreq	L261
1008  0004 4a            	dec	a
1009  0005 270e          	jreq	L261
1010  0007 ae0141        	ldw	x,#321
1011  000a 89            	pushw	x
1012  000b 5f            	clrw	x
1013  000c 89            	pushw	x
1014  000d ae000c        	ldw	x,#L511
1015  0010 cd0000        	call	_assert_failed
1017  0013 5b04          	addw	sp,#4
1018  0015               L261:
1019                     ; 323   if (NewState != DISABLE)
1021  0015 7b01          	ld	a,(OFST+1,sp)
1022  0017 2706          	jreq	L313
1023                     ; 326     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1025  0019 721f5210      	bres	21008,#7
1027  001d 2004          	jra	L513
1028  001f               L313:
1029                     ; 332     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1031  001f 721e5210      	bset	21008,#7
1032  0023               L513:
1033                     ; 334 }
1036  0023 84            	pop	a
1037  0024 81            	ret	
1074                     ; 343 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1074                     ; 344 {
1075                     .text:	section	.text,new
1076  0000               _I2C_AcknowledgeConfig:
1078  0000 88            	push	a
1079       00000000      OFST:	set	0
1082                     ; 347   assert_param(IS_I2C_ACK_OK(Ack));
1084  0001 4d            	tnz	a
1085  0002 2716          	jreq	L471
1086  0004 a101          	cp	a,#1
1087  0006 2712          	jreq	L471
1088  0008 a102          	cp	a,#2
1089  000a 270e          	jreq	L471
1090  000c ae015b        	ldw	x,#347
1091  000f 89            	pushw	x
1092  0010 5f            	clrw	x
1093  0011 89            	pushw	x
1094  0012 ae000c        	ldw	x,#L511
1095  0015 cd0000        	call	_assert_failed
1097  0018 5b04          	addw	sp,#4
1098  001a               L471:
1099                     ; 349   if (Ack == I2C_ACK_NONE)
1101  001a 7b01          	ld	a,(OFST+1,sp)
1102  001c 2606          	jrne	L533
1103                     ; 352     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1105  001e 72155211      	bres	21009,#2
1107  0022 2011          	jra	L733
1108  0024               L533:
1109                     ; 357     I2C->CR2 |= I2C_CR2_ACK;
1111  0024 72145211      	bset	21009,#2
1112                     ; 359     if (Ack == I2C_ACK_CURR)
1114  0028 4a            	dec	a
1115  0029 2606          	jrne	L143
1116                     ; 362       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1118  002b 72175211      	bres	21009,#3
1120  002f 2004          	jra	L733
1121  0031               L143:
1122                     ; 367       I2C->CR2 |= I2C_CR2_POS;
1124  0031 72165211      	bset	21009,#3
1125  0035               L733:
1126                     ; 370 }
1129  0035 84            	pop	a
1130  0036 81            	ret	
1203                     ; 380 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1203                     ; 381 {
1204                     .text:	section	.text,new
1205  0000               _I2C_ITConfig:
1207  0000 89            	pushw	x
1208       00000000      OFST:	set	0
1211                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1213  0001 9e            	ld	a,xh
1214  0002 4a            	dec	a
1215  0003 2723          	jreq	L602
1216  0005 9e            	ld	a,xh
1217  0006 a102          	cp	a,#2
1218  0008 271e          	jreq	L602
1219  000a 9e            	ld	a,xh
1220  000b a104          	cp	a,#4
1221  000d 2719          	jreq	L602
1222  000f 9e            	ld	a,xh
1223  0010 a103          	cp	a,#3
1224  0012 2714          	jreq	L602
1225  0014 9e            	ld	a,xh
1226  0015 a105          	cp	a,#5
1227  0017 270f          	jreq	L602
1228  0019 9e            	ld	a,xh
1229  001a a106          	cp	a,#6
1230  001c 270a          	jreq	L602
1231  001e 9e            	ld	a,xh
1232  001f a107          	cp	a,#7
1233  0021 2705          	jreq	L602
1234  0023 ae0180        	ldw	x,#384
1235  0026 ad22          	call	LC004
1236  0028               L602:
1237                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1239  0028 7b02          	ld	a,(OFST+2,sp)
1240  002a 2708          	jreq	L612
1241  002c 4a            	dec	a
1242  002d 2705          	jreq	L612
1243  002f ae0181        	ldw	x,#385
1244  0032 ad16          	call	LC004
1245  0034               L612:
1246                     ; 387   if (NewState != DISABLE)
1248  0034 7b02          	ld	a,(OFST+2,sp)
1249  0036 2707          	jreq	L104
1250                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1252  0038 c6521a        	ld	a,21018
1253  003b 1a01          	or	a,(OFST+1,sp)
1255  003d 2006          	jra	L304
1256  003f               L104:
1257                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1259  003f 7b01          	ld	a,(OFST+1,sp)
1260  0041 43            	cpl	a
1261  0042 c4521a        	and	a,21018
1262  0045               L304:
1263  0045 c7521a        	ld	21018,a
1264                     ; 397 }
1267  0048 85            	popw	x
1268  0049 81            	ret	
1269  004a               LC004:
1270  004a 89            	pushw	x
1271  004b 5f            	clrw	x
1272  004c 89            	pushw	x
1273  004d ae000c        	ldw	x,#L511
1274  0050 cd0000        	call	_assert_failed
1276  0053 5b04          	addw	sp,#4
1277  0055 81            	ret	
1314                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1314                     ; 406 {
1315                     .text:	section	.text,new
1316  0000               _I2C_FastModeDutyCycleConfig:
1318  0000 88            	push	a
1319       00000000      OFST:	set	0
1322                     ; 409   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1324  0001 4d            	tnz	a
1325  0002 2712          	jreq	L032
1326  0004 a140          	cp	a,#64
1327  0006 270e          	jreq	L032
1328  0008 ae0199        	ldw	x,#409
1329  000b 89            	pushw	x
1330  000c 5f            	clrw	x
1331  000d 89            	pushw	x
1332  000e ae000c        	ldw	x,#L511
1333  0011 cd0000        	call	_assert_failed
1335  0014 5b04          	addw	sp,#4
1336  0016               L032:
1337                     ; 411   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1339  0016 7b01          	ld	a,(OFST+1,sp)
1340  0018 a140          	cp	a,#64
1341  001a 2606          	jrne	L324
1342                     ; 414     I2C->CCRH |= I2C_CCRH_DUTY;
1344  001c 721c521c      	bset	21020,#6
1346  0020 2004          	jra	L524
1347  0022               L324:
1348                     ; 419     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1350  0022 721d521c      	bres	21020,#6
1351  0026               L524:
1352                     ; 421 }
1355  0026 84            	pop	a
1356  0027 81            	ret	
1379                     ; 428 uint8_t I2C_ReceiveData(void)
1379                     ; 429 {
1380                     .text:	section	.text,new
1381  0000               _I2C_ReceiveData:
1385                     ; 431   return ((uint8_t)I2C->DR);
1387  0000 c65216        	ld	a,21014
1390  0003 81            	ret	
1454                     ; 441 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1454                     ; 442 {
1455                     .text:	section	.text,new
1456  0000               _I2C_Send7bitAddress:
1458  0000 89            	pushw	x
1459       00000000      OFST:	set	0
1462                     ; 444   assert_param(IS_I2C_ADDRESS_OK(Address));
1464  0001 9e            	ld	a,xh
1465  0002 a501          	bcp	a,#1
1466  0004 2705          	jreq	L242
1467  0006 ae01bc        	ldw	x,#444
1468  0009 ad19          	call	LC005
1469  000b               L242:
1470                     ; 445   assert_param(IS_I2C_DIRECTION_OK(Direction));
1472  000b 7b02          	ld	a,(OFST+2,sp)
1473  000d 2708          	jreq	L252
1474  000f 4a            	dec	a
1475  0010 2705          	jreq	L252
1476  0012 ae01bd        	ldw	x,#445
1477  0015 ad0d          	call	LC005
1478  0017               L252:
1479                     ; 448   Address &= (uint8_t)0xFE;
1481  0017 7b01          	ld	a,(OFST+1,sp)
1482  0019 a4fe          	and	a,#254
1483  001b 6b01          	ld	(OFST+1,sp),a
1484                     ; 451   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1486  001d 1a02          	or	a,(OFST+2,sp)
1487  001f c75216        	ld	21014,a
1488                     ; 452 }
1491  0022 85            	popw	x
1492  0023 81            	ret	
1493  0024               LC005:
1494  0024 89            	pushw	x
1495  0025 5f            	clrw	x
1496  0026 89            	pushw	x
1497  0027 ae000c        	ldw	x,#L511
1498  002a cd0000        	call	_assert_failed
1500  002d 5b04          	addw	sp,#4
1501  002f 81            	ret	
1533                     ; 459 void I2C_SendData(uint8_t Data)
1533                     ; 460 {
1534                     .text:	section	.text,new
1535  0000               _I2C_SendData:
1539                     ; 462   I2C->DR = Data;
1541  0000 c75216        	ld	21014,a
1542                     ; 463 }
1545  0003 81            	ret	
1766                     ; 579 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1766                     ; 580 {
1767                     .text:	section	.text,new
1768  0000               _I2C_CheckEvent:
1770  0000 89            	pushw	x
1771  0001 5206          	subw	sp,#6
1772       00000006      OFST:	set	6
1775                     ; 581   __IO uint16_t lastevent = 0x00;
1777  0003 5f            	clrw	x
1778  0004 1f04          	ldw	(OFST-2,sp),x
1779                     ; 582   uint8_t flag1 = 0x00 ;
1781                     ; 583   uint8_t flag2 = 0x00;
1783                     ; 584   ErrorStatus status = ERROR;
1785                     ; 587   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1787  0006 1e07          	ldw	x,(OFST+1,sp)
1788  0008 a30682        	cpw	x,#1666
1789  000b 275b          	jreq	L662
1790  000d a30202        	cpw	x,#514
1791  0010 2756          	jreq	L662
1792  0012 a31200        	cpw	x,#4608
1793  0015 2751          	jreq	L662
1794  0017 a30240        	cpw	x,#576
1795  001a 274c          	jreq	L662
1796  001c a30350        	cpw	x,#848
1797  001f 2747          	jreq	L662
1798  0021 a30684        	cpw	x,#1668
1799  0024 2742          	jreq	L662
1800  0026 a30794        	cpw	x,#1940
1801  0029 273d          	jreq	L662
1802  002b a30004        	cpw	x,#4
1803  002e 2738          	jreq	L662
1804  0030 a30010        	cpw	x,#16
1805  0033 2733          	jreq	L662
1806  0035 a30301        	cpw	x,#769
1807  0038 272e          	jreq	L662
1808  003a a30782        	cpw	x,#1922
1809  003d 2729          	jreq	L662
1810  003f a30302        	cpw	x,#770
1811  0042 2724          	jreq	L662
1812  0044 a30340        	cpw	x,#832
1813  0047 271f          	jreq	L662
1814  0049 a30784        	cpw	x,#1924
1815  004c 271a          	jreq	L662
1816  004e a30780        	cpw	x,#1920
1817  0051 2715          	jreq	L662
1818  0053 a30308        	cpw	x,#776
1819  0056 2710          	jreq	L662
1820  0058 ae024b        	ldw	x,#587
1821  005b 89            	pushw	x
1822  005c 5f            	clrw	x
1823  005d 89            	pushw	x
1824  005e ae000c        	ldw	x,#L511
1825  0061 cd0000        	call	_assert_failed
1827  0064 5b04          	addw	sp,#4
1828  0066 1e07          	ldw	x,(OFST+1,sp)
1829  0068               L662:
1830                     ; 589   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1832  0068 a30004        	cpw	x,#4
1833  006b 2609          	jrne	L706
1834                     ; 591     lastevent = I2C->SR2 & I2C_SR2_AF;
1836  006d c65218        	ld	a,21016
1837  0070 a404          	and	a,#4
1838  0072 5f            	clrw	x
1839  0073 97            	ld	xl,a
1841  0074 201a          	jra	L116
1842  0076               L706:
1843                     ; 595     flag1 = I2C->SR1;
1845  0076 c65217        	ld	a,21015
1846  0079 6b03          	ld	(OFST-3,sp),a
1847                     ; 596     flag2 = I2C->SR3;
1849  007b c65219        	ld	a,21017
1850  007e 6b06          	ld	(OFST+0,sp),a
1851                     ; 597     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1853  0080 5f            	clrw	x
1854  0081 7b03          	ld	a,(OFST-3,sp)
1855  0083 97            	ld	xl,a
1856  0084 1f01          	ldw	(OFST-5,sp),x
1857  0086 5f            	clrw	x
1858  0087 7b06          	ld	a,(OFST+0,sp)
1859  0089 97            	ld	xl,a
1860  008a 7b02          	ld	a,(OFST-4,sp)
1861  008c 01            	rrwa	x,a
1862  008d 1a01          	or	a,(OFST-5,sp)
1863  008f 01            	rrwa	x,a
1864  0090               L116:
1865  0090 1f04          	ldw	(OFST-2,sp),x
1866                     ; 600   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1868  0092 1e04          	ldw	x,(OFST-2,sp)
1869  0094 01            	rrwa	x,a
1870  0095 1408          	and	a,(OFST+2,sp)
1871  0097 01            	rrwa	x,a
1872  0098 1407          	and	a,(OFST+1,sp)
1873  009a 01            	rrwa	x,a
1874  009b 1307          	cpw	x,(OFST+1,sp)
1875  009d 2604          	jrne	L316
1876                     ; 603     status = SUCCESS;
1878  009f a601          	ld	a,#1
1880  00a1 2001          	jra	L516
1881  00a3               L316:
1882                     ; 608     status = ERROR;
1884  00a3 4f            	clr	a
1885  00a4               L516:
1886                     ; 612   return status;
1890  00a4 5b08          	addw	sp,#8
1891  00a6 81            	ret	
1940                     ; 629 I2C_Event_TypeDef I2C_GetLastEvent(void)
1940                     ; 630 {
1941                     .text:	section	.text,new
1942  0000               _I2C_GetLastEvent:
1944  0000 5206          	subw	sp,#6
1945       00000006      OFST:	set	6
1948                     ; 631   __IO uint16_t lastevent = 0;
1950  0002 5f            	clrw	x
1951  0003 1f05          	ldw	(OFST-1,sp),x
1952                     ; 632   uint16_t flag1 = 0;
1954                     ; 633   uint16_t flag2 = 0;
1956                     ; 635   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1958  0005 7205521805    	btjf	21016,#2,L146
1959                     ; 637     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1961  000a ae0004        	ldw	x,#4
1963  000d 2013          	jra	L346
1964  000f               L146:
1965                     ; 642     flag1 = I2C->SR1;
1967  000f c65217        	ld	a,21015
1968  0012 97            	ld	xl,a
1969  0013 1f01          	ldw	(OFST-5,sp),x
1970                     ; 643     flag2 = I2C->SR3;
1972  0015 5f            	clrw	x
1973  0016 c65219        	ld	a,21017
1974  0019 97            	ld	xl,a
1975  001a 1f03          	ldw	(OFST-3,sp),x
1976                     ; 646     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
1978  001c 7b02          	ld	a,(OFST-4,sp)
1979  001e 01            	rrwa	x,a
1980  001f 1a01          	or	a,(OFST-5,sp)
1981  0021 01            	rrwa	x,a
1982  0022               L346:
1983  0022 1f05          	ldw	(OFST-1,sp),x
1984                     ; 649   return (I2C_Event_TypeDef)lastevent;
1986  0024 1e05          	ldw	x,(OFST-1,sp)
1989  0026 5b06          	addw	sp,#6
1990  0028 81            	ret	
2202                     ; 680 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2202                     ; 681 {
2203                     .text:	section	.text,new
2204  0000               _I2C_GetFlagStatus:
2206  0000 89            	pushw	x
2207  0001 89            	pushw	x
2208       00000002      OFST:	set	2
2211                     ; 682   uint8_t tempreg = 0;
2213  0002 0f02          	clr	(OFST+0,sp)
2214                     ; 683   uint8_t regindex = 0;
2216                     ; 684   FlagStatus bitstatus = RESET;
2218                     ; 687   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2220  0004 a30180        	cpw	x,#384
2221  0007 2759          	jreq	L203
2222  0009 a30140        	cpw	x,#320
2223  000c 2754          	jreq	L203
2224  000e a30110        	cpw	x,#272
2225  0011 274f          	jreq	L203
2226  0013 a30108        	cpw	x,#264
2227  0016 274a          	jreq	L203
2228  0018 a30104        	cpw	x,#260
2229  001b 2745          	jreq	L203
2230  001d a30102        	cpw	x,#258
2231  0020 2740          	jreq	L203
2232  0022 a30101        	cpw	x,#257
2233  0025 273b          	jreq	L203
2234  0027 a30220        	cpw	x,#544
2235  002a 2736          	jreq	L203
2236  002c a30208        	cpw	x,#520
2237  002f 2731          	jreq	L203
2238  0031 a30204        	cpw	x,#516
2239  0034 272c          	jreq	L203
2240  0036 a30202        	cpw	x,#514
2241  0039 2727          	jreq	L203
2242  003b a30201        	cpw	x,#513
2243  003e 2722          	jreq	L203
2244  0040 a30310        	cpw	x,#784
2245  0043 271d          	jreq	L203
2246  0045 a30304        	cpw	x,#772
2247  0048 2718          	jreq	L203
2248  004a a30302        	cpw	x,#770
2249  004d 2713          	jreq	L203
2250  004f a30301        	cpw	x,#769
2251  0052 270e          	jreq	L203
2252  0054 ae02af        	ldw	x,#687
2253  0057 89            	pushw	x
2254  0058 5f            	clrw	x
2255  0059 89            	pushw	x
2256  005a ae000c        	ldw	x,#L511
2257  005d cd0000        	call	_assert_failed
2259  0060 5b04          	addw	sp,#4
2260  0062               L203:
2261                     ; 690   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2263  0062 7b03          	ld	a,(OFST+1,sp)
2264  0064 6b01          	ld	(OFST-1,sp),a
2265                     ; 692   switch (regindex)
2268                     ; 709     default:
2268                     ; 710       break;
2269  0066 4a            	dec	a
2270  0067 2708          	jreq	L546
2271  0069 4a            	dec	a
2272  006a 270a          	jreq	L746
2273  006c 4a            	dec	a
2274  006d 270c          	jreq	L156
2275  006f 200f          	jra	L167
2276  0071               L546:
2277                     ; 695     case 0x01:
2277                     ; 696       tempreg = (uint8_t)I2C->SR1;
2279  0071 c65217        	ld	a,21015
2280                     ; 697       break;
2282  0074 2008          	jp	LC006
2283  0076               L746:
2284                     ; 700     case 0x02:
2284                     ; 701       tempreg = (uint8_t)I2C->SR2;
2286  0076 c65218        	ld	a,21016
2287                     ; 702       break;
2289  0079 2003          	jp	LC006
2290  007b               L156:
2291                     ; 705     case 0x03:
2291                     ; 706       tempreg = (uint8_t)I2C->SR3;
2293  007b c65219        	ld	a,21017
2294  007e               LC006:
2295  007e 6b02          	ld	(OFST+0,sp),a
2296                     ; 707       break;
2298                     ; 709     default:
2298                     ; 710       break;
2300  0080               L167:
2301                     ; 714   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2303  0080 7b04          	ld	a,(OFST+2,sp)
2304  0082 1502          	bcp	a,(OFST+0,sp)
2305  0084 2704          	jreq	L367
2306                     ; 717     bitstatus = SET;
2308  0086 a601          	ld	a,#1
2310  0088 2001          	jra	L567
2311  008a               L367:
2312                     ; 722     bitstatus = RESET;
2314  008a 4f            	clr	a
2315  008b               L567:
2316                     ; 725   return bitstatus;
2320  008b 5b04          	addw	sp,#4
2321  008d 81            	ret	
2364                     ; 760 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2364                     ; 761 {
2365                     .text:	section	.text,new
2366  0000               _I2C_ClearFlag:
2368  0000 89            	pushw	x
2369  0001 89            	pushw	x
2370       00000002      OFST:	set	2
2373                     ; 762   uint16_t flagpos = 0;
2375                     ; 764   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2377  0002 01            	rrwa	x,a
2378  0003 9f            	ld	a,xl
2379  0004 a4fd          	and	a,#253
2380  0006 97            	ld	xl,a
2381  0007 4f            	clr	a
2382  0008 02            	rlwa	x,a
2383  0009 5d            	tnzw	x
2384  000a 2604          	jrne	L013
2385  000c 1e03          	ldw	x,(OFST+1,sp)
2386  000e 260e          	jrne	L213
2387  0010               L013:
2388  0010 ae02fc        	ldw	x,#764
2389  0013 89            	pushw	x
2390  0014 5f            	clrw	x
2391  0015 89            	pushw	x
2392  0016 ae000c        	ldw	x,#L511
2393  0019 cd0000        	call	_assert_failed
2395  001c 5b04          	addw	sp,#4
2396  001e               L213:
2397                     ; 767   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2399  001e 7b04          	ld	a,(OFST+2,sp)
2400  0020 5f            	clrw	x
2401  0021 02            	rlwa	x,a
2402  0022 1f01          	ldw	(OFST-1,sp),x
2403                     ; 769   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2405  0024 7b02          	ld	a,(OFST+0,sp)
2406  0026 43            	cpl	a
2407  0027 c75218        	ld	21016,a
2408                     ; 770 }
2411  002a 5b04          	addw	sp,#4
2412  002c 81            	ret	
2577                     ; 792 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2577                     ; 793 {
2578                     .text:	section	.text,new
2579  0000               _I2C_GetITStatus:
2581  0000 89            	pushw	x
2582  0001 5204          	subw	sp,#4
2583       00000004      OFST:	set	4
2586                     ; 794   ITStatus bitstatus = RESET;
2588                     ; 795   __IO uint8_t enablestatus = 0;
2590  0003 0f03          	clr	(OFST-1,sp)
2591                     ; 796   uint16_t tempregister = 0;
2593                     ; 799     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2595  0005 a31680        	cpw	x,#5760
2596  0008 2745          	jreq	L423
2597  000a a31640        	cpw	x,#5696
2598  000d 2740          	jreq	L423
2599  000f a31210        	cpw	x,#4624
2600  0012 273b          	jreq	L423
2601  0014 a31208        	cpw	x,#4616
2602  0017 2736          	jreq	L423
2603  0019 a31204        	cpw	x,#4612
2604  001c 2731          	jreq	L423
2605  001e a31202        	cpw	x,#4610
2606  0021 272c          	jreq	L423
2607  0023 a31201        	cpw	x,#4609
2608  0026 2727          	jreq	L423
2609  0028 a32220        	cpw	x,#8736
2610  002b 2722          	jreq	L423
2611  002d a32108        	cpw	x,#8456
2612  0030 271d          	jreq	L423
2613  0032 a32104        	cpw	x,#8452
2614  0035 2718          	jreq	L423
2615  0037 a32102        	cpw	x,#8450
2616  003a 2713          	jreq	L423
2617  003c a32101        	cpw	x,#8449
2618  003f 270e          	jreq	L423
2619  0041 ae031f        	ldw	x,#799
2620  0044 89            	pushw	x
2621  0045 5f            	clrw	x
2622  0046 89            	pushw	x
2623  0047 ae000c        	ldw	x,#L511
2624  004a cd0000        	call	_assert_failed
2626  004d 5b04          	addw	sp,#4
2627  004f               L423:
2628                     ; 801   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2630  004f 7b05          	ld	a,(OFST+1,sp)
2631  0051 a407          	and	a,#7
2632  0053 97            	ld	xl,a
2633  0054 4f            	clr	a
2634  0055 02            	rlwa	x,a
2635  0056 4f            	clr	a
2636  0057 01            	rrwa	x,a
2637  0058 9f            	ld	a,xl
2638  0059 5f            	clrw	x
2639  005a 97            	ld	xl,a
2640  005b 1f01          	ldw	(OFST-3,sp),x
2641                     ; 804   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2643  005d c6521a        	ld	a,21018
2644  0060 1402          	and	a,(OFST-2,sp)
2645  0062 6b03          	ld	(OFST-1,sp),a
2646                     ; 806   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2648  0064 7b05          	ld	a,(OFST+1,sp)
2649  0066 a430          	and	a,#48
2650  0068 97            	ld	xl,a
2651  0069 4f            	clr	a
2652  006a 02            	rlwa	x,a
2653  006b a30100        	cpw	x,#256
2654  006e 260d          	jrne	L3701
2655                     ; 809     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2657  0070 c65217        	ld	a,21015
2658  0073 1506          	bcp	a,(OFST+2,sp)
2659  0075 2715          	jreq	L3011
2661  0077 0d03          	tnz	(OFST-1,sp)
2662  0079 2711          	jreq	L3011
2663                     ; 812       bitstatus = SET;
2665  007b 200b          	jp	LC008
2666                     ; 817       bitstatus = RESET;
2667  007d               L3701:
2668                     ; 823     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2670  007d c65218        	ld	a,21016
2671  0080 1506          	bcp	a,(OFST+2,sp)
2672  0082 2708          	jreq	L3011
2674  0084 0d03          	tnz	(OFST-1,sp)
2675  0086 2704          	jreq	L3011
2676                     ; 826       bitstatus = SET;
2678  0088               LC008:
2680  0088 a601          	ld	a,#1
2682  008a 2001          	jra	L1011
2683  008c               L3011:
2684                     ; 831       bitstatus = RESET;
2687  008c 4f            	clr	a
2688  008d               L1011:
2689                     ; 835   return  bitstatus;
2693  008d 5b06          	addw	sp,#6
2694  008f 81            	ret	
2738                     ; 873 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2738                     ; 874 {
2739                     .text:	section	.text,new
2740  0000               _I2C_ClearITPendingBit:
2742  0000 89            	pushw	x
2743  0001 89            	pushw	x
2744       00000002      OFST:	set	2
2747                     ; 875   uint16_t flagpos = 0;
2749                     ; 878   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2751  0002 a32220        	cpw	x,#8736
2752  0005 2722          	jreq	L633
2753  0007 a32108        	cpw	x,#8456
2754  000a 271d          	jreq	L633
2755  000c a32104        	cpw	x,#8452
2756  000f 2718          	jreq	L633
2757  0011 a32102        	cpw	x,#8450
2758  0014 2713          	jreq	L633
2759  0016 a32101        	cpw	x,#8449
2760  0019 270e          	jreq	L633
2761  001b ae036e        	ldw	x,#878
2762  001e 89            	pushw	x
2763  001f 5f            	clrw	x
2764  0020 89            	pushw	x
2765  0021 ae000c        	ldw	x,#L511
2766  0024 cd0000        	call	_assert_failed
2768  0027 5b04          	addw	sp,#4
2769  0029               L633:
2770                     ; 881   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2772  0029 7b04          	ld	a,(OFST+2,sp)
2773  002b 5f            	clrw	x
2774  002c 02            	rlwa	x,a
2775  002d 1f01          	ldw	(OFST-1,sp),x
2776                     ; 884   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2778  002f 7b02          	ld	a,(OFST+0,sp)
2779  0031 43            	cpl	a
2780  0032 c75218        	ld	21016,a
2781                     ; 885 }
2784  0035 5b04          	addw	sp,#4
2785  0037 81            	ret	
2798                     	xdef	_I2C_ClearITPendingBit
2799                     	xdef	_I2C_GetITStatus
2800                     	xdef	_I2C_ClearFlag
2801                     	xdef	_I2C_GetFlagStatus
2802                     	xdef	_I2C_GetLastEvent
2803                     	xdef	_I2C_CheckEvent
2804                     	xdef	_I2C_SendData
2805                     	xdef	_I2C_Send7bitAddress
2806                     	xdef	_I2C_ReceiveData
2807                     	xdef	_I2C_ITConfig
2808                     	xdef	_I2C_FastModeDutyCycleConfig
2809                     	xdef	_I2C_AcknowledgeConfig
2810                     	xdef	_I2C_StretchClockCmd
2811                     	xdef	_I2C_SoftwareResetCmd
2812                     	xdef	_I2C_GenerateSTOP
2813                     	xdef	_I2C_GenerateSTART
2814                     	xdef	_I2C_GeneralCallCmd
2815                     	xdef	_I2C_Cmd
2816                     	xdef	_I2C_Init
2817                     	xdef	_I2C_DeInit
2818                     	xref	_assert_failed
2819                     	switch	.const
2820  000c               L511:
2821  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2822  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2823  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
2824  0042 5f6932632e63  	dc.b	"_i2c.c",0
2825                     	xref.b	c_lreg
2826                     	xref.b	c_x
2846                     	xref	c_sdivx
2847                     	xref	c_ludv
2848                     	xref	c_rtol
2849                     	xref	c_smul
2850                     	xref	c_lmul
2851                     	xref	c_lcmp
2852                     	xref	c_ltor
2853                     	xref	c_lzmp
2854                     	end
