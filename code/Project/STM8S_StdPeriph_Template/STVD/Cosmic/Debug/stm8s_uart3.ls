   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 48 void UART3_DeInit(void)
  50                     ; 49 {
  52                     .text:	section	.text,new
  53  0000               _UART3_DeInit:
  57                     ; 52     (void) UART3->SR;
  59  0000 c65240        	ld	a,21056
  60                     ; 53     (void) UART3->DR;
  62  0003 c65241        	ld	a,21057
  63                     ; 55     UART3->BRR2 = UART3_BRR2_RESET_VALUE; /*Set UART3_BRR2 to reset value 0x00 */
  65  0006 725f5243      	clr	21059
  66                     ; 56     UART3->BRR1 = UART3_BRR1_RESET_VALUE; /*Set UART3_BRR1 to reset value 0x00 */
  68  000a 725f5242      	clr	21058
  69                     ; 58     UART3->CR1 = UART3_CR1_RESET_VALUE;  /*Set UART3_CR1 to reset value 0x00  */
  71  000e 725f5244      	clr	21060
  72                     ; 59     UART3->CR2 = UART3_CR2_RESET_VALUE;  /*Set UART3_CR2 to reset value 0x00  */
  74  0012 725f5245      	clr	21061
  75                     ; 60     UART3->CR3 = UART3_CR3_RESET_VALUE;  /*Set UART3_CR3 to reset value 0x00  */
  77  0016 725f5246      	clr	21062
  78                     ; 61     UART3->CR4 = UART3_CR4_RESET_VALUE;  /*Set UART3_CR4 to reset value 0x00  */
  80  001a 725f5247      	clr	21063
  81                     ; 62     UART3->CR6 = UART3_CR6_RESET_VALUE;  /*Set UART3_CR6 to reset value 0x00  */
  83  001e 725f5249      	clr	21065
  84                     ; 64 }
  87  0022 81            	ret	
 305                     .const:	section	.text
 306  0000               L24:
 307  0000 00098969      	dc.l	625001
 308  0004               L46:
 309  0004 00000064      	dc.l	100
 310                     ; 78 void UART3_Init(uint32_t BaudRate, UART3_WordLength_TypeDef WordLength, 
 310                     ; 79                 UART3_StopBits_TypeDef StopBits, UART3_Parity_TypeDef Parity, 
 310                     ; 80                 UART3_Mode_TypeDef Mode)
 310                     ; 81 {
 311                     .text:	section	.text,new
 312  0000               _UART3_Init:
 314  0000 520e          	subw	sp,#14
 315       0000000e      OFST:	set	14
 318                     ; 82     uint8_t BRR2_1 = 0, BRR2_2 = 0;
 322                     ; 83     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 326                     ; 86     assert_param(IS_UART3_WORDLENGTH_OK(WordLength));
 328  0002 7b15          	ld	a,(OFST+7,sp)
 329  0004 270a          	jreq	L41
 330  0006 a110          	cp	a,#16
 331  0008 2706          	jreq	L41
 332  000a ae0056        	ldw	x,#86
 333  000d cd0155        	call	LC001
 334  0010               L41:
 335                     ; 87     assert_param(IS_UART3_STOPBITS_OK(StopBits));
 337  0010 7b16          	ld	a,(OFST+8,sp)
 338  0012 270a          	jreq	L42
 339  0014 a120          	cp	a,#32
 340  0016 2706          	jreq	L42
 341  0018 ae0057        	ldw	x,#87
 342  001b cd0155        	call	LC001
 343  001e               L42:
 344                     ; 88     assert_param(IS_UART3_PARITY_OK(Parity));
 346  001e 7b17          	ld	a,(OFST+9,sp)
 347  0020 270e          	jreq	L43
 348  0022 a104          	cp	a,#4
 349  0024 270a          	jreq	L43
 350  0026 a106          	cp	a,#6
 351  0028 2706          	jreq	L43
 352  002a ae0058        	ldw	x,#88
 353  002d cd0155        	call	LC001
 354  0030               L43:
 355                     ; 89     assert_param(IS_UART3_BAUDRATE_OK(BaudRate));
 357  0030 96            	ldw	x,sp
 358  0031 1c0011        	addw	x,#OFST+3
 359  0034 cd0000        	call	c_ltor
 361  0037 ae0000        	ldw	x,#L24
 362  003a cd0000        	call	c_lcmp
 364  003d 2506          	jrult	L44
 365  003f ae0059        	ldw	x,#89
 366  0042 cd0155        	call	LC001
 367  0045               L44:
 368                     ; 90     assert_param(IS_UART3_MODE_OK((uint8_t)Mode));
 370  0045 7b18          	ld	a,(OFST+10,sp)
 371  0047 a108          	cp	a,#8
 372  0049 2722          	jreq	L45
 373  004b a140          	cp	a,#64
 374  004d 271e          	jreq	L45
 375  004f a104          	cp	a,#4
 376  0051 271a          	jreq	L45
 377  0053 a180          	cp	a,#128
 378  0055 2716          	jreq	L45
 379  0057 a10c          	cp	a,#12
 380  0059 2712          	jreq	L45
 381  005b a144          	cp	a,#68
 382  005d 270e          	jreq	L45
 383  005f a1c0          	cp	a,#192
 384  0061 270a          	jreq	L45
 385  0063 a188          	cp	a,#136
 386  0065 2706          	jreq	L45
 387  0067 ae005a        	ldw	x,#90
 388  006a cd0155        	call	LC001
 389  006d               L45:
 390                     ; 93     UART3->CR1 &= (uint8_t)(~UART3_CR1_M);     
 392  006d 72195244      	bres	21060,#4
 393                     ; 95     UART3->CR1 |= (uint8_t)WordLength; 
 395  0071 c65244        	ld	a,21060
 396  0074 1a15          	or	a,(OFST+7,sp)
 397  0076 c75244        	ld	21060,a
 398                     ; 98     UART3->CR3 &= (uint8_t)(~UART3_CR3_STOP);  
 400  0079 c65246        	ld	a,21062
 401  007c a4cf          	and	a,#207
 402  007e c75246        	ld	21062,a
 403                     ; 100     UART3->CR3 |= (uint8_t)StopBits;  
 405  0081 c65246        	ld	a,21062
 406  0084 1a16          	or	a,(OFST+8,sp)
 407  0086 c75246        	ld	21062,a
 408                     ; 103     UART3->CR1 &= (uint8_t)(~(UART3_CR1_PCEN | UART3_CR1_PS));  
 410  0089 c65244        	ld	a,21060
 411  008c a4f9          	and	a,#249
 412  008e c75244        	ld	21060,a
 413                     ; 105     UART3->CR1 |= (uint8_t)Parity;     
 415  0091 c65244        	ld	a,21060
 416  0094 1a17          	or	a,(OFST+9,sp)
 417  0096 c75244        	ld	21060,a
 418                     ; 108     UART3->BRR1 &= (uint8_t)(~UART3_BRR1_DIVM);  
 420  0099 725f5242      	clr	21058
 421                     ; 110     UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVM);  
 423  009d c65243        	ld	a,21059
 424  00a0 a40f          	and	a,#15
 425  00a2 c75243        	ld	21059,a
 426                     ; 112     UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVF);  
 428  00a5 c65243        	ld	a,21059
 429  00a8 a4f0          	and	a,#240
 430  00aa c75243        	ld	21059,a
 431                     ; 115     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 433  00ad 96            	ldw	x,sp
 434  00ae cd0161        	call	LC002
 436  00b1 96            	ldw	x,sp
 437  00b2 5c            	incw	x
 438  00b3 cd0000        	call	c_rtol
 440  00b6 cd0000        	call	_CLK_GetClockFreq
 442  00b9 96            	ldw	x,sp
 443  00ba 5c            	incw	x
 444  00bb cd0000        	call	c_ludv
 446  00be 96            	ldw	x,sp
 447  00bf 1c000b        	addw	x,#OFST-3
 448  00c2 cd0000        	call	c_rtol
 450                     ; 116     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 452  00c5 96            	ldw	x,sp
 453  00c6 cd0161        	call	LC002
 455  00c9 96            	ldw	x,sp
 456  00ca 5c            	incw	x
 457  00cb cd0000        	call	c_rtol
 459  00ce cd0000        	call	_CLK_GetClockFreq
 461  00d1 a664          	ld	a,#100
 462  00d3 cd0000        	call	c_smul
 464  00d6 96            	ldw	x,sp
 465  00d7 5c            	incw	x
 466  00d8 cd0000        	call	c_ludv
 468  00db 96            	ldw	x,sp
 469  00dc 1c0007        	addw	x,#OFST-7
 470  00df cd0000        	call	c_rtol
 472                     ; 119     BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 472                     ; 120                         << 4) / 100) & (uint8_t)0x0F); 
 474  00e2 96            	ldw	x,sp
 475  00e3 1c000b        	addw	x,#OFST-3
 476  00e6 cd0000        	call	c_ltor
 478  00e9 a664          	ld	a,#100
 479  00eb cd0000        	call	c_smul
 481  00ee 96            	ldw	x,sp
 482  00ef 5c            	incw	x
 483  00f0 cd0000        	call	c_rtol
 485  00f3 96            	ldw	x,sp
 486  00f4 1c0007        	addw	x,#OFST-7
 487  00f7 cd0000        	call	c_ltor
 489  00fa 96            	ldw	x,sp
 490  00fb 5c            	incw	x
 491  00fc cd0000        	call	c_lsub
 493  00ff a604          	ld	a,#4
 494  0101 cd0000        	call	c_llsh
 496  0104 ae0004        	ldw	x,#L46
 497  0107 cd0000        	call	c_ludv
 499  010a b603          	ld	a,c_lreg+3
 500  010c a40f          	and	a,#15
 501  010e 6b05          	ld	(OFST-9,sp),a
 502                     ; 121     BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 504  0110 96            	ldw	x,sp
 505  0111 1c000b        	addw	x,#OFST-3
 506  0114 cd0000        	call	c_ltor
 508  0117 a604          	ld	a,#4
 509  0119 cd0000        	call	c_lursh
 511  011c b603          	ld	a,c_lreg+3
 512  011e a4f0          	and	a,#240
 513  0120 b703          	ld	c_lreg+3,a
 514  0122 3f02          	clr	c_lreg+2
 515  0124 3f01          	clr	c_lreg+1
 516  0126 3f00          	clr	c_lreg
 517  0128 6b06          	ld	(OFST-8,sp),a
 518                     ; 123     UART3->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 520  012a 1a05          	or	a,(OFST-9,sp)
 521  012c c75243        	ld	21059,a
 522                     ; 125     UART3->BRR1 = (uint8_t)BaudRate_Mantissa;           
 524  012f 7b0e          	ld	a,(OFST+0,sp)
 525  0131 c75242        	ld	21058,a
 526                     ; 127     if ((uint8_t)(Mode & UART3_MODE_TX_ENABLE))
 528  0134 7b18          	ld	a,(OFST+10,sp)
 529  0136 a504          	bcp	a,#4
 530  0138 2706          	jreq	L731
 531                     ; 130         UART3->CR2 |= UART3_CR2_TEN;  
 533  013a 72165245      	bset	21061,#3
 535  013e 2004          	jra	L141
 536  0140               L731:
 537                     ; 135         UART3->CR2 &= (uint8_t)(~UART3_CR2_TEN);  
 539  0140 72175245      	bres	21061,#3
 540  0144               L141:
 541                     ; 137     if ((uint8_t)(Mode & UART3_MODE_RX_ENABLE))
 543  0144 a508          	bcp	a,#8
 544  0146 2706          	jreq	L341
 545                     ; 140         UART3->CR2 |= UART3_CR2_REN;  
 547  0148 72145245      	bset	21061,#2
 549  014c 2004          	jra	L541
 550  014e               L341:
 551                     ; 145         UART3->CR2 &= (uint8_t)(~UART3_CR2_REN);  
 553  014e 72155245      	bres	21061,#2
 554  0152               L541:
 555                     ; 147 }
 558  0152 5b0e          	addw	sp,#14
 559  0154 81            	ret	
 560  0155               LC001:
 561  0155 89            	pushw	x
 562  0156 5f            	clrw	x
 563  0157 89            	pushw	x
 564  0158 ae0008        	ldw	x,#L531
 565  015b cd0000        	call	_assert_failed
 567  015e 5b04          	addw	sp,#4
 568  0160 81            	ret	
 569  0161               LC002:
 570  0161 1c0011        	addw	x,#OFST+3
 571  0164 cd0000        	call	c_ltor
 573  0167 a604          	ld	a,#4
 574  0169 cc0000        	jp	c_llsh
 629                     ; 155 void UART3_Cmd(FunctionalState NewState)
 629                     ; 156 {
 630                     .text:	section	.text,new
 631  0000               _UART3_Cmd:
 635                     ; 158     if (NewState != DISABLE)
 637  0000 4d            	tnz	a
 638  0001 2705          	jreq	L571
 639                     ; 161         UART3->CR1 &= (uint8_t)(~UART3_CR1_UARTD); 
 641  0003 721b5244      	bres	21060,#5
 644  0007 81            	ret	
 645  0008               L571:
 646                     ; 166         UART3->CR1 |= UART3_CR1_UARTD;  
 648  0008 721a5244      	bset	21060,#5
 649                     ; 168 }
 652  000c 81            	ret	
 781                     ; 185 void UART3_ITConfig(UART3_IT_TypeDef UART3_IT, FunctionalState NewState)
 781                     ; 186 {
 782                     .text:	section	.text,new
 783  0000               _UART3_ITConfig:
 785  0000 89            	pushw	x
 786  0001 89            	pushw	x
 787       00000002      OFST:	set	2
 790                     ; 187     uint8_t uartreg = 0, itpos = 0x00;
 794                     ; 190     assert_param(IS_UART3_CONFIG_IT_OK(UART3_IT));
 796  0002 a30100        	cpw	x,#256
 797  0005 2724          	jreq	L67
 798  0007 a30277        	cpw	x,#631
 799  000a 271f          	jreq	L67
 800  000c a30266        	cpw	x,#614
 801  000f 271a          	jreq	L67
 802  0011 a30205        	cpw	x,#517
 803  0014 2715          	jreq	L67
 804  0016 a30244        	cpw	x,#580
 805  0019 2710          	jreq	L67
 806  001b a30412        	cpw	x,#1042
 807  001e 270b          	jreq	L67
 808  0020 a30346        	cpw	x,#838
 809  0023 2706          	jreq	L67
 810  0025 ae00be        	ldw	x,#190
 811  0028 cd00b5        	call	LC007
 812  002b               L67:
 813                     ; 191     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 815  002b 7b07          	ld	a,(OFST+5,sp)
 816  002d 2708          	jreq	L601
 817  002f 4a            	dec	a
 818  0030 2705          	jreq	L601
 819  0032 ae00bf        	ldw	x,#191
 820  0035 ad7e          	call	LC007
 821  0037               L601:
 822                     ; 194     uartreg = (uint8_t)((uint16_t)UART3_IT >> 0x08);
 824  0037 7b03          	ld	a,(OFST+1,sp)
 825  0039 6b01          	ld	(OFST-1,sp),a
 826                     ; 197     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
 828  003b 7b04          	ld	a,(OFST+2,sp)
 829  003d a40f          	and	a,#15
 830  003f 5f            	clrw	x
 831  0040 97            	ld	xl,a
 832  0041 a601          	ld	a,#1
 833  0043 5d            	tnzw	x
 834  0044 2704          	jreq	L211
 835  0046               L411:
 836  0046 48            	sll	a
 837  0047 5a            	decw	x
 838  0048 26fc          	jrne	L411
 839  004a               L211:
 840  004a 6b02          	ld	(OFST+0,sp),a
 841                     ; 199     if (NewState != DISABLE)
 843  004c 7b07          	ld	a,(OFST+5,sp)
 844  004e 272a          	jreq	L552
 845                     ; 202         if (uartreg == 0x01)
 847  0050 7b01          	ld	a,(OFST-1,sp)
 848  0052 a101          	cp	a,#1
 849  0054 2607          	jrne	L752
 850                     ; 204             UART3->CR1 |= itpos;
 852  0056 c65244        	ld	a,21060
 853  0059 1a02          	or	a,(OFST+0,sp)
 855  005b 2029          	jp	LC005
 856  005d               L752:
 857                     ; 206         else if (uartreg == 0x02)
 859  005d a102          	cp	a,#2
 860  005f 2607          	jrne	L362
 861                     ; 208             UART3->CR2 |= itpos;
 863  0061 c65245        	ld	a,21061
 864  0064 1a02          	or	a,(OFST+0,sp)
 866  0066 202d          	jp	LC004
 867  0068               L362:
 868                     ; 210         else if (uartreg == 0x03)
 870  0068 a103          	cp	a,#3
 871  006a 2607          	jrne	L762
 872                     ; 212             UART3->CR4 |= itpos;
 874  006c c65247        	ld	a,21063
 875  006f 1a02          	or	a,(OFST+0,sp)
 877  0071 2031          	jp	LC006
 878  0073               L762:
 879                     ; 216             UART3->CR6 |= itpos;
 881  0073 c65249        	ld	a,21065
 882  0076 1a02          	or	a,(OFST+0,sp)
 883  0078 2035          	jp	LC003
 884  007a               L552:
 885                     ; 222         if (uartreg == 0x01)
 887  007a 7b01          	ld	a,(OFST-1,sp)
 888  007c a101          	cp	a,#1
 889  007e 260b          	jrne	L572
 890                     ; 224             UART3->CR1 &= (uint8_t)(~itpos);
 892  0080 7b02          	ld	a,(OFST+0,sp)
 893  0082 43            	cpl	a
 894  0083 c45244        	and	a,21060
 895  0086               LC005:
 896  0086 c75244        	ld	21060,a
 898  0089 2027          	jra	L372
 899  008b               L572:
 900                     ; 226         else if (uartreg == 0x02)
 902  008b a102          	cp	a,#2
 903  008d 260b          	jrne	L103
 904                     ; 228             UART3->CR2 &= (uint8_t)(~itpos);
 906  008f 7b02          	ld	a,(OFST+0,sp)
 907  0091 43            	cpl	a
 908  0092 c45245        	and	a,21061
 909  0095               LC004:
 910  0095 c75245        	ld	21061,a
 912  0098 2018          	jra	L372
 913  009a               L103:
 914                     ; 230         else if (uartreg == 0x03)
 916  009a a103          	cp	a,#3
 917  009c 260b          	jrne	L503
 918                     ; 232             UART3->CR4 &= (uint8_t)(~itpos);
 920  009e 7b02          	ld	a,(OFST+0,sp)
 921  00a0 43            	cpl	a
 922  00a1 c45247        	and	a,21063
 923  00a4               LC006:
 924  00a4 c75247        	ld	21063,a
 926  00a7 2009          	jra	L372
 927  00a9               L503:
 928                     ; 236             UART3->CR6 &= (uint8_t)(~itpos);
 930  00a9 7b02          	ld	a,(OFST+0,sp)
 931  00ab 43            	cpl	a
 932  00ac c45249        	and	a,21065
 933  00af               LC003:
 934  00af c75249        	ld	21065,a
 935  00b2               L372:
 936                     ; 239 }
 939  00b2 5b04          	addw	sp,#4
 940  00b4 81            	ret	
 941  00b5               LC007:
 942  00b5 89            	pushw	x
 943  00b6 5f            	clrw	x
 944  00b7 89            	pushw	x
 945  00b8 ae0008        	ldw	x,#L531
 946  00bb cd0000        	call	_assert_failed
 948  00be 5b04          	addw	sp,#4
 949  00c0 81            	ret	
