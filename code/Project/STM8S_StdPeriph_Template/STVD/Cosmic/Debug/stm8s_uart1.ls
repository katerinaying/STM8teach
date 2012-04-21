   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 46 void UART1_DeInit(void)
  50                     ; 47 {
  52                     .text:	section	.text,new
  53  0000               _UART1_DeInit:
  57                     ; 50     (void)UART1->SR;
  59  0000 c65230        	ld	a,21040
  60                     ; 51     (void)UART1->DR;
  62  0003 c65231        	ld	a,21041
  63                     ; 53     UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  65  0006 725f5233      	clr	21043
  66                     ; 54     UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  68  000a 725f5232      	clr	21042
  69                     ; 56     UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  71  000e 725f5234      	clr	21044
  72                     ; 57     UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  74  0012 725f5235      	clr	21045
  75                     ; 58     UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  77  0016 725f5236      	clr	21046
  78                     ; 59     UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  80  001a 725f5237      	clr	21047
  81                     ; 60     UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  83  001e 725f5238      	clr	21048
  84                     ; 62     UART1->GTR = UART1_GTR_RESET_VALUE;
  86  0022 725f5239      	clr	21049
  87                     ; 63     UART1->PSCR = UART1_PSCR_RESET_VALUE;
  89  0026 725f523a      	clr	21050
  90                     ; 64 }
  93  002a 81            	ret	
 391                     .const:	section	.text
 392  0000               L21:
 393  0000 00098969      	dc.l	625001
 394  0004               L27:
 395  0004 00000064      	dc.l	100
 396                     ; 83 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 396                     ; 84                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 396                     ; 85                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 396                     ; 86 {
 397                     .text:	section	.text,new
 398  0000               _UART1_Init:
 400  0000 520c          	subw	sp,#12
 401       0000000c      OFST:	set	12
 404                     ; 87     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 408                     ; 90     assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 410  0002 96            	ldw	x,sp
 411  0003 1c000f        	addw	x,#OFST+3
 412  0006 cd0000        	call	c_ltor
 414  0009 ae0000        	ldw	x,#L21
 415  000c cd0000        	call	c_lcmp
 417  000f 2506          	jrult	L41
 418  0011 ae005a        	ldw	x,#90
 419  0014 cd01b5        	call	LC001
 420  0017               L41:
 421                     ; 91     assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 423  0017 7b13          	ld	a,(OFST+7,sp)
 424  0019 270a          	jreq	L42
 425  001b a110          	cp	a,#16
 426  001d 2706          	jreq	L42
 427  001f ae005b        	ldw	x,#91
 428  0022 cd01b5        	call	LC001
 429  0025               L42:
 430                     ; 92     assert_param(IS_UART1_STOPBITS_OK(StopBits));
 432  0025 7b14          	ld	a,(OFST+8,sp)
 433  0027 2712          	jreq	L43
 434  0029 a110          	cp	a,#16
 435  002b 270e          	jreq	L43
 436  002d a120          	cp	a,#32
 437  002f 270a          	jreq	L43
 438  0031 a130          	cp	a,#48
 439  0033 2706          	jreq	L43
 440  0035 ae005c        	ldw	x,#92
 441  0038 cd01b5        	call	LC001
 442  003b               L43:
 443                     ; 93     assert_param(IS_UART1_PARITY_OK(Parity));
 445  003b 7b15          	ld	a,(OFST+9,sp)
 446  003d 270e          	jreq	L44
 447  003f a104          	cp	a,#4
 448  0041 270a          	jreq	L44
 449  0043 a106          	cp	a,#6
 450  0045 2706          	jreq	L44
 451  0047 ae005d        	ldw	x,#93
 452  004a cd01b5        	call	LC001
 453  004d               L44:
 454                     ; 94     assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 456  004d 7b17          	ld	a,(OFST+11,sp)
 457  004f a108          	cp	a,#8
 458  0051 2722          	jreq	L45
 459  0053 a140          	cp	a,#64
 460  0055 271e          	jreq	L45
 461  0057 a104          	cp	a,#4
 462  0059 271a          	jreq	L45
 463  005b a180          	cp	a,#128
 464  005d 2716          	jreq	L45
 465  005f a10c          	cp	a,#12
 466  0061 2712          	jreq	L45
 467  0063 a144          	cp	a,#68
 468  0065 270e          	jreq	L45
 469  0067 a1c0          	cp	a,#192
 470  0069 270a          	jreq	L45
 471  006b a188          	cp	a,#136
 472  006d 2706          	jreq	L45
 473  006f ae005e        	ldw	x,#94
 474  0072 cd01b5        	call	LC001
 475  0075               L45:
 476                     ; 95     assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 478  0075 7b16          	ld	a,(OFST+10,sp)
 479  0077 a488          	and	a,#136
 480  0079 a188          	cp	a,#136
 481  007b 2718          	jreq	L06
 482  007d 7b16          	ld	a,(OFST+10,sp)
 483  007f a444          	and	a,#68
 484  0081 a144          	cp	a,#68
 485  0083 2710          	jreq	L06
 486  0085 7b16          	ld	a,(OFST+10,sp)
 487  0087 a422          	and	a,#34
 488  0089 a122          	cp	a,#34
 489  008b 2708          	jreq	L06
 490  008d 7b16          	ld	a,(OFST+10,sp)
 491  008f a411          	and	a,#17
 492  0091 a111          	cp	a,#17
 493  0093 2606          	jrne	L26
 494  0095               L06:
 495  0095 ae005f        	ldw	x,#95
 496  0098 cd01b5        	call	LC001
 497  009b               L26:
 498                     ; 98     UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 500  009b 72195234      	bres	21044,#4
 501                     ; 101     UART1->CR1 |= (uint8_t)WordLength;
 503  009f c65234        	ld	a,21044
 504  00a2 1a13          	or	a,(OFST+7,sp)
 505  00a4 c75234        	ld	21044,a
 506                     ; 104     UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 508  00a7 c65236        	ld	a,21046
 509  00aa a4cf          	and	a,#207
 510  00ac c75236        	ld	21046,a
 511                     ; 106     UART1->CR3 |= (uint8_t)StopBits;  
 513  00af c65236        	ld	a,21046
 514  00b2 1a14          	or	a,(OFST+8,sp)
 515  00b4 c75236        	ld	21046,a
 516                     ; 109     UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 518  00b7 c65234        	ld	a,21044
 519  00ba a4f9          	and	a,#249
 520  00bc c75234        	ld	21044,a
 521                     ; 111     UART1->CR1 |= (uint8_t)Parity;  
 523  00bf c65234        	ld	a,21044
 524  00c2 1a15          	or	a,(OFST+9,sp)
 525  00c4 c75234        	ld	21044,a
 526                     ; 114     UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 528  00c7 725f5232      	clr	21042
 529                     ; 116     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 531  00cb c65233        	ld	a,21043
 532  00ce a40f          	and	a,#15
 533  00d0 c75233        	ld	21043,a
 534                     ; 118     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 536  00d3 c65233        	ld	a,21043
 537  00d6 a4f0          	and	a,#240
 538  00d8 c75233        	ld	21043,a
 539                     ; 121     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 541  00db 96            	ldw	x,sp
 542  00dc cd01c1        	call	LC002
 544  00df 96            	ldw	x,sp
 545  00e0 5c            	incw	x
 546  00e1 cd0000        	call	c_rtol
 548  00e4 cd0000        	call	_CLK_GetClockFreq
 550  00e7 96            	ldw	x,sp
 551  00e8 5c            	incw	x
 552  00e9 cd0000        	call	c_ludv
 554  00ec 96            	ldw	x,sp
 555  00ed 1c0009        	addw	x,#OFST-3
 556  00f0 cd0000        	call	c_rtol
 558                     ; 122     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 560  00f3 96            	ldw	x,sp
 561  00f4 cd01c1        	call	LC002
 563  00f7 96            	ldw	x,sp
 564  00f8 5c            	incw	x
 565  00f9 cd0000        	call	c_rtol
 567  00fc cd0000        	call	_CLK_GetClockFreq
 569  00ff a664          	ld	a,#100
 570  0101 cd0000        	call	c_smul
 572  0104 96            	ldw	x,sp
 573  0105 5c            	incw	x
 574  0106 cd0000        	call	c_ludv
 576  0109 96            	ldw	x,sp
 577  010a 1c0005        	addw	x,#OFST-7
 578  010d cd0000        	call	c_rtol
 580                     ; 124     UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 582  0110 96            	ldw	x,sp
 583  0111 1c0009        	addw	x,#OFST-3
 584  0114 cd0000        	call	c_ltor
 586  0117 a664          	ld	a,#100
 587  0119 cd0000        	call	c_smul
 589  011c 96            	ldw	x,sp
 590  011d 5c            	incw	x
 591  011e cd0000        	call	c_rtol
 593  0121 96            	ldw	x,sp
 594  0122 1c0005        	addw	x,#OFST-7
 595  0125 cd0000        	call	c_ltor
 597  0128 96            	ldw	x,sp
 598  0129 5c            	incw	x
 599  012a cd0000        	call	c_lsub
 601  012d a604          	ld	a,#4
 602  012f cd0000        	call	c_llsh
 604  0132 ae0004        	ldw	x,#L27
 605  0135 cd0000        	call	c_ludv
 607  0138 b603          	ld	a,c_lreg+3
 608  013a a40f          	and	a,#15
 609  013c ca5233        	or	a,21043
 610  013f c75233        	ld	21043,a
 611                     ; 126     UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 613  0142 96            	ldw	x,sp
 614  0143 1c0009        	addw	x,#OFST-3
 615  0146 cd0000        	call	c_ltor
 617  0149 a604          	ld	a,#4
 618  014b cd0000        	call	c_lursh
 620  014e b603          	ld	a,c_lreg+3
 621  0150 a4f0          	and	a,#240
 622  0152 b703          	ld	c_lreg+3,a
 623  0154 3f02          	clr	c_lreg+2
 624  0156 3f01          	clr	c_lreg+1
 625  0158 3f00          	clr	c_lreg
 626  015a ca5233        	or	a,21043
 627  015d c75233        	ld	21043,a
 628                     ; 128     UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 630  0160 c65232        	ld	a,21042
 631  0163 1a0c          	or	a,(OFST+0,sp)
 632  0165 c75232        	ld	21042,a
 633                     ; 131     UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 635  0168 c65235        	ld	a,21045
 636  016b a4f3          	and	a,#243
 637  016d c75235        	ld	21045,a
 638                     ; 133     UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 640  0170 c65236        	ld	a,21046
 641  0173 a4f8          	and	a,#248
 642  0175 c75236        	ld	21046,a
 643                     ; 135     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 643                     ; 136                                               UART1_CR3_CPHA | UART1_CR3_LBCL));  
 645  0178 7b16          	ld	a,(OFST+10,sp)
 646  017a a407          	and	a,#7
 647  017c ca5236        	or	a,21046
 648  017f c75236        	ld	21046,a
 649                     ; 138     if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 651  0182 7b17          	ld	a,(OFST+11,sp)
 652  0184 a504          	bcp	a,#4
 653  0186 2706          	jreq	L761
 654                     ; 141         UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 656  0188 72165235      	bset	21045,#3
 658  018c 2004          	jra	L171
 659  018e               L761:
 660                     ; 146         UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 662  018e 72175235      	bres	21045,#3
 663  0192               L171:
 664                     ; 148     if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 666  0192 a508          	bcp	a,#8
 667  0194 2706          	jreq	L371
 668                     ; 151         UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 670  0196 72145235      	bset	21045,#2
 672  019a 2004          	jra	L571
 673  019c               L371:
 674                     ; 156         UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 676  019c 72155235      	bres	21045,#2
 677  01a0               L571:
 678                     ; 160     if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 680  01a0 7b16          	ld	a,(OFST+10,sp)
 681  01a2 2a06          	jrpl	L771
 682                     ; 163         UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 684  01a4 72175236      	bres	21046,#3
 686  01a8 2008          	jra	L102
 687  01aa               L771:
 688                     ; 167         UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 690  01aa a408          	and	a,#8
 691  01ac ca5236        	or	a,21046
 692  01af c75236        	ld	21046,a
 693  01b2               L102:
 694                     ; 169 }
 697  01b2 5b0c          	addw	sp,#12
 698  01b4 81            	ret	
 699  01b5               LC001:
 700  01b5 89            	pushw	x
 701  01b6 5f            	clrw	x
 702  01b7 89            	pushw	x
 703  01b8 ae0008        	ldw	x,#L561
 704  01bb cd0000        	call	_assert_failed
 706  01be 5b04          	addw	sp,#4
 707  01c0 81            	ret	
 708  01c1               LC002:
 709  01c1 1c000f        	addw	x,#OFST+3
 710  01c4 cd0000        	call	c_ltor
 712  01c7 a604          	ld	a,#4
 713  01c9 cc0000        	jp	c_llsh
 768                     ; 177 void UART1_Cmd(FunctionalState NewState)
 768                     ; 178 {
 769                     .text:	section	.text,new
 770  0000               _UART1_Cmd:
 774                     ; 179     if (NewState != DISABLE)
 776  0000 4d            	tnz	a
 777  0001 2705          	jreq	L132
 778                     ; 182         UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 780  0003 721b5234      	bres	21044,#5
 783  0007 81            	ret	
 784  0008               L132:
 785                     ; 187         UART1->CR1 |= UART1_CR1_UARTD;  
 787  0008 721a5234      	bset	21044,#5
 788                     ; 189 }
 791  000c 81            	ret	
 913                     ; 205 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 913                     ; 206 {
 914                     .text:	section	.text,new
 915  0000               _UART1_ITConfig:
 917  0000 89            	pushw	x
 918  0001 89            	pushw	x
 919       00000002      OFST:	set	2
 922                     ; 207     uint8_t uartreg = 0, itpos = 0x00;
 926                     ; 210     assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 928  0002 a30100        	cpw	x,#256
 929  0005 271e          	jreq	L401
 930  0007 a30277        	cpw	x,#631
 931  000a 2719          	jreq	L401
 932  000c a30266        	cpw	x,#614
 933  000f 2714          	jreq	L401
 934  0011 a30205        	cpw	x,#517
 935  0014 270f          	jreq	L401
 936  0016 a30244        	cpw	x,#580
 937  0019 270a          	jreq	L401
 938  001b a30346        	cpw	x,#838
 939  001e 2705          	jreq	L401
 940  0020 ae00d2        	ldw	x,#210
 941  0023 ad70          	call	LC006
 942  0025               L401:
 943                     ; 211     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 945  0025 7b07          	ld	a,(OFST+5,sp)
 946  0027 2708          	jreq	L411
 947  0029 4a            	dec	a
 948  002a 2705          	jreq	L411
 949  002c ae00d3        	ldw	x,#211
 950  002f ad64          	call	LC006
 951  0031               L411:
 952                     ; 214     uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 954  0031 7b03          	ld	a,(OFST+1,sp)
 955  0033 6b01          	ld	(OFST-1,sp),a
 956                     ; 216     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 958  0035 7b04          	ld	a,(OFST+2,sp)
 959  0037 a40f          	and	a,#15
 960  0039 5f            	clrw	x
 961  003a 97            	ld	xl,a
 962  003b a601          	ld	a,#1
 963  003d 5d            	tnzw	x
 964  003e 2704          	jreq	L021
 965  0040               L221:
 966  0040 48            	sll	a
 967  0041 5a            	decw	x
 968  0042 26fc          	jrne	L221
 969  0044               L021:
 970  0044 6b02          	ld	(OFST+0,sp),a
 971                     ; 218     if (NewState != DISABLE)
 973  0046 7b07          	ld	a,(OFST+5,sp)
 974  0048 271f          	jreq	L703
 975                     ; 221         if (uartreg == 0x01)
 977  004a 7b01          	ld	a,(OFST-1,sp)
 978  004c a101          	cp	a,#1
 979  004e 2607          	jrne	L113
 980                     ; 223             UART1->CR1 |= itpos;
 982  0050 c65234        	ld	a,21044
 983  0053 1a02          	or	a,(OFST+0,sp)
 985  0055 201e          	jp	LC004
 986  0057               L113:
 987                     ; 225         else if (uartreg == 0x02)
 989  0057 a102          	cp	a,#2
 990  0059 2607          	jrne	L513
 991                     ; 227             UART1->CR2 |= itpos;
 993  005b c65235        	ld	a,21045
 994  005e 1a02          	or	a,(OFST+0,sp)
 996  0060 2022          	jp	LC005
 997  0062               L513:
 998                     ; 231             UART1->CR4 |= itpos;
1000  0062 c65237        	ld	a,21047
1001  0065 1a02          	or	a,(OFST+0,sp)
1002  0067 2026          	jp	LC003
1003  0069               L703:
1004                     ; 237         if (uartreg == 0x01)
1006  0069 7b01          	ld	a,(OFST-1,sp)
1007  006b a101          	cp	a,#1
1008  006d 260b          	jrne	L323
1009                     ; 239             UART1->CR1 &= (uint8_t)(~itpos);
1011  006f 7b02          	ld	a,(OFST+0,sp)
1012  0071 43            	cpl	a
1013  0072 c45234        	and	a,21044
1014  0075               LC004:
1015  0075 c75234        	ld	21044,a
1017  0078 2018          	jra	L123
1018  007a               L323:
1019                     ; 241         else if (uartreg == 0x02)
1021  007a a102          	cp	a,#2
1022  007c 260b          	jrne	L723
1023                     ; 243             UART1->CR2 &= (uint8_t)(~itpos);
1025  007e 7b02          	ld	a,(OFST+0,sp)
1026  0080 43            	cpl	a
1027  0081 c45235        	and	a,21045
1028  0084               LC005:
1029  0084 c75235        	ld	21045,a
1031  0087 2009          	jra	L123
1032  0089               L723:
1033                     ; 247             UART1->CR4 &= (uint8_t)(~itpos);
1035  0089 7b02          	ld	a,(OFST+0,sp)
1036  008b 43            	cpl	a
1037  008c c45237        	and	a,21047
1038  008f               LC003:
1039  008f c75237        	ld	21047,a
1040  0092               L123:
1041                     ; 251 }
1044  0092 5b04          	addw	sp,#4
1045  0094 81            	ret	
1046  0095               LC006:
1047  0095 89            	pushw	x
1048  0096 5f            	clrw	x
1049  0097 89            	pushw	x
1050  0098 ae0008        	ldw	x,#L561
1051  009b cd0000        	call	_assert_failed
1053  009e 5b04          	addw	sp,#4
1054  00a0 81            	ret	
1091                     ; 258 void UART1_HalfDuplexCmd(FunctionalState NewState)
1091                     ; 259 {
1092                     .text:	section	.text,new
1093  0000               _UART1_HalfDuplexCmd:
1095  0000 88            	push	a
1096       00000000      OFST:	set	0
1099                     ; 260     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1101  0001 4d            	tnz	a
1102  0002 2711          	jreq	L231
1103  0004 4a            	dec	a
1104  0005 270e          	jreq	L231
1105  0007 ae0104        	ldw	x,#260
1106  000a 89            	pushw	x
1107  000b 5f            	clrw	x
1108  000c 89            	pushw	x
1109  000d ae0008        	ldw	x,#L561
1110  0010 cd0000        	call	_assert_failed
1112  0013 5b04          	addw	sp,#4
1113  0015               L231:
1114                     ; 262     if (NewState != DISABLE)
1116  0015 7b01          	ld	a,(OFST+1,sp)
1117  0017 2706          	jreq	L153
1118                     ; 264         UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1120  0019 72165238      	bset	21048,#3
1122  001d 2004          	jra	L353
1123  001f               L153:
1124                     ; 268         UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1126  001f 72175238      	bres	21048,#3
1127  0023               L353:
1128                     ; 270 }
1131  0023 84            	pop	a
1132  0024 81            	ret	
1190                     ; 278 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1190                     ; 279 {
1191                     .text:	section	.text,new
1192  0000               _UART1_IrDAConfig:
1194  0000 88            	push	a
1195       00000000      OFST:	set	0
1198                     ; 280     assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1200  0001 a101          	cp	a,#1
1201  0003 2711          	jreq	L441
1202  0005 4d            	tnz	a
1203  0006 270e          	jreq	L441
1204  0008 ae0118        	ldw	x,#280
1205  000b 89            	pushw	x
1206  000c 5f            	clrw	x
1207  000d 89            	pushw	x
1208  000e ae0008        	ldw	x,#L561
1209  0011 cd0000        	call	_assert_failed
1211  0014 5b04          	addw	sp,#4
1212  0016               L441:
1213                     ; 282     if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1215  0016 7b01          	ld	a,(OFST+1,sp)
1216  0018 2706          	jreq	L304
1217                     ; 284         UART1->CR5 |= UART1_CR5_IRLP;
1219  001a 72145238      	bset	21048,#2
1221  001e 2004          	jra	L504
1222  0020               L304:
1223                     ; 288         UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1225  0020 72155238      	bres	21048,#2
1226  0024               L504:
1227                     ; 290 }
1230  0024 84            	pop	a
1231  0025 81            	ret	
1267                     ; 298 void UART1_IrDACmd(FunctionalState NewState)
1267                     ; 299 {
1268                     .text:	section	.text,new
1269  0000               _UART1_IrDACmd:
1271  0000 88            	push	a
1272       00000000      OFST:	set	0
1275                     ; 302     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1277  0001 4d            	tnz	a
1278  0002 2711          	jreq	L651
1279  0004 4a            	dec	a
1280  0005 270e          	jreq	L651
1281  0007 ae012e        	ldw	x,#302
1282  000a 89            	pushw	x
1283  000b 5f            	clrw	x
1284  000c 89            	pushw	x
1285  000d ae0008        	ldw	x,#L561
1286  0010 cd0000        	call	_assert_failed
1288  0013 5b04          	addw	sp,#4
1289  0015               L651:
1290                     ; 304     if (NewState != DISABLE)
1292  0015 7b01          	ld	a,(OFST+1,sp)
1293  0017 2706          	jreq	L524
1294                     ; 307         UART1->CR5 |= UART1_CR5_IREN;
1296  0019 72125238      	bset	21048,#1
1298  001d 2004          	jra	L724
1299  001f               L524:
1300                     ; 312         UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1302  001f 72135238      	bres	21048,#1
1303  0023               L724:
1304                     ; 314 }
1307  0023 84            	pop	a
1308  0024 81            	ret	
1368                     ; 323 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1368                     ; 324 {
1369                     .text:	section	.text,new
1370  0000               _UART1_LINBreakDetectionConfig:
1372  0000 88            	push	a
1373       00000000      OFST:	set	0
1376                     ; 325     assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1378  0001 4d            	tnz	a
1379  0002 2711          	jreq	L071
1380  0004 4a            	dec	a
1381  0005 270e          	jreq	L071
1382  0007 ae0145        	ldw	x,#325
1383  000a 89            	pushw	x
1384  000b 5f            	clrw	x
1385  000c 89            	pushw	x
1386  000d ae0008        	ldw	x,#L561
1387  0010 cd0000        	call	_assert_failed
1389  0013 5b04          	addw	sp,#4
1390  0015               L071:
1391                     ; 327     if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1393  0015 7b01          	ld	a,(OFST+1,sp)
1394  0017 2706          	jreq	L754
1395                     ; 329         UART1->CR4 |= UART1_CR4_LBDL;
1397  0019 721a5237      	bset	21047,#5
1399  001d 2004          	jra	L164
1400  001f               L754:
1401                     ; 333         UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1403  001f 721b5237      	bres	21047,#5
1404  0023               L164:
1405                     ; 335 }
1408  0023 84            	pop	a
1409  0024 81            	ret	
1445                     ; 343 void UART1_LINCmd(FunctionalState NewState)
1445                     ; 344 {
1446                     .text:	section	.text,new
1447  0000               _UART1_LINCmd:
1449  0000 88            	push	a
1450       00000000      OFST:	set	0
1453                     ; 345     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1455  0001 4d            	tnz	a
1456  0002 2711          	jreq	L202
1457  0004 4a            	dec	a
1458  0005 270e          	jreq	L202
1459  0007 ae0159        	ldw	x,#345
1460  000a 89            	pushw	x
1461  000b 5f            	clrw	x
1462  000c 89            	pushw	x
1463  000d ae0008        	ldw	x,#L561
1464  0010 cd0000        	call	_assert_failed
1466  0013 5b04          	addw	sp,#4
1467  0015               L202:
1468                     ; 347     if (NewState != DISABLE)
1470  0015 7b01          	ld	a,(OFST+1,sp)
1471  0017 2706          	jreq	L105
1472                     ; 350         UART1->CR3 |= UART1_CR3_LINEN;
1474  0019 721c5236      	bset	21046,#6
1476  001d 2004          	jra	L305
1477  001f               L105:
1478                     ; 355         UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1480  001f 721d5236      	bres	21046,#6
1481  0023               L305:
1482                     ; 357 }
1485  0023 84            	pop	a
1486  0024 81            	ret	
1522                     ; 364 void UART1_SmartCardCmd(FunctionalState NewState)
1522                     ; 365 {
1523                     .text:	section	.text,new
1524  0000               _UART1_SmartCardCmd:
1526  0000 88            	push	a
1527       00000000      OFST:	set	0
1530                     ; 366     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1532  0001 4d            	tnz	a
1533  0002 2711          	jreq	L412
1534  0004 4a            	dec	a
1535  0005 270e          	jreq	L412
1536  0007 ae016e        	ldw	x,#366
1537  000a 89            	pushw	x
1538  000b 5f            	clrw	x
1539  000c 89            	pushw	x
1540  000d ae0008        	ldw	x,#L561
1541  0010 cd0000        	call	_assert_failed
1543  0013 5b04          	addw	sp,#4
1544  0015               L412:
1545                     ; 368     if (NewState != DISABLE)
1547  0015 7b01          	ld	a,(OFST+1,sp)
1548  0017 2706          	jreq	L325
1549                     ; 371         UART1->CR5 |= UART1_CR5_SCEN;
1551  0019 721a5238      	bset	21048,#5
1553  001d 2004          	jra	L525
1554  001f               L325:
1555                     ; 376         UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1557  001f 721b5238      	bres	21048,#5
1558  0023               L525:
1559                     ; 378 }
1562  0023 84            	pop	a
1563  0024 81            	ret	
1600                     ; 387 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1600                     ; 388 {
1601                     .text:	section	.text,new
1602  0000               _UART1_SmartCardNACKCmd:
1604  0000 88            	push	a
1605       00000000      OFST:	set	0
1608                     ; 389     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1610  0001 4d            	tnz	a
1611  0002 2711          	jreq	L622
1612  0004 4a            	dec	a
1613  0005 270e          	jreq	L622
1614  0007 ae0185        	ldw	x,#389
1615  000a 89            	pushw	x
1616  000b 5f            	clrw	x
1617  000c 89            	pushw	x
1618  000d ae0008        	ldw	x,#L561
1619  0010 cd0000        	call	_assert_failed
1621  0013 5b04          	addw	sp,#4
1622  0015               L622:
1623                     ; 391     if (NewState != DISABLE)
1625  0015 7b01          	ld	a,(OFST+1,sp)
1626  0017 2706          	jreq	L545
1627                     ; 394         UART1->CR5 |= UART1_CR5_NACK;
1629  0019 72185238      	bset	21048,#4
1631  001d 2004          	jra	L745
1632  001f               L545:
1633                     ; 399         UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1635  001f 72195238      	bres	21048,#4
1636  0023               L745:
1637                     ; 401 }
1640  0023 84            	pop	a
1641  0024 81            	ret	
1699                     ; 409 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1699                     ; 410 {
1700                     .text:	section	.text,new
1701  0000               _UART1_WakeUpConfig:
1703  0000 88            	push	a
1704       00000000      OFST:	set	0
1707                     ; 411     assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1709  0001 4d            	tnz	a
1710  0002 2712          	jreq	L042
1711  0004 a108          	cp	a,#8
1712  0006 270e          	jreq	L042
1713  0008 ae019b        	ldw	x,#411
1714  000b 89            	pushw	x
1715  000c 5f            	clrw	x
1716  000d 89            	pushw	x
1717  000e ae0008        	ldw	x,#L561
1718  0011 cd0000        	call	_assert_failed
1720  0014 5b04          	addw	sp,#4
1721  0016               L042:
1722                     ; 413     UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1724  0016 72175234      	bres	21044,#3
1725                     ; 414     UART1->CR1 |= (uint8_t)UART1_WakeUp;
1727  001a c65234        	ld	a,21044
1728  001d 1a01          	or	a,(OFST+1,sp)
1729  001f c75234        	ld	21044,a
1730                     ; 415 }
1733  0022 84            	pop	a
1734  0023 81            	ret	
1771                     ; 422 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1771                     ; 423 {
1772                     .text:	section	.text,new
1773  0000               _UART1_ReceiverWakeUpCmd:
1775  0000 88            	push	a
1776       00000000      OFST:	set	0
1779                     ; 424     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1781  0001 4d            	tnz	a
1782  0002 2711          	jreq	L252
1783  0004 4a            	dec	a
1784  0005 270e          	jreq	L252
1785  0007 ae01a8        	ldw	x,#424
1786  000a 89            	pushw	x
1787  000b 5f            	clrw	x
1788  000c 89            	pushw	x
1789  000d ae0008        	ldw	x,#L561
1790  0010 cd0000        	call	_assert_failed
1792  0013 5b04          	addw	sp,#4
1793  0015               L252:
1794                     ; 426     if (NewState != DISABLE)
1796  0015 7b01          	ld	a,(OFST+1,sp)
1797  0017 2706          	jreq	L516
1798                     ; 429         UART1->CR2 |= UART1_CR2_RWU;
1800  0019 72125235      	bset	21045,#1
1802  001d 2004          	jra	L716
1803  001f               L516:
1804                     ; 434         UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1806  001f 72135235      	bres	21045,#1
1807  0023               L716:
1808                     ; 436 }
1811  0023 84            	pop	a
1812  0024 81            	ret	
1835                     ; 443 uint8_t UART1_ReceiveData8(void)
1835                     ; 444 {
1836                     .text:	section	.text,new
1837  0000               _UART1_ReceiveData8:
1841                     ; 445     return ((uint8_t)UART1->DR);
1843  0000 c65231        	ld	a,21041
1846  0003 81            	ret	
1878                     ; 453 uint16_t UART1_ReceiveData9(void)
1878                     ; 454 {
1879                     .text:	section	.text,new
1880  0000               _UART1_ReceiveData9:
1882  0000 89            	pushw	x
1883       00000002      OFST:	set	2
1886                     ; 455   uint16_t temp = 0;
1888                     ; 457   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1890  0001 c65234        	ld	a,21044
1891  0004 a480          	and	a,#128
1892  0006 5f            	clrw	x
1893  0007 02            	rlwa	x,a
1894  0008 58            	sllw	x
1895  0009 1f01          	ldw	(OFST-1,sp),x
1896                     ; 458   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1898  000b 5f            	clrw	x
1899  000c c65231        	ld	a,21041
1900  000f 97            	ld	xl,a
1901  0010 01            	rrwa	x,a
1902  0011 1a02          	or	a,(OFST+0,sp)
1903  0013 01            	rrwa	x,a
1904  0014 1a01          	or	a,(OFST-1,sp)
1905  0016 a401          	and	a,#1
1906  0018 01            	rrwa	x,a
1909  0019 5b02          	addw	sp,#2
1910  001b 81            	ret	
1942                     ; 466 void UART1_SendData8(uint8_t Data)
1942                     ; 467 {
1943                     .text:	section	.text,new
1944  0000               _UART1_SendData8:
1948                     ; 469     UART1->DR = Data;
1950  0000 c75231        	ld	21041,a
1951                     ; 470 }
1954  0003 81            	ret	
1986                     ; 478 void UART1_SendData9(uint16_t Data)
1986                     ; 479 {
1987                     .text:	section	.text,new
1988  0000               _UART1_SendData9:
1990  0000 89            	pushw	x
1991       00000000      OFST:	set	0
1994                     ; 481     UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1996  0001 721d5234      	bres	21044,#6
1997                     ; 483     UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
1999  0005 54            	srlw	x
2000  0006 54            	srlw	x
2001  0007 9f            	ld	a,xl
2002  0008 a440          	and	a,#64
2003  000a ca5234        	or	a,21044
2004  000d c75234        	ld	21044,a
2005                     ; 485     UART1->DR   = (uint8_t)(Data);
2007  0010 7b02          	ld	a,(OFST+2,sp)
2008  0012 c75231        	ld	21041,a
2009                     ; 486 }
2012  0015 85            	popw	x
2013  0016 81            	ret	
2036                     ; 493 void UART1_SendBreak(void)
2036                     ; 494 {
2037                     .text:	section	.text,new
2038  0000               _UART1_SendBreak:
2042                     ; 495     UART1->CR2 |= UART1_CR2_SBK;
2044  0000 72105235      	bset	21045,#0
2045                     ; 496 }
2048  0004 81            	ret	
2081                     ; 503 void UART1_SetAddress(uint8_t UART1_Address)
2081                     ; 504 {
2082                     .text:	section	.text,new
2083  0000               _UART1_SetAddress:
2085  0000 88            	push	a
2086       00000000      OFST:	set	0
2089                     ; 506     assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2091  0001 a110          	cp	a,#16
2092  0003 250e          	jrult	L472
2093  0005 ae01fa        	ldw	x,#506
2094  0008 89            	pushw	x
2095  0009 5f            	clrw	x
2096  000a 89            	pushw	x
2097  000b ae0008        	ldw	x,#L561
2098  000e cd0000        	call	_assert_failed
2100  0011 5b04          	addw	sp,#4
2101  0013               L472:
2102                     ; 509     UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2104  0013 c65237        	ld	a,21047
2105  0016 a4f0          	and	a,#240
2106  0018 c75237        	ld	21047,a
2107                     ; 511     UART1->CR4 |= UART1_Address;
2109  001b c65237        	ld	a,21047
2110  001e 1a01          	or	a,(OFST+1,sp)
2111  0020 c75237        	ld	21047,a
2112                     ; 512 }
2115  0023 84            	pop	a
2116  0024 81            	ret	
2148                     ; 520 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2148                     ; 521 {
2149                     .text:	section	.text,new
2150  0000               _UART1_SetGuardTime:
2154                     ; 523     UART1->GTR = UART1_GuardTime;
2156  0000 c75239        	ld	21049,a
2157                     ; 524 }
2160  0003 81            	ret	
2192                     ; 548 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2192                     ; 549 {
2193                     .text:	section	.text,new
2194  0000               _UART1_SetPrescaler:
2198                     ; 551     UART1->PSCR = UART1_Prescaler;
2200  0000 c7523a        	ld	21050,a
2201                     ; 552 }
2204  0003 81            	ret	
2348                     ; 560 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2348                     ; 561 {
2349                     .text:	section	.text,new
2350  0000               _UART1_GetFlagStatus:
2352  0000 89            	pushw	x
2353  0001 88            	push	a
2354       00000001      OFST:	set	1
2357                     ; 562     FlagStatus status = RESET;
2359                     ; 565     assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2361  0002 a30080        	cpw	x,#128
2362  0005 273b          	jreq	L213
2363  0007 a30040        	cpw	x,#64
2364  000a 2736          	jreq	L213
2365  000c a30020        	cpw	x,#32
2366  000f 2731          	jreq	L213
2367  0011 a30010        	cpw	x,#16
2368  0014 272c          	jreq	L213
2369  0016 a30008        	cpw	x,#8
2370  0019 2727          	jreq	L213
2371  001b a30004        	cpw	x,#4
2372  001e 2722          	jreq	L213
2373  0020 a30002        	cpw	x,#2
2374  0023 271d          	jreq	L213
2375  0025 a30001        	cpw	x,#1
2376  0028 2718          	jreq	L213
2377  002a a30101        	cpw	x,#257
2378  002d 2713          	jreq	L213
2379  002f a30210        	cpw	x,#528
2380  0032 270e          	jreq	L213
2381  0034 ae0235        	ldw	x,#565
2382  0037 89            	pushw	x
2383  0038 5f            	clrw	x
2384  0039 89            	pushw	x
2385  003a ae0008        	ldw	x,#L561
2386  003d cd0000        	call	_assert_failed
2388  0040 5b04          	addw	sp,#4
2389  0042               L213:
2390                     ; 569     if (UART1_FLAG == UART1_FLAG_LBDF)
2392  0042 1e02          	ldw	x,(OFST+1,sp)
2393  0044 a30210        	cpw	x,#528
2394  0047 2605          	jrne	L3301
2395                     ; 571         if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2397  0049 c65237        	ld	a,21047
2398                     ; 574             status = SET;
2400  004c 2008          	jp	LC009
2401                     ; 579             status = RESET;
2402  004e               L3301:
2403                     ; 582     else if (UART1_FLAG == UART1_FLAG_SBK)
2405  004e a30101        	cpw	x,#257
2406  0051 260b          	jrne	L3401
2407                     ; 584         if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2409  0053 c65235        	ld	a,21045
2410  0056               LC009:
2411  0056 1503          	bcp	a,(OFST+2,sp)
2412  0058 270b          	jreq	L3501
2413                     ; 587             status = SET;
2415  005a               LC008:
2418  005a a601          	ld	a,#1
2420  005c 2008          	jra	L1401
2421                     ; 592             status = RESET;
2422  005e               L3401:
2423                     ; 597         if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2425  005e c65230        	ld	a,21040
2426  0061 1503          	bcp	a,(OFST+2,sp)
2427                     ; 600             status = SET;
2429  0063 26f5          	jrne	LC008
2430  0065               L3501:
2431                     ; 605             status = RESET;
2435  0065 4f            	clr	a
2436  0066               L1401:
2437                     ; 609     return status;
2441  0066 5b03          	addw	sp,#3
2442  0068 81            	ret	
2478                     ; 639 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2478                     ; 640 {
2479                     .text:	section	.text,new
2480  0000               _UART1_ClearFlag:
2482  0000 89            	pushw	x
2483       00000000      OFST:	set	0
2486                     ; 641     assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2488  0001 a30020        	cpw	x,#32
2489  0004 2713          	jreq	L423
2490  0006 a30210        	cpw	x,#528
2491  0009 270e          	jreq	L423
2492  000b ae0281        	ldw	x,#641
2493  000e 89            	pushw	x
2494  000f 5f            	clrw	x
2495  0010 89            	pushw	x
2496  0011 ae0008        	ldw	x,#L561
2497  0014 cd0000        	call	_assert_failed
2499  0017 5b04          	addw	sp,#4
2500  0019               L423:
2501                     ; 644     if (UART1_FLAG == UART1_FLAG_RXNE)
2503  0019 1e01          	ldw	x,(OFST+1,sp)
2504  001b a30020        	cpw	x,#32
2505  001e 2606          	jrne	L5701
2506                     ; 646         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2508  0020 35df5230      	mov	21040,#223
2510  0024 2004          	jra	L7701
2511  0026               L5701:
2512                     ; 651         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2514  0026 72195237      	bres	21047,#4
2515  002a               L7701:
2516                     ; 653 }
2519  002a 85            	popw	x
2520  002b 81            	ret	
2595                     ; 668 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2595                     ; 669 {
2596                     .text:	section	.text,new
2597  0000               _UART1_GetITStatus:
2599  0000 89            	pushw	x
2600  0001 89            	pushw	x
2601       00000002      OFST:	set	2
2604                     ; 670     ITStatus pendingbitstatus = RESET;
2606                     ; 671     uint8_t itpos = 0;
2608                     ; 672     uint8_t itmask1 = 0;
2610                     ; 673     uint8_t itmask2 = 0;
2612                     ; 674     uint8_t enablestatus = 0;
2614                     ; 677     assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2616  0002 a30277        	cpw	x,#631
2617  0005 272c          	jreq	L633
2618  0007 a30266        	cpw	x,#614
2619  000a 2727          	jreq	L633
2620  000c a30255        	cpw	x,#597
2621  000f 2722          	jreq	L633
2622  0011 a30244        	cpw	x,#580
2623  0014 271d          	jreq	L633
2624  0016 a30235        	cpw	x,#565
2625  0019 2718          	jreq	L633
2626  001b a30346        	cpw	x,#838
2627  001e 2713          	jreq	L633
2628  0020 a30100        	cpw	x,#256
2629  0023 270e          	jreq	L633
2630  0025 ae02a5        	ldw	x,#677
2631  0028 89            	pushw	x
2632  0029 5f            	clrw	x
2633  002a 89            	pushw	x
2634  002b ae0008        	ldw	x,#L561
2635  002e cd0000        	call	_assert_failed
2637  0031 5b04          	addw	sp,#4
2638  0033               L633:
2639                     ; 680     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2641  0033 7b04          	ld	a,(OFST+2,sp)
2642  0035 a40f          	and	a,#15
2643  0037 5f            	clrw	x
2644  0038 97            	ld	xl,a
2645  0039 a601          	ld	a,#1
2646  003b 5d            	tnzw	x
2647  003c 2704          	jreq	L243
2648  003e               L443:
2649  003e 48            	sll	a
2650  003f 5a            	decw	x
2651  0040 26fc          	jrne	L443
2652  0042               L243:
2653  0042 6b01          	ld	(OFST-1,sp),a
2654                     ; 682     itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2656  0044 7b04          	ld	a,(OFST+2,sp)
2657  0046 4e            	swap	a
2658  0047 a40f          	and	a,#15
2659  0049 6b02          	ld	(OFST+0,sp),a
2660                     ; 684     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2662  004b 5f            	clrw	x
2663  004c 97            	ld	xl,a
2664  004d a601          	ld	a,#1
2665  004f 5d            	tnzw	x
2666  0050 2704          	jreq	L643
2667  0052               L053:
2668  0052 48            	sll	a
2669  0053 5a            	decw	x
2670  0054 26fc          	jrne	L053
2671  0056               L643:
2672  0056 6b02          	ld	(OFST+0,sp),a
2673                     ; 688     if (UART1_IT == UART1_IT_PE)
2675  0058 1e03          	ldw	x,(OFST+1,sp)
2676  005a a30100        	cpw	x,#256
2677  005d 260c          	jrne	L3311
2678                     ; 691         enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2680  005f c65234        	ld	a,21044
2681  0062 1402          	and	a,(OFST+0,sp)
2682  0064 6b02          	ld	(OFST+0,sp),a
2683                     ; 694         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2685  0066 c65230        	ld	a,21040
2687                     ; 697             pendingbitstatus = SET;
2689  0069 200f          	jp	LC012
2690                     ; 702             pendingbitstatus = RESET;
2691  006b               L3311:
2692                     ; 706     else if (UART1_IT == UART1_IT_LBDF)
2694  006b a30346        	cpw	x,#838
2695  006e 2616          	jrne	L3411
2696                     ; 709         enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2698  0070 c65237        	ld	a,21047
2699  0073 1402          	and	a,(OFST+0,sp)
2700  0075 6b02          	ld	(OFST+0,sp),a
2701                     ; 711         if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2703  0077 c65237        	ld	a,21047
2705  007a               LC012:
2706  007a 1501          	bcp	a,(OFST-1,sp)
2707  007c 271a          	jreq	L3511
2708  007e 7b02          	ld	a,(OFST+0,sp)
2709  0080 2716          	jreq	L3511
2710                     ; 714             pendingbitstatus = SET;
2712  0082               LC011:
2715  0082 a601          	ld	a,#1
2717  0084 2013          	jra	L1411
2718                     ; 719             pendingbitstatus = RESET;
2719  0086               L3411:
2720                     ; 725         enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2722  0086 c65235        	ld	a,21045
2723  0089 1402          	and	a,(OFST+0,sp)
2724  008b 6b02          	ld	(OFST+0,sp),a
2725                     ; 727         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2727  008d c65230        	ld	a,21040
2728  0090 1501          	bcp	a,(OFST-1,sp)
2729  0092 2704          	jreq	L3511
2731  0094 7b02          	ld	a,(OFST+0,sp)
2732                     ; 730             pendingbitstatus = SET;
2734  0096 26ea          	jrne	LC011
2735  0098               L3511:
2736                     ; 735             pendingbitstatus = RESET;
2740  0098 4f            	clr	a
2741  0099               L1411:
2742                     ; 740     return  pendingbitstatus;
2746  0099 5b04          	addw	sp,#4
2747  009b 81            	ret	
2784                     ; 768 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2784                     ; 769 {
2785                     .text:	section	.text,new
2786  0000               _UART1_ClearITPendingBit:
2788  0000 89            	pushw	x
2789       00000000      OFST:	set	0
2792                     ; 770     assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2794  0001 a30255        	cpw	x,#597
2795  0004 2713          	jreq	L063
2796  0006 a30346        	cpw	x,#838
2797  0009 270e          	jreq	L063
2798  000b ae0302        	ldw	x,#770
2799  000e 89            	pushw	x
2800  000f 5f            	clrw	x
2801  0010 89            	pushw	x
2802  0011 ae0008        	ldw	x,#L561
2803  0014 cd0000        	call	_assert_failed
2805  0017 5b04          	addw	sp,#4
2806  0019               L063:
2807                     ; 773     if (UART1_IT == UART1_IT_RXNE)
2809  0019 1e01          	ldw	x,(OFST+1,sp)
2810  001b a30255        	cpw	x,#597
2811  001e 2606          	jrne	L5711
2812                     ; 775         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2814  0020 35df5230      	mov	21040,#223
2816  0024 2004          	jra	L7711
2817  0026               L5711:
2818                     ; 780         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2820  0026 72195237      	bres	21047,#4
2821  002a               L7711:
2822                     ; 782 }
2825  002a 85            	popw	x
2826  002b 81            	ret	
2839                     	xdef	_UART1_ClearITPendingBit
2840                     	xdef	_UART1_GetITStatus
2841                     	xdef	_UART1_ClearFlag
2842                     	xdef	_UART1_GetFlagStatus
2843                     	xdef	_UART1_SetPrescaler
2844                     	xdef	_UART1_SetGuardTime
2845                     	xdef	_UART1_SetAddress
2846                     	xdef	_UART1_SendBreak
2847                     	xdef	_UART1_SendData9
2848                     	xdef	_UART1_SendData8
2849                     	xdef	_UART1_ReceiveData9
2850                     	xdef	_UART1_ReceiveData8
2851                     	xdef	_UART1_ReceiverWakeUpCmd
2852                     	xdef	_UART1_WakeUpConfig
2853                     	xdef	_UART1_SmartCardNACKCmd
2854                     	xdef	_UART1_SmartCardCmd
2855                     	xdef	_UART1_LINCmd
2856                     	xdef	_UART1_LINBreakDetectionConfig
2857                     	xdef	_UART1_IrDACmd
2858                     	xdef	_UART1_IrDAConfig
2859                     	xdef	_UART1_HalfDuplexCmd
2860                     	xdef	_UART1_ITConfig
2861                     	xdef	_UART1_Cmd
2862                     	xdef	_UART1_Init
2863                     	xdef	_UART1_DeInit
2864                     	xref	_assert_failed
2865                     	xref	_CLK_GetClockFreq
2866                     	switch	.const
2867  0008               L561:
2868  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2869  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2870  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2871  003e 5f7561727431  	dc.b	"_uart1.c",0
2872                     	xref.b	c_lreg
2873                     	xref.b	c_x
2893                     	xref	c_lursh
2894                     	xref	c_lsub
2895                     	xref	c_smul
2896                     	xref	c_ludv
2897                     	xref	c_rtol
2898                     	xref	c_llsh
2899                     	xref	c_lcmp
2900                     	xref	c_ltor
2901                     	end