1009                     ; 248 void UART3_LINBreakDetectionConfig(UART3_LINBreakDetectionLength_TypeDef UART3_LINBreakDetectionLength)
1009                     ; 249 {
1010                     .text:	section	.text,new
1011  0000               _UART3_LINBreakDetectionConfig:
1013  0000 88            	push	a
1014       00000000      OFST:	set	0
1017                     ; 251     assert_param(IS_UART3_LINBREAKDETECTIONLENGTH_OK(UART3_LINBreakDetectionLength));
1019  0001 4d            	tnz	a
1020  0002 2711          	jreq	L421
1021  0004 4a            	dec	a
1022  0005 270e          	jreq	L421
1023  0007 ae00fb        	ldw	x,#251
1024  000a 89            	pushw	x
1025  000b 5f            	clrw	x
1026  000c 89            	pushw	x
1027  000d ae0008        	ldw	x,#L531
1028  0010 cd0000        	call	_assert_failed
1030  0013 5b04          	addw	sp,#4
1031  0015               L421:
1032                     ; 253     if (UART3_LINBreakDetectionLength != UART3_LINBREAKDETECTIONLENGTH_10BITS)
1034  0015 7b01          	ld	a,(OFST+1,sp)
1035  0017 2706          	jreq	L733
1036                     ; 255         UART3->CR4 |= UART3_CR4_LBDL;
1038  0019 721a5247      	bset	21063,#5
1040  001d 2004          	jra	L143
1041  001f               L733:
1042                     ; 259         UART3->CR4 &= ((uint8_t)~UART3_CR4_LBDL);
1044  001f 721b5247      	bres	21063,#5
1045  0023               L143:
1046                     ; 261 }
1049  0023 84            	pop	a
1050  0024 81            	ret	
1172                     ; 273 void UART3_LINConfig(UART3_LinMode_TypeDef UART3_Mode,
1172                     ; 274                      UART3_LinAutosync_TypeDef UART3_Autosync, 
1172                     ; 275                      UART3_LinDivUp_TypeDef UART3_DivUp)
1172                     ; 276 {
1173                     .text:	section	.text,new
1174  0000               _UART3_LINConfig:
1176  0000 89            	pushw	x
1177       00000000      OFST:	set	0
1180                     ; 278     assert_param(IS_UART3_SLAVE_OK(UART3_Mode));
1182  0001 9e            	ld	a,xh
1183  0002 4d            	tnz	a
1184  0003 2709          	jreq	L631
1185  0005 9e            	ld	a,xh
1186  0006 4a            	dec	a
1187  0007 2705          	jreq	L631
1188  0009 ae0116        	ldw	x,#278
1189  000c ad46          	call	LC008
1190  000e               L631:
1191                     ; 279     assert_param(IS_UART3_AUTOSYNC_OK(UART3_Autosync));
1193  000e 7b02          	ld	a,(OFST+2,sp)
1194  0010 4a            	dec	a
1195  0011 2709          	jreq	L641
1196  0013 7b02          	ld	a,(OFST+2,sp)
1197  0015 2705          	jreq	L641
1198  0017 ae0117        	ldw	x,#279
1199  001a ad38          	call	LC008
1200  001c               L641:
1201                     ; 280     assert_param(IS_UART3_DIVUP_OK(UART3_DivUp));
1203  001c 7b05          	ld	a,(OFST+5,sp)
1204  001e 2708          	jreq	L651
1205  0020 4a            	dec	a
1206  0021 2705          	jreq	L651
1207  0023 ae0118        	ldw	x,#280
1208  0026 ad2c          	call	LC008
1209  0028               L651:
1210                     ; 282     if (UART3_Mode != UART3_LIN_MODE_MASTER)
1212  0028 7b01          	ld	a,(OFST+1,sp)
1213  002a 2706          	jreq	L124
1214                     ; 284         UART3->CR6 |=  UART3_CR6_LSLV;
1216  002c 721a5249      	bset	21065,#5
1218  0030 2004          	jra	L324
1219  0032               L124:
1220                     ; 288         UART3->CR6 &= ((uint8_t)~UART3_CR6_LSLV);
1222  0032 721b5249      	bres	21065,#5
1223  0036               L324:
1224                     ; 291     if (UART3_Autosync != UART3_LIN_AUTOSYNC_DISABLE)
1226  0036 7b02          	ld	a,(OFST+2,sp)
1227  0038 2706          	jreq	L524
1228                     ; 293         UART3->CR6 |=  UART3_CR6_LASE ;
1230  003a 72185249      	bset	21065,#4
1232  003e 2004          	jra	L724
1233  0040               L524:
1234                     ; 297         UART3->CR6 &= ((uint8_t)~ UART3_CR6_LASE );
1236  0040 72195249      	bres	21065,#4
1237  0044               L724:
1238                     ; 300     if (UART3_DivUp != UART3_LIN_DIVUP_LBRR1)
1240  0044 7b05          	ld	a,(OFST+5,sp)
1241  0046 2706          	jreq	L134
1242                     ; 302         UART3->CR6 |=  UART3_CR6_LDUM;
1244  0048 721e5249      	bset	21065,#7
1246  004c 2004          	jra	L334
1247  004e               L134:
1248                     ; 306         UART3->CR6 &= ((uint8_t)~ UART3_CR6_LDUM);
1250  004e 721f5249      	bres	21065,#7
1251  0052               L334:
1252                     ; 308 }
1255  0052 85            	popw	x
1256  0053 81            	ret	
1257  0054               LC008:
1258  0054 89            	pushw	x
1259  0055 5f            	clrw	x
1260  0056 89            	pushw	x
1261  0057 ae0008        	ldw	x,#L531
1262  005a cd0000        	call	_assert_failed
1264  005d 5b04          	addw	sp,#4
1265  005f 81            	ret	
1301                     ; 316 void UART3_LINCmd(FunctionalState NewState)
1301                     ; 317 {
1302                     .text:	section	.text,new
1303  0000               _UART3_LINCmd:
1305  0000 88            	push	a
1306       00000000      OFST:	set	0
1309                     ; 319     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1311  0001 4d            	tnz	a
1312  0002 2711          	jreq	L071
1313  0004 4a            	dec	a
1314  0005 270e          	jreq	L071
1315  0007 ae013f        	ldw	x,#319
1316  000a 89            	pushw	x
1317  000b 5f            	clrw	x
1318  000c 89            	pushw	x
1319  000d ae0008        	ldw	x,#L531
1320  0010 cd0000        	call	_assert_failed
1322  0013 5b04          	addw	sp,#4
1323  0015               L071:
1324                     ; 321     if (NewState != DISABLE)
1326  0015 7b01          	ld	a,(OFST+1,sp)
1327  0017 2706          	jreq	L354
1328                     ; 324         UART3->CR3 |= UART3_CR3_LINEN;
1330  0019 721c5246      	bset	21062,#6
1332  001d 2004          	jra	L554
1333  001f               L354:
1334                     ; 329         UART3->CR3 &= ((uint8_t)~UART3_CR3_LINEN);
1336  001f 721d5246      	bres	21062,#6
1337  0023               L554:
1338                     ; 331 }
1341  0023 84            	pop	a
1342  0024 81            	ret	
1400                     ; 339 void UART3_WakeUpConfig(UART3_WakeUp_TypeDef UART3_WakeUp)
1400                     ; 340 {
1401                     .text:	section	.text,new
1402  0000               _UART3_WakeUpConfig:
1404  0000 88            	push	a
1405       00000000      OFST:	set	0
1408                     ; 342     assert_param(IS_UART3_WAKEUP_OK(UART3_WakeUp));
1410  0001 4d            	tnz	a
1411  0002 2712          	jreq	L202
1412  0004 a108          	cp	a,#8
1413  0006 270e          	jreq	L202
1414  0008 ae0156        	ldw	x,#342
1415  000b 89            	pushw	x
1416  000c 5f            	clrw	x
1417  000d 89            	pushw	x
1418  000e ae0008        	ldw	x,#L531
1419  0011 cd0000        	call	_assert_failed
1421  0014 5b04          	addw	sp,#4
1422  0016               L202:
1423                     ; 344     UART3->CR1 &= ((uint8_t)~UART3_CR1_WAKE);
1425  0016 72175244      	bres	21060,#3
1426                     ; 345     UART3->CR1 |= (uint8_t)UART3_WakeUp;
1428  001a c65244        	ld	a,21060
1429  001d 1a01          	or	a,(OFST+1,sp)
1430  001f c75244        	ld	21060,a
1431                     ; 346 }
1434  0022 84            	pop	a
1435  0023 81            	ret	
1472                     ; 354 void UART3_ReceiverWakeUpCmd(FunctionalState NewState)
1472                     ; 355 {
1473                     .text:	section	.text,new
1474  0000               _UART3_ReceiverWakeUpCmd:
1476  0000 88            	push	a
1477       00000000      OFST:	set	0
1480                     ; 357     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1482  0001 4d            	tnz	a
1483  0002 2711          	jreq	L412
1484  0004 4a            	dec	a
1485  0005 270e          	jreq	L412
1486  0007 ae0165        	ldw	x,#357
1487  000a 89            	pushw	x
1488  000b 5f            	clrw	x
1489  000c 89            	pushw	x
1490  000d ae0008        	ldw	x,#L531
1491  0010 cd0000        	call	_assert_failed
1493  0013 5b04          	addw	sp,#4
1494  0015               L412:
1495                     ; 359     if (NewState != DISABLE)
1497  0015 7b01          	ld	a,(OFST+1,sp)
1498  0017 2706          	jreq	L325
1499                     ; 362         UART3->CR2 |= UART3_CR2_RWU;
1501  0019 72125245      	bset	21061,#1
1503  001d 2004          	jra	L525
1504  001f               L325:
1505                     ; 367         UART3->CR2 &= ((uint8_t)~UART3_CR2_RWU);
1507  001f 72135245      	bres	21061,#1
1508  0023               L525:
1509                     ; 369 }
1512  0023 84            	pop	a
1513  0024 81            	ret	
1536                     ; 376 uint8_t UART3_ReceiveData8(void)
1536                     ; 377 {
1537                     .text:	section	.text,new
1538  0000               _UART3_ReceiveData8:
1542                     ; 378     return ((uint8_t)UART3->DR);
1544  0000 c65241        	ld	a,21057
1547  0003 81            	ret	
1579                     ; 386 uint16_t UART3_ReceiveData9(void)
1579                     ; 387 {
1580                     .text:	section	.text,new
1581  0000               _UART3_ReceiveData9:
1583  0000 89            	pushw	x
1584       00000002      OFST:	set	2
1587                     ; 388   uint16_t temp = 0;
1589                     ; 390  temp = (uint16_t)(((uint16_t)((uint16_t)UART3->CR1 & (uint16_t)UART3_CR1_R8)) << 1);
1591  0001 c65244        	ld	a,21060
1592  0004 a480          	and	a,#128
1593  0006 5f            	clrw	x
1594  0007 02            	rlwa	x,a
1595  0008 58            	sllw	x
1596  0009 1f01          	ldw	(OFST-1,sp),x
1597                     ; 391   return (uint16_t)((((uint16_t)UART3->DR) | temp) & ((uint16_t)0x01FF));
1599  000b 5f            	clrw	x
1600  000c c65241        	ld	a,21057
1601  000f 97            	ld	xl,a
1602  0010 01            	rrwa	x,a
1603  0011 1a02          	or	a,(OFST+0,sp)
1604  0013 01            	rrwa	x,a
1605  0014 1a01          	or	a,(OFST-1,sp)
1606  0016 a401          	and	a,#1
1607  0018 01            	rrwa	x,a
1610  0019 5b02          	addw	sp,#2
1611  001b 81            	ret	
1643                     ; 399 void UART3_SendData8(uint8_t Data)
1643                     ; 400 {
1644                     .text:	section	.text,new
1645  0000               _UART3_SendData8:
1649                     ; 402     UART3->DR = Data;
1651  0000 c75241        	ld	21057,a
1652                     ; 403 }
1655  0003 81            	ret	
1687                     ; 410 void UART3_SendData9(uint16_t Data)
1687                     ; 411 {
1688                     .text:	section	.text,new
1689  0000               _UART3_SendData9:
1691  0000 89            	pushw	x
1692       00000000      OFST:	set	0
1695                     ; 413     UART3->CR1 &= ((uint8_t)~UART3_CR1_T8);                  
1697  0001 721d5244      	bres	21060,#6
1698                     ; 416     UART3->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART3_CR1_T8); 
1700  0005 54            	srlw	x
1701  0006 54            	srlw	x
1702  0007 9f            	ld	a,xl
1703  0008 a440          	and	a,#64
1704  000a ca5244        	or	a,21060
1705  000d c75244        	ld	21060,a
1706                     ; 419     UART3->DR   = (uint8_t)(Data);                    
1708  0010 7b02          	ld	a,(OFST+2,sp)
1709  0012 c75241        	ld	21057,a
1710                     ; 420 }
1713  0015 85            	popw	x
1714  0016 81            	ret	
1737                     ; 427 void UART3_SendBreak(void)
1737                     ; 428 {
1738                     .text:	section	.text,new
1739  0000               _UART3_SendBreak:
1743                     ; 429     UART3->CR2 |= UART3_CR2_SBK;
1745  0000 72105245      	bset	21061,#0
1746                     ; 430 }
1749  0004 81            	ret	
1782                     ; 437 void UART3_SetAddress(uint8_t UART3_Address)
1782                     ; 438 {
1783                     .text:	section	.text,new
1784  0000               _UART3_SetAddress:
1786  0000 88            	push	a
1787       00000000      OFST:	set	0
1790                     ; 440     assert_param(IS_UART3_ADDRESS_OK(UART3_Address));
1792  0001 a110          	cp	a,#16
1793  0003 250e          	jrult	L632
1794  0005 ae01b8        	ldw	x,#440
1795  0008 89            	pushw	x
1796  0009 5f            	clrw	x
1797  000a 89            	pushw	x
1798  000b ae0008        	ldw	x,#L531
1799  000e cd0000        	call	_assert_failed
1801  0011 5b04          	addw	sp,#4
1802  0013               L632:
1803                     ; 443     UART3->CR4 &= ((uint8_t)~UART3_CR4_ADD);
1805  0013 c65247        	ld	a,21063
1806  0016 a4f0          	and	a,#240
1807  0018 c75247        	ld	21063,a
1808                     ; 445     UART3->CR4 |= UART3_Address;
1810  001b c65247        	ld	a,21063
1811  001e 1a01          	or	a,(OFST+1,sp)
1812  0020 c75247        	ld	21063,a
1813                     ; 446 }
1816  0023 84            	pop	a
1817  0024 81            	ret	
1975                     ; 454 FlagStatus UART3_GetFlagStatus(UART3_Flag_TypeDef UART3_FLAG)
1975                     ; 455 {
1976                     .text:	section	.text,new
1977  0000               _UART3_GetFlagStatus:
1979  0000 89            	pushw	x
1980  0001 88            	push	a
1981       00000001      OFST:	set	1
1984                     ; 456     FlagStatus status = RESET;
1986                     ; 459     assert_param(IS_UART3_FLAG_OK(UART3_FLAG));
1988  0002 a30080        	cpw	x,#128
1989  0005 2745          	jreq	L052
1990  0007 a30040        	cpw	x,#64
1991  000a 2740          	jreq	L052
1992  000c a30020        	cpw	x,#32
1993  000f 273b          	jreq	L052
1994  0011 a30010        	cpw	x,#16
1995  0014 2736          	jreq	L052
1996  0016 a30008        	cpw	x,#8
1997  0019 2731          	jreq	L052
1998  001b a30004        	cpw	x,#4
1999  001e 272c          	jreq	L052
2000  0020 a30002        	cpw	x,#2
2001  0023 2727          	jreq	L052
2002  0025 a30001        	cpw	x,#1
2003  0028 2722          	jreq	L052
2004  002a a30101        	cpw	x,#257
2005  002d 271d          	jreq	L052
2006  002f a30301        	cpw	x,#769
2007  0032 2718          	jreq	L052
2008  0034 a30302        	cpw	x,#770
2009  0037 2713          	jreq	L052
2010  0039 a30210        	cpw	x,#528
2011  003c 270e          	jreq	L052
2012  003e ae01cb        	ldw	x,#459
2013  0041 89            	pushw	x
2014  0042 5f            	clrw	x
2015  0043 89            	pushw	x
2016  0044 ae0008        	ldw	x,#L531
2017  0047 cd0000        	call	_assert_failed
2019  004a 5b04          	addw	sp,#4
2020  004c               L052:
2021                     ; 462     if (UART3_FLAG == UART3_FLAG_LBDF)
2023  004c 1e02          	ldw	x,(OFST+1,sp)
2024  004e a30210        	cpw	x,#528
2025  0051 2609          	jrne	L517
2026                     ; 464         if ((UART3->CR4 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2028  0053 c65247        	ld	a,21063
2029  0056 1503          	bcp	a,(OFST+2,sp)
2030  0058 2725          	jreq	L147
2031                     ; 467             status = SET;
2033  005a 201f          	jp	LC010
2034                     ; 472             status = RESET;
2035  005c               L517:
2036                     ; 475     else if (UART3_FLAG == UART3_FLAG_SBK)
2038  005c a30101        	cpw	x,#257
2039  005f 2609          	jrne	L527
2040                     ; 477         if ((UART3->CR2 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2042  0061 c65245        	ld	a,21061
2043  0064 1503          	bcp	a,(OFST+2,sp)
2044  0066 2717          	jreq	L147
2045                     ; 480             status = SET;
2047  0068 2011          	jp	LC010
2048                     ; 485             status = RESET;
2049  006a               L527:
2050                     ; 488     else if ((UART3_FLAG == UART3_FLAG_LHDF) || (UART3_FLAG == UART3_FLAG_LSF))
2052  006a a30302        	cpw	x,#770
2053  006d 2705          	jreq	L737
2055  006f a30301        	cpw	x,#769
2056  0072 260f          	jrne	L537
2057  0074               L737:
2058                     ; 490         if ((UART3->CR6 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2060  0074 c65249        	ld	a,21065
2061  0077 1503          	bcp	a,(OFST+2,sp)
2062  0079 2704          	jreq	L147
2063                     ; 493             status = SET;
2065  007b               LC010:
2069  007b a601          	ld	a,#1
2071  007d 2001          	jra	L327
2072  007f               L147:
2073                     ; 498             status = RESET;
2078  007f 4f            	clr	a
2079  0080               L327:
2080                     ; 516     return  status;
2084  0080 5b03          	addw	sp,#3
2085  0082 81            	ret	
2086  0083               L537:
2087                     ; 503         if ((UART3->SR & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2089  0083 c65240        	ld	a,21056
2090  0086 1503          	bcp	a,(OFST+2,sp)
2091  0088 27f5          	jreq	L147
2092                     ; 506             status = SET;
2094  008a 20ef          	jp	LC010
2095                     ; 511             status = RESET;
2131                     ; 546 void UART3_ClearFlag(UART3_Flag_TypeDef UART3_FLAG)
2131                     ; 547 {
2132                     .text:	section	.text,new
2133  0000               _UART3_ClearFlag:
2135  0000 89            	pushw	x
2136       00000000      OFST:	set	0
2139                     ; 549     assert_param(IS_UART3_CLEAR_FLAG_OK(UART3_FLAG));
2141  0001 a30020        	cpw	x,#32
2142  0004 271d          	jreq	L262
2143  0006 a30302        	cpw	x,#770
2144  0009 2718          	jreq	L262
2145  000b a30301        	cpw	x,#769
2146  000e 2713          	jreq	L262
2147  0010 a30210        	cpw	x,#528
2148  0013 270e          	jreq	L262
2149  0015 ae0225        	ldw	x,#549
2150  0018 89            	pushw	x
2151  0019 5f            	clrw	x
2152  001a 89            	pushw	x
2153  001b ae0008        	ldw	x,#L531
2154  001e cd0000        	call	_assert_failed
2156  0021 5b04          	addw	sp,#4
2157  0023               L262:
2158                     ; 552     if (UART3_FLAG == UART3_FLAG_RXNE)
2160  0023 1e01          	ldw	x,(OFST+1,sp)
2161  0025 a30020        	cpw	x,#32
2162  0028 2606          	jrne	L177
2163                     ; 554         UART3->SR = (uint8_t)~(UART3_SR_RXNE);
2165  002a 35df5240      	mov	21056,#223
2167  002e 201a          	jra	L377
2168  0030               L177:
2169                     ; 557     else if (UART3_FLAG == UART3_FLAG_LBDF)
2171  0030 a30210        	cpw	x,#528
2172  0033 2606          	jrne	L577
2173                     ; 559         UART3->CR4 &= (uint8_t)(~UART3_CR4_LBDF);
2175  0035 72195247      	bres	21063,#4
2177  0039 200f          	jra	L377
2178  003b               L577:
2179                     ; 562     else if (UART3_FLAG == UART3_FLAG_LHDF)
2181  003b a30302        	cpw	x,#770
2182  003e 2606          	jrne	L1001
2183                     ; 564         UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
2185  0040 72135249      	bres	21065,#1
2187  0044 2004          	jra	L377
2188  0046               L1001:
2189                     ; 569         UART3->CR6 &= (uint8_t)(~UART3_CR6_LSF);
2191  0046 72115249      	bres	21065,#0
2192  004a               L377:
2193                     ; 571 }
2196  004a 85            	popw	x
2197  004b 81            	ret	
2272                     ; 586 ITStatus UART3_GetITStatus(UART3_IT_TypeDef UART3_IT)
2272                     ; 587 {
2273                     .text:	section	.text,new
2274  0000               _UART3_GetITStatus:
2276  0000 89            	pushw	x
2277  0001 89            	pushw	x
2278       00000002      OFST:	set	2
2281                     ; 588     ITStatus pendingbitstatus = RESET;
2283                     ; 589     uint8_t itpos = 0;
2285                     ; 590     uint8_t itmask1 = 0;
2287                     ; 591     uint8_t itmask2 = 0;
2289                     ; 592     uint8_t enablestatus = 0;
2291                     ; 595     assert_param(IS_UART3_GET_IT_OK(UART3_IT));
2293  0002 a30277        	cpw	x,#631
2294  0005 2731          	jreq	L472
2295  0007 a30266        	cpw	x,#614
2296  000a 272c          	jreq	L472
2297  000c a30255        	cpw	x,#597
2298  000f 2727          	jreq	L472
2299  0011 a30244        	cpw	x,#580
2300  0014 2722          	jreq	L472
2301  0016 a30235        	cpw	x,#565
2302  0019 271d          	jreq	L472
2303  001b a30346        	cpw	x,#838
2304  001e 2718          	jreq	L472
2305  0020 a30412        	cpw	x,#1042
2306  0023 2713          	jreq	L472
2307  0025 a30100        	cpw	x,#256
2308  0028 270e          	jreq	L472
2309  002a ae0253        	ldw	x,#595
2310  002d 89            	pushw	x
2311  002e 5f            	clrw	x
2312  002f 89            	pushw	x
2313  0030 ae0008        	ldw	x,#L531
2314  0033 cd0000        	call	_assert_failed
2316  0036 5b04          	addw	sp,#4
2317  0038               L472:
2318                     ; 598     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
2320  0038 7b04          	ld	a,(OFST+2,sp)
2321  003a a40f          	and	a,#15
2322  003c 5f            	clrw	x
2323  003d 97            	ld	xl,a
2324  003e a601          	ld	a,#1
2325  0040 5d            	tnzw	x
2326  0041 2704          	jreq	L003
2327  0043               L203:
2328  0043 48            	sll	a
2329  0044 5a            	decw	x
2330  0045 26fc          	jrne	L203
2331  0047               L003:
2332  0047 6b01          	ld	(OFST-1,sp),a
2333                     ; 600     itmask1 = (uint8_t)((uint8_t)UART3_IT >> (uint8_t)4);
2335  0049 7b04          	ld	a,(OFST+2,sp)
2336  004b 4e            	swap	a
2337  004c a40f          	and	a,#15
2338  004e 6b02          	ld	(OFST+0,sp),a
2339                     ; 602     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2341  0050 5f            	clrw	x
2342  0051 97            	ld	xl,a
2343  0052 a601          	ld	a,#1
2344  0054 5d            	tnzw	x
2345  0055 2704          	jreq	L403
2346  0057               L603:
2347  0057 48            	sll	a
2348  0058 5a            	decw	x
2349  0059 26fc          	jrne	L603
2350  005b               L403:
2351  005b 6b02          	ld	(OFST+0,sp),a
2352                     ; 605     if (UART3_IT == UART3_IT_PE)
2354  005d 1e03          	ldw	x,(OFST+1,sp)
2355  005f a30100        	cpw	x,#256
2356  0062 260c          	jrne	L7301
2357                     ; 608         enablestatus = (uint8_t)((uint8_t)UART3->CR1 & itmask2);
2359  0064 c65244        	ld	a,21060
2360  0067 1402          	and	a,(OFST+0,sp)
2361  0069 6b02          	ld	(OFST+0,sp),a
2362                     ; 611         if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2364  006b c65240        	ld	a,21056
2366                     ; 614             pendingbitstatus = SET;
2368  006e 2020          	jp	LC013
2369                     ; 619             pendingbitstatus = RESET;
2370  0070               L7301:
2371                     ; 622     else if (UART3_IT == UART3_IT_LBDF)
2373  0070 a30346        	cpw	x,#838
2374  0073 260c          	jrne	L7401
2375                     ; 625         enablestatus = (uint8_t)((uint8_t)UART3->CR4 & itmask2);
2377  0075 c65247        	ld	a,21063
2378  0078 1402          	and	a,(OFST+0,sp)
2379  007a 6b02          	ld	(OFST+0,sp),a
2380                     ; 627         if (((UART3->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2382  007c c65247        	ld	a,21063
2384                     ; 630             pendingbitstatus = SET;
2386  007f 200f          	jp	LC013
2387                     ; 635             pendingbitstatus = RESET;
2388  0081               L7401:
2389                     ; 638     else if (UART3_IT == UART3_IT_LHDF)
2391  0081 a30412        	cpw	x,#1042
2392  0084 2616          	jrne	L7501
2393                     ; 641         enablestatus = (uint8_t)((uint8_t)UART3->CR6 & itmask2);
2395  0086 c65249        	ld	a,21065
2396  0089 1402          	and	a,(OFST+0,sp)
2397  008b 6b02          	ld	(OFST+0,sp),a
2398                     ; 643         if (((UART3->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
2400  008d c65249        	ld	a,21065
2402  0090               LC013:
2403  0090 1501          	bcp	a,(OFST-1,sp)
2404  0092 271a          	jreq	L7601
2405  0094 7b02          	ld	a,(OFST+0,sp)
2406  0096 2716          	jreq	L7601
2407                     ; 646             pendingbitstatus = SET;
2409  0098               LC012:
2413  0098 a601          	ld	a,#1
2415  009a 2013          	jra	L5401
2416                     ; 651             pendingbitstatus = RESET;
2417  009c               L7501:
2418                     ; 657         enablestatus = (uint8_t)((uint8_t)UART3->CR2 & itmask2);
2420  009c c65245        	ld	a,21061
2421  009f 1402          	and	a,(OFST+0,sp)
2422  00a1 6b02          	ld	(OFST+0,sp),a
2423                     ; 659         if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2425  00a3 c65240        	ld	a,21056
2426  00a6 1501          	bcp	a,(OFST-1,sp)
2427  00a8 2704          	jreq	L7601
2429  00aa 7b02          	ld	a,(OFST+0,sp)
2430                     ; 662             pendingbitstatus = SET;
2432  00ac 26ea          	jrne	LC012
2433  00ae               L7601:
2434                     ; 667             pendingbitstatus = RESET;
2439  00ae 4f            	clr	a
2440  00af               L5401:
2441                     ; 671     return  pendingbitstatus;
2445  00af 5b04          	addw	sp,#4
2446  00b1 81            	ret	
2483                     ; 701 void UART3_ClearITPendingBit(UART3_IT_TypeDef UART3_IT)
2483                     ; 702 {
2484                     .text:	section	.text,new
2485  0000               _UART3_ClearITPendingBit:
2487  0000 89            	pushw	x
2488       00000000      OFST:	set	0
2491                     ; 704     assert_param(IS_UART3_CLEAR_IT_OK(UART3_IT));
2493  0001 a30255        	cpw	x,#597
2494  0004 2718          	jreq	L613
2495  0006 a30412        	cpw	x,#1042
2496  0009 2713          	jreq	L613
2497  000b a30346        	cpw	x,#838
2498  000e 270e          	jreq	L613
2499  0010 ae02c0        	ldw	x,#704
2500  0013 89            	pushw	x
2501  0014 5f            	clrw	x
2502  0015 89            	pushw	x
2503  0016 ae0008        	ldw	x,#L531
2504  0019 cd0000        	call	_assert_failed
2506  001c 5b04          	addw	sp,#4
2507  001e               L613:
2508                     ; 707     if (UART3_IT == UART3_IT_RXNE)
2510  001e 1e01          	ldw	x,(OFST+1,sp)
2511  0020 a30255        	cpw	x,#597
2512  0023 2606          	jrne	L1111
2513                     ; 709         UART3->SR = (uint8_t)~(UART3_SR_RXNE);
2515  0025 35df5240      	mov	21056,#223
2517  0029 200f          	jra	L3111
2518  002b               L1111:
2519                     ; 712     else if (UART3_IT == UART3_IT_LBDF)
2521  002b a30346        	cpw	x,#838
2522  002e 2606          	jrne	L5111
2523                     ; 714         UART3->CR4 &= (uint8_t)~(UART3_CR4_LBDF);
2525  0030 72195247      	bres	21063,#4
2527  0034 2004          	jra	L3111
2528  0036               L5111:
2529                     ; 719         UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
2531  0036 72135249      	bres	21065,#1
2532  003a               L3111:
2533                     ; 721 }
2536  003a 85            	popw	x
2537  003b 81            	ret	
2550                     	xdef	_UART3_ClearITPendingBit
2551                     	xdef	_UART3_GetITStatus
2552                     	xdef	_UART3_ClearFlag
2553                     	xdef	_UART3_GetFlagStatus
2554                     	xdef	_UART3_SetAddress
2555                     	xdef	_UART3_SendBreak
2556                     	xdef	_UART3_SendData9
2557                     	xdef	_UART3_SendData8
2558                     	xdef	_UART3_ReceiveData9
2559                     	xdef	_UART3_ReceiveData8
2560                     	xdef	_UART3_WakeUpConfig
2561                     	xdef	_UART3_ReceiverWakeUpCmd
2562                     	xdef	_UART3_LINCmd
2563                     	xdef	_UART3_LINConfig
2564                     	xdef	_UART3_LINBreakDetectionConfig
2565                     	xdef	_UART3_ITConfig
2566                     	xdef	_UART3_Cmd
2567                     	xdef	_UART3_Init
2568                     	xdef	_UART3_DeInit
2569                     	xref	_assert_failed
2570                     	xref	_CLK_GetClockFreq
2571                     	switch	.const
2572  0008               L531:
2573  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2574  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2575  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2576  003e 5f7561727433  	dc.b	"_uart3.c",0
2577                     	xref.b	c_lreg
2578                     	xref.b	c_x
2598                     	xref	c_lursh
2599                     	xref	c_lsub
2600                     	xref	c_smul
2601                     	xref	c_ludv
2602                     	xref	c_rtol
2603                     	xref	c_llsh
2604                     	xref	c_lcmp
2605                     	xref	c_ltor
2606                     	end
