   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  16                     .const:	section	.text
  17  0000               _HSIDivFactor:
  18  0000 01            	dc.b	1
  19  0001 02            	dc.b	2
  20  0002 04            	dc.b	4
  21  0003 08            	dc.b	8
  22  0004               _CLKPrescTable:
  23  0004 01            	dc.b	1
  24  0005 02            	dc.b	2
  25  0006 04            	dc.b	4
  26  0007 08            	dc.b	8
  27  0008 0a            	dc.b	10
  28  0009 10            	dc.b	16
  29  000a 14            	dc.b	20
  30  000b 28            	dc.b	40
  59                     ; 66 void CLK_DeInit(void)
  59                     ; 67 {
  61                     	switch	.text
  62  0000               _CLK_DeInit:
  66                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  68  0000 350150c0      	mov	20672,#1
  69                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  71  0004 725f50c1      	clr	20673
  72                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  74  0008 35e150c4      	mov	20676,#225
  75                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  77  000c 725f50c5      	clr	20677
  78                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  80  0010 351850c6      	mov	20678,#24
  81                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  83  0014 35ff50c7      	mov	20679,#255
  84                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  86  0018 35ff50ca      	mov	20682,#255
  87                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  89  001c 725f50c8      	clr	20680
  90                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  92  0020 725f50c9      	clr	20681
  94  0024               L52:
  95                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  97  0024 c650c9        	ld	a,20681
  98  0027 a501          	bcp	a,#1
  99  0029 26f9          	jrne	L52
 100                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 102  002b 725f50c9      	clr	20681
 103                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 105  002f 725f50cc      	clr	20684
 106                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 108  0033 725f50cd      	clr	20685
 109                     ; 84 }
 112  0037 81            	ret
 169                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 169                     ; 96 {
 170                     	switch	.text
 171  0038               _CLK_FastHaltWakeUpCmd:
 173  0038 88            	push	a
 174       00000000      OFST:	set	0
 177                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 179  0039 4d            	tnz	a
 180  003a 2704          	jreq	L21
 181  003c a101          	cp	a,#1
 182  003e 2603          	jrne	L01
 183  0040               L21:
 184  0040 4f            	clr	a
 185  0041 2010          	jra	L41
 186  0043               L01:
 187  0043 ae0063        	ldw	x,#99
 188  0046 89            	pushw	x
 189  0047 ae0000        	ldw	x,#0
 190  004a 89            	pushw	x
 191  004b ae000c        	ldw	x,#L75
 192  004e cd0000        	call	_assert_failed
 194  0051 5b04          	addw	sp,#4
 195  0053               L41:
 196                     ; 101     if (NewState != DISABLE)
 198  0053 0d01          	tnz	(OFST+1,sp)
 199  0055 2706          	jreq	L16
 200                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 202  0057 721450c0      	bset	20672,#2
 204  005b 2004          	jra	L36
 205  005d               L16:
 206                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 208  005d 721550c0      	bres	20672,#2
 209  0061               L36:
 210                     ; 112 }
 213  0061 84            	pop	a
 214  0062 81            	ret
 250                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 250                     ; 120 {
 251                     	switch	.text
 252  0063               _CLK_HSECmd:
 254  0063 88            	push	a
 255       00000000      OFST:	set	0
 258                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 260  0064 4d            	tnz	a
 261  0065 2704          	jreq	L22
 262  0067 a101          	cp	a,#1
 263  0069 2603          	jrne	L02
 264  006b               L22:
 265  006b 4f            	clr	a
 266  006c 2010          	jra	L42
 267  006e               L02:
 268  006e ae007b        	ldw	x,#123
 269  0071 89            	pushw	x
 270  0072 ae0000        	ldw	x,#0
 271  0075 89            	pushw	x
 272  0076 ae000c        	ldw	x,#L75
 273  0079 cd0000        	call	_assert_failed
 275  007c 5b04          	addw	sp,#4
 276  007e               L42:
 277                     ; 125     if (NewState != DISABLE)
 279  007e 0d01          	tnz	(OFST+1,sp)
 280  0080 2706          	jreq	L301
 281                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 283  0082 721050c1      	bset	20673,#0
 285  0086 2004          	jra	L501
 286  0088               L301:
 287                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 289  0088 721150c1      	bres	20673,#0
 290  008c               L501:
 291                     ; 136 }
 294  008c 84            	pop	a
 295  008d 81            	ret
 331                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 331                     ; 144 {
 332                     	switch	.text
 333  008e               _CLK_HSICmd:
 335  008e 88            	push	a
 336       00000000      OFST:	set	0
 339                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 341  008f 4d            	tnz	a
 342  0090 2704          	jreq	L23
 343  0092 a101          	cp	a,#1
 344  0094 2603          	jrne	L03
 345  0096               L23:
 346  0096 4f            	clr	a
 347  0097 2010          	jra	L43
 348  0099               L03:
 349  0099 ae0093        	ldw	x,#147
 350  009c 89            	pushw	x
 351  009d ae0000        	ldw	x,#0
 352  00a0 89            	pushw	x
 353  00a1 ae000c        	ldw	x,#L75
 354  00a4 cd0000        	call	_assert_failed
 356  00a7 5b04          	addw	sp,#4
 357  00a9               L43:
 358                     ; 149     if (NewState != DISABLE)
 360  00a9 0d01          	tnz	(OFST+1,sp)
 361  00ab 2706          	jreq	L521
 362                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 364  00ad 721050c0      	bset	20672,#0
 366  00b1 2004          	jra	L721
 367  00b3               L521:
 368                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 370  00b3 721150c0      	bres	20672,#0
 371  00b7               L721:
 372                     ; 160 }
 375  00b7 84            	pop	a
 376  00b8 81            	ret
 412                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 412                     ; 168 {
 413                     	switch	.text
 414  00b9               _CLK_LSICmd:
 416  00b9 88            	push	a
 417       00000000      OFST:	set	0
 420                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 422  00ba 4d            	tnz	a
 423  00bb 2704          	jreq	L24
 424  00bd a101          	cp	a,#1
 425  00bf 2603          	jrne	L04
 426  00c1               L24:
 427  00c1 4f            	clr	a
 428  00c2 2010          	jra	L44
 429  00c4               L04:
 430  00c4 ae00ab        	ldw	x,#171
 431  00c7 89            	pushw	x
 432  00c8 ae0000        	ldw	x,#0
 433  00cb 89            	pushw	x
 434  00cc ae000c        	ldw	x,#L75
 435  00cf cd0000        	call	_assert_failed
 437  00d2 5b04          	addw	sp,#4
 438  00d4               L44:
 439                     ; 173     if (NewState != DISABLE)
 441  00d4 0d01          	tnz	(OFST+1,sp)
 442  00d6 2706          	jreq	L741
 443                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 445  00d8 721650c0      	bset	20672,#3
 447  00dc 2004          	jra	L151
 448  00de               L741:
 449                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 451  00de 721750c0      	bres	20672,#3
 452  00e2               L151:
 453                     ; 184 }
 456  00e2 84            	pop	a
 457  00e3 81            	ret
 493                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 493                     ; 193 {
 494                     	switch	.text
 495  00e4               _CLK_CCOCmd:
 497  00e4 88            	push	a
 498       00000000      OFST:	set	0
 501                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 503  00e5 4d            	tnz	a
 504  00e6 2704          	jreq	L25
 505  00e8 a101          	cp	a,#1
 506  00ea 2603          	jrne	L05
 507  00ec               L25:
 508  00ec 4f            	clr	a
 509  00ed 2010          	jra	L45
 510  00ef               L05:
 511  00ef ae00c4        	ldw	x,#196
 512  00f2 89            	pushw	x
 513  00f3 ae0000        	ldw	x,#0
 514  00f6 89            	pushw	x
 515  00f7 ae000c        	ldw	x,#L75
 516  00fa cd0000        	call	_assert_failed
 518  00fd 5b04          	addw	sp,#4
 519  00ff               L45:
 520                     ; 198     if (NewState != DISABLE)
 522  00ff 0d01          	tnz	(OFST+1,sp)
 523  0101 2706          	jreq	L171
 524                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 526  0103 721050c9      	bset	20681,#0
 528  0107 2004          	jra	L371
 529  0109               L171:
 530                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 532  0109 721150c9      	bres	20681,#0
 533  010d               L371:
 534                     ; 209 }
 537  010d 84            	pop	a
 538  010e 81            	ret
 574                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 574                     ; 219 {
 575                     	switch	.text
 576  010f               _CLK_ClockSwitchCmd:
 578  010f 88            	push	a
 579       00000000      OFST:	set	0
 582                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 584  0110 4d            	tnz	a
 585  0111 2704          	jreq	L26
 586  0113 a101          	cp	a,#1
 587  0115 2603          	jrne	L06
 588  0117               L26:
 589  0117 4f            	clr	a
 590  0118 2010          	jra	L46
 591  011a               L06:
 592  011a ae00de        	ldw	x,#222
 593  011d 89            	pushw	x
 594  011e ae0000        	ldw	x,#0
 595  0121 89            	pushw	x
 596  0122 ae000c        	ldw	x,#L75
 597  0125 cd0000        	call	_assert_failed
 599  0128 5b04          	addw	sp,#4
 600  012a               L46:
 601                     ; 224     if (NewState != DISABLE )
 603  012a 0d01          	tnz	(OFST+1,sp)
 604  012c 2706          	jreq	L312
 605                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 607  012e 721250c5      	bset	20677,#1
 609  0132 2004          	jra	L512
 610  0134               L312:
 611                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 613  0134 721350c5      	bres	20677,#1
 614  0138               L512:
 615                     ; 235 }
 618  0138 84            	pop	a
 619  0139 81            	ret
 656                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 656                     ; 246 {
 657                     	switch	.text
 658  013a               _CLK_SlowActiveHaltWakeUpCmd:
 660  013a 88            	push	a
 661       00000000      OFST:	set	0
 664                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 666  013b 4d            	tnz	a
 667  013c 2704          	jreq	L27
 668  013e a101          	cp	a,#1
 669  0140 2603          	jrne	L07
 670  0142               L27:
 671  0142 4f            	clr	a
 672  0143 2010          	jra	L47
 673  0145               L07:
 674  0145 ae00f9        	ldw	x,#249
 675  0148 89            	pushw	x
 676  0149 ae0000        	ldw	x,#0
 677  014c 89            	pushw	x
 678  014d ae000c        	ldw	x,#L75
 679  0150 cd0000        	call	_assert_failed
 681  0153 5b04          	addw	sp,#4
 682  0155               L47:
 683                     ; 251     if (NewState != DISABLE)
 685  0155 0d01          	tnz	(OFST+1,sp)
 686  0157 2706          	jreq	L532
 687                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 689  0159 721a50c0      	bset	20672,#5
 691  015d 2004          	jra	L732
 692  015f               L532:
 693                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 695  015f 721b50c0      	bres	20672,#5
 696  0163               L732:
 697                     ; 262 }
 700  0163 84            	pop	a
 701  0164 81            	ret
 861                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 861                     ; 273 {
 862                     	switch	.text
 863  0165               _CLK_PeripheralClockConfig:
 865  0165 89            	pushw	x
 866       00000000      OFST:	set	0
 869                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 871  0166 9f            	ld	a,xl
 872  0167 4d            	tnz	a
 873  0168 2705          	jreq	L201
 874  016a 9f            	ld	a,xl
 875  016b a101          	cp	a,#1
 876  016d 2603          	jrne	L001
 877  016f               L201:
 878  016f 4f            	clr	a
 879  0170 2010          	jra	L401
 880  0172               L001:
 881  0172 ae0114        	ldw	x,#276
 882  0175 89            	pushw	x
 883  0176 ae0000        	ldw	x,#0
 884  0179 89            	pushw	x
 885  017a ae000c        	ldw	x,#L75
 886  017d cd0000        	call	_assert_failed
 888  0180 5b04          	addw	sp,#4
 889  0182               L401:
 890                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 892  0182 0d01          	tnz	(OFST+1,sp)
 893  0184 274e          	jreq	L011
 894  0186 7b01          	ld	a,(OFST+1,sp)
 895  0188 a101          	cp	a,#1
 896  018a 2748          	jreq	L011
 897  018c 7b01          	ld	a,(OFST+1,sp)
 898  018e a103          	cp	a,#3
 899  0190 2742          	jreq	L011
 900  0192 7b01          	ld	a,(OFST+1,sp)
 901  0194 a103          	cp	a,#3
 902  0196 273c          	jreq	L011
 903  0198 7b01          	ld	a,(OFST+1,sp)
 904  019a a102          	cp	a,#2
 905  019c 2736          	jreq	L011
 906  019e 7b01          	ld	a,(OFST+1,sp)
 907  01a0 a104          	cp	a,#4
 908  01a2 2730          	jreq	L011
 909  01a4 7b01          	ld	a,(OFST+1,sp)
 910  01a6 a105          	cp	a,#5
 911  01a8 272a          	jreq	L011
 912  01aa 7b01          	ld	a,(OFST+1,sp)
 913  01ac a105          	cp	a,#5
 914  01ae 2724          	jreq	L011
 915  01b0 7b01          	ld	a,(OFST+1,sp)
 916  01b2 a104          	cp	a,#4
 917  01b4 271e          	jreq	L011
 918  01b6 7b01          	ld	a,(OFST+1,sp)
 919  01b8 a106          	cp	a,#6
 920  01ba 2718          	jreq	L011
 921  01bc 7b01          	ld	a,(OFST+1,sp)
 922  01be a107          	cp	a,#7
 923  01c0 2712          	jreq	L011
 924  01c2 7b01          	ld	a,(OFST+1,sp)
 925  01c4 a117          	cp	a,#23
 926  01c6 270c          	jreq	L011
 927  01c8 7b01          	ld	a,(OFST+1,sp)
 928  01ca a113          	cp	a,#19
 929  01cc 2706          	jreq	L011
 930  01ce 7b01          	ld	a,(OFST+1,sp)
 931  01d0 a112          	cp	a,#18
 932  01d2 2603          	jrne	L601
 933  01d4               L011:
 934  01d4 4f            	clr	a
 935  01d5 2010          	jra	L211
 936  01d7               L601:
 937  01d7 ae0115        	ldw	x,#277
 938  01da 89            	pushw	x
 939  01db ae0000        	ldw	x,#0
 940  01de 89            	pushw	x
 941  01df ae000c        	ldw	x,#L75
 942  01e2 cd0000        	call	_assert_failed
 944  01e5 5b04          	addw	sp,#4
 945  01e7               L211:
 946                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 948  01e7 7b01          	ld	a,(OFST+1,sp)
 949  01e9 a510          	bcp	a,#16
 950  01eb 2633          	jrne	L323
 951                     ; 281         if (NewState != DISABLE)
 953  01ed 0d02          	tnz	(OFST+2,sp)
 954  01ef 2717          	jreq	L523
 955                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 957  01f1 7b01          	ld	a,(OFST+1,sp)
 958  01f3 a40f          	and	a,#15
 959  01f5 5f            	clrw	x
 960  01f6 97            	ld	xl,a
 961  01f7 a601          	ld	a,#1
 962  01f9 5d            	tnzw	x
 963  01fa 2704          	jreq	L411
 964  01fc               L611:
 965  01fc 48            	sll	a
 966  01fd 5a            	decw	x
 967  01fe 26fc          	jrne	L611
 968  0200               L411:
 969  0200 ca50c7        	or	a,20679
 970  0203 c750c7        	ld	20679,a
 972  0206 2049          	jra	L133
 973  0208               L523:
 974                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 976  0208 7b01          	ld	a,(OFST+1,sp)
 977  020a a40f          	and	a,#15
 978  020c 5f            	clrw	x
 979  020d 97            	ld	xl,a
 980  020e a601          	ld	a,#1
 981  0210 5d            	tnzw	x
 982  0211 2704          	jreq	L021
 983  0213               L221:
 984  0213 48            	sll	a
 985  0214 5a            	decw	x
 986  0215 26fc          	jrne	L221
 987  0217               L021:
 988  0217 43            	cpl	a
 989  0218 c450c7        	and	a,20679
 990  021b c750c7        	ld	20679,a
 991  021e 2031          	jra	L133
 992  0220               L323:
 993                     ; 294         if (NewState != DISABLE)
 995  0220 0d02          	tnz	(OFST+2,sp)
 996  0222 2717          	jreq	L333
 997                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 999  0224 7b01          	ld	a,(OFST+1,sp)
1000  0226 a40f          	and	a,#15
1001  0228 5f            	clrw	x
1002  0229 97            	ld	xl,a
1003  022a a601          	ld	a,#1
1004  022c 5d            	tnzw	x
1005  022d 2704          	jreq	L421
1006  022f               L621:
1007  022f 48            	sll	a
1008  0230 5a            	decw	x
1009  0231 26fc          	jrne	L621
1010  0233               L421:
1011  0233 ca50ca        	or	a,20682
1012  0236 c750ca        	ld	20682,a
1014  0239 2016          	jra	L133
1015  023b               L333:
1016                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1018  023b 7b01          	ld	a,(OFST+1,sp)
1019  023d a40f          	and	a,#15
1020  023f 5f            	clrw	x
1021  0240 97            	ld	xl,a
1022  0241 a601          	ld	a,#1
1023  0243 5d            	tnzw	x
1024  0244 2704          	jreq	L031
1025  0246               L231:
1026  0246 48            	sll	a
1027  0247 5a            	decw	x
1028  0248 26fc          	jrne	L231
1029  024a               L031:
1030  024a 43            	cpl	a
1031  024b c450ca        	and	a,20682
1032  024e c750ca        	ld	20682,a
1033  0251               L133:
1034                     ; 306 }
1037  0251 85            	popw	x
1038  0252 81            	ret
1227                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1227                     ; 320 {
1228                     	switch	.text
1229  0253               _CLK_ClockSwitchConfig:
1231  0253 89            	pushw	x
1232  0254 5204          	subw	sp,#4
1233       00000004      OFST:	set	4
1236                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1238  0256 ae0491        	ldw	x,#1169
1239  0259 1f03          	ldw	(OFST-1,sp),x
1240                     ; 324     ErrorStatus Swif = ERROR;
1242                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1244  025b 7b06          	ld	a,(OFST+2,sp)
1245  025d a1e1          	cp	a,#225
1246  025f 270c          	jreq	L041
1247  0261 7b06          	ld	a,(OFST+2,sp)
1248  0263 a1d2          	cp	a,#210
1249  0265 2706          	jreq	L041
1250  0267 7b06          	ld	a,(OFST+2,sp)
1251  0269 a1b4          	cp	a,#180
1252  026b 2603          	jrne	L631
1253  026d               L041:
1254  026d 4f            	clr	a
1255  026e 2010          	jra	L241
1256  0270               L631:
1257  0270 ae0147        	ldw	x,#327
1258  0273 89            	pushw	x
1259  0274 ae0000        	ldw	x,#0
1260  0277 89            	pushw	x
1261  0278 ae000c        	ldw	x,#L75
1262  027b cd0000        	call	_assert_failed
1264  027e 5b04          	addw	sp,#4
1265  0280               L241:
1266                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1268  0280 0d05          	tnz	(OFST+1,sp)
1269  0282 2706          	jreq	L641
1270  0284 7b05          	ld	a,(OFST+1,sp)
1271  0286 a101          	cp	a,#1
1272  0288 2603          	jrne	L441
1273  028a               L641:
1274  028a 4f            	clr	a
1275  028b 2010          	jra	L051
1276  028d               L441:
1277  028d ae0148        	ldw	x,#328
1278  0290 89            	pushw	x
1279  0291 ae0000        	ldw	x,#0
1280  0294 89            	pushw	x
1281  0295 ae000c        	ldw	x,#L75
1282  0298 cd0000        	call	_assert_failed
1284  029b 5b04          	addw	sp,#4
1285  029d               L051:
1286                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1288  029d 0d09          	tnz	(OFST+5,sp)
1289  029f 2706          	jreq	L451
1290  02a1 7b09          	ld	a,(OFST+5,sp)
1291  02a3 a101          	cp	a,#1
1292  02a5 2603          	jrne	L251
1293  02a7               L451:
1294  02a7 4f            	clr	a
1295  02a8 2010          	jra	L651
1296  02aa               L251:
1297  02aa ae0149        	ldw	x,#329
1298  02ad 89            	pushw	x
1299  02ae ae0000        	ldw	x,#0
1300  02b1 89            	pushw	x
1301  02b2 ae000c        	ldw	x,#L75
1302  02b5 cd0000        	call	_assert_failed
1304  02b8 5b04          	addw	sp,#4
1305  02ba               L651:
1306                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1308  02ba 0d0a          	tnz	(OFST+6,sp)
1309  02bc 2706          	jreq	L261
1310  02be 7b0a          	ld	a,(OFST+6,sp)
1311  02c0 a101          	cp	a,#1
1312  02c2 2603          	jrne	L061
1313  02c4               L261:
1314  02c4 4f            	clr	a
1315  02c5 2010          	jra	L461
1316  02c7               L061:
1317  02c7 ae014a        	ldw	x,#330
1318  02ca 89            	pushw	x
1319  02cb ae0000        	ldw	x,#0
1320  02ce 89            	pushw	x
1321  02cf ae000c        	ldw	x,#L75
1322  02d2 cd0000        	call	_assert_failed
1324  02d5 5b04          	addw	sp,#4
1325  02d7               L461:
1326                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1328  02d7 c650c3        	ld	a,20675
1329  02da 6b01          	ld	(OFST-3,sp),a
1330                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1332  02dc 7b05          	ld	a,(OFST+1,sp)
1333  02de a101          	cp	a,#1
1334  02e0 2639          	jrne	L744
1335                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1337  02e2 721250c5      	bset	20677,#1
1338                     ; 343         if (ITState != DISABLE)
1340  02e6 0d09          	tnz	(OFST+5,sp)
1341  02e8 2706          	jreq	L154
1342                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1344  02ea 721450c5      	bset	20677,#2
1346  02ee 2004          	jra	L354
1347  02f0               L154:
1348                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1350  02f0 721550c5      	bres	20677,#2
1351  02f4               L354:
1352                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1354  02f4 7b06          	ld	a,(OFST+2,sp)
1355  02f6 c750c4        	ld	20676,a
1357  02f9 2007          	jra	L164
1358  02fb               L554:
1359                     ; 357             DownCounter--;
1361  02fb 1e03          	ldw	x,(OFST-1,sp)
1362  02fd 1d0001        	subw	x,#1
1363  0300 1f03          	ldw	(OFST-1,sp),x
1364  0302               L164:
1365                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1367  0302 c650c5        	ld	a,20677
1368  0305 a501          	bcp	a,#1
1369  0307 2704          	jreq	L564
1371  0309 1e03          	ldw	x,(OFST-1,sp)
1372  030b 26ee          	jrne	L554
1373  030d               L564:
1374                     ; 360         if (DownCounter != 0)
1376  030d 1e03          	ldw	x,(OFST-1,sp)
1377  030f 2706          	jreq	L764
1378                     ; 362             Swif = SUCCESS;
1380  0311 a601          	ld	a,#1
1381  0313 6b02          	ld	(OFST-2,sp),a
1383  0315 201b          	jra	L374
1384  0317               L764:
1385                     ; 366             Swif = ERROR;
1387  0317 0f02          	clr	(OFST-2,sp)
1388  0319 2017          	jra	L374
1389  031b               L744:
1390                     ; 374         if (ITState != DISABLE)
1392  031b 0d09          	tnz	(OFST+5,sp)
1393  031d 2706          	jreq	L574
1394                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1396  031f 721450c5      	bset	20677,#2
1398  0323 2004          	jra	L774
1399  0325               L574:
1400                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1402  0325 721550c5      	bres	20677,#2
1403  0329               L774:
1404                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1406  0329 7b06          	ld	a,(OFST+2,sp)
1407  032b c750c4        	ld	20676,a
1408                     ; 388         Swif = SUCCESS;
1410  032e a601          	ld	a,#1
1411  0330 6b02          	ld	(OFST-2,sp),a
1412  0332               L374:
1413                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1415  0332 0d0a          	tnz	(OFST+6,sp)
1416  0334 260c          	jrne	L105
1418  0336 7b01          	ld	a,(OFST-3,sp)
1419  0338 a1e1          	cp	a,#225
1420  033a 2606          	jrne	L105
1421                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1423  033c 721150c0      	bres	20672,#0
1425  0340 201e          	jra	L305
1426  0342               L105:
1427                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1429  0342 0d0a          	tnz	(OFST+6,sp)
1430  0344 260c          	jrne	L505
1432  0346 7b01          	ld	a,(OFST-3,sp)
1433  0348 a1d2          	cp	a,#210
1434  034a 2606          	jrne	L505
1435                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1437  034c 721750c0      	bres	20672,#3
1439  0350 200e          	jra	L305
1440  0352               L505:
1441                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1443  0352 0d0a          	tnz	(OFST+6,sp)
1444  0354 260a          	jrne	L305
1446  0356 7b01          	ld	a,(OFST-3,sp)
1447  0358 a1b4          	cp	a,#180
1448  035a 2604          	jrne	L305
1449                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1451  035c 721150c1      	bres	20673,#0
1452  0360               L305:
1453                     ; 406     return(Swif);
1455  0360 7b02          	ld	a,(OFST-2,sp)
1458  0362 5b06          	addw	sp,#6
1459  0364 81            	ret
1598                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1598                     ; 417 {
1599                     	switch	.text
1600  0365               _CLK_HSIPrescalerConfig:
1602  0365 88            	push	a
1603       00000000      OFST:	set	0
1606                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1608  0366 4d            	tnz	a
1609  0367 270c          	jreq	L271
1610  0369 a108          	cp	a,#8
1611  036b 2708          	jreq	L271
1612  036d a110          	cp	a,#16
1613  036f 2704          	jreq	L271
1614  0371 a118          	cp	a,#24
1615  0373 2603          	jrne	L071
1616  0375               L271:
1617  0375 4f            	clr	a
1618  0376 2010          	jra	L471
1619  0378               L071:
1620  0378 ae01a4        	ldw	x,#420
1621  037b 89            	pushw	x
1622  037c ae0000        	ldw	x,#0
1623  037f 89            	pushw	x
1624  0380 ae000c        	ldw	x,#L75
1625  0383 cd0000        	call	_assert_failed
1627  0386 5b04          	addw	sp,#4
1628  0388               L471:
1629                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1631  0388 c650c6        	ld	a,20678
1632  038b a4e7          	and	a,#231
1633  038d c750c6        	ld	20678,a
1634                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1636  0390 c650c6        	ld	a,20678
1637  0393 1a01          	or	a,(OFST+1,sp)
1638  0395 c750c6        	ld	20678,a
1639                     ; 428 }
1642  0398 84            	pop	a
1643  0399 81            	ret
1779                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1779                     ; 440 {
1780                     	switch	.text
1781  039a               _CLK_CCOConfig:
1783  039a 88            	push	a
1784       00000000      OFST:	set	0
1787                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1789  039b 4d            	tnz	a
1790  039c 2730          	jreq	L202
1791  039e a104          	cp	a,#4
1792  03a0 272c          	jreq	L202
1793  03a2 a102          	cp	a,#2
1794  03a4 2728          	jreq	L202
1795  03a6 a108          	cp	a,#8
1796  03a8 2724          	jreq	L202
1797  03aa a10a          	cp	a,#10
1798  03ac 2720          	jreq	L202
1799  03ae a10c          	cp	a,#12
1800  03b0 271c          	jreq	L202
1801  03b2 a10e          	cp	a,#14
1802  03b4 2718          	jreq	L202
1803  03b6 a110          	cp	a,#16
1804  03b8 2714          	jreq	L202
1805  03ba a112          	cp	a,#18
1806  03bc 2710          	jreq	L202
1807  03be a114          	cp	a,#20
1808  03c0 270c          	jreq	L202
1809  03c2 a116          	cp	a,#22
1810  03c4 2708          	jreq	L202
1811  03c6 a118          	cp	a,#24
1812  03c8 2704          	jreq	L202
1813  03ca a11a          	cp	a,#26
1814  03cc 2603          	jrne	L002
1815  03ce               L202:
1816  03ce 4f            	clr	a
1817  03cf 2010          	jra	L402
1818  03d1               L002:
1819  03d1 ae01bb        	ldw	x,#443
1820  03d4 89            	pushw	x
1821  03d5 ae0000        	ldw	x,#0
1822  03d8 89            	pushw	x
1823  03d9 ae000c        	ldw	x,#L75
1824  03dc cd0000        	call	_assert_failed
1826  03df 5b04          	addw	sp,#4
1827  03e1               L402:
1828                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1830  03e1 c650c9        	ld	a,20681
1831  03e4 a4e1          	and	a,#225
1832  03e6 c750c9        	ld	20681,a
1833                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1835  03e9 c650c9        	ld	a,20681
1836  03ec 1a01          	or	a,(OFST+1,sp)
1837  03ee c750c9        	ld	20681,a
1838                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1840  03f1 721050c9      	bset	20681,#0
1841                     ; 454 }
1844  03f5 84            	pop	a
1845  03f6 81            	ret
1911                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1911                     ; 465 {
1912                     	switch	.text
1913  03f7               _CLK_ITConfig:
1915  03f7 89            	pushw	x
1916       00000000      OFST:	set	0
1919                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1921  03f8 9f            	ld	a,xl
1922  03f9 4d            	tnz	a
1923  03fa 2705          	jreq	L212
1924  03fc 9f            	ld	a,xl
1925  03fd a101          	cp	a,#1
1926  03ff 2603          	jrne	L012
1927  0401               L212:
1928  0401 4f            	clr	a
1929  0402 2010          	jra	L412
1930  0404               L012:
1931  0404 ae01d4        	ldw	x,#468
1932  0407 89            	pushw	x
1933  0408 ae0000        	ldw	x,#0
1934  040b 89            	pushw	x
1935  040c ae000c        	ldw	x,#L75
1936  040f cd0000        	call	_assert_failed
1938  0412 5b04          	addw	sp,#4
1939  0414               L412:
1940                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1942  0414 7b01          	ld	a,(OFST+1,sp)
1943  0416 a10c          	cp	a,#12
1944  0418 2706          	jreq	L022
1945  041a 7b01          	ld	a,(OFST+1,sp)
1946  041c a11c          	cp	a,#28
1947  041e 2603          	jrne	L612
1948  0420               L022:
1949  0420 4f            	clr	a
1950  0421 2010          	jra	L222
1951  0423               L612:
1952  0423 ae01d5        	ldw	x,#469
1953  0426 89            	pushw	x
1954  0427 ae0000        	ldw	x,#0
1955  042a 89            	pushw	x
1956  042b ae000c        	ldw	x,#L75
1957  042e cd0000        	call	_assert_failed
1959  0431 5b04          	addw	sp,#4
1960  0433               L222:
1961                     ; 471     if (NewState != DISABLE)
1963  0433 0d02          	tnz	(OFST+2,sp)
1964  0435 271a          	jreq	L707
1965                     ; 473         switch (CLK_IT)
1967  0437 7b01          	ld	a,(OFST+1,sp)
1969                     ; 481         default:
1969                     ; 482             break;
1970  0439 a00c          	sub	a,#12
1971  043b 270a          	jreq	L346
1972  043d a010          	sub	a,#16
1973  043f 2624          	jrne	L517
1974                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1974                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1976  0441 721450c5      	bset	20677,#2
1977                     ; 477             break;
1979  0445 201e          	jra	L517
1980  0447               L346:
1981                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1981                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1983  0447 721450c8      	bset	20680,#2
1984                     ; 480             break;
1986  044b 2018          	jra	L517
1987  044d               L546:
1988                     ; 481         default:
1988                     ; 482             break;
1990  044d 2016          	jra	L517
1991  044f               L317:
1993  044f 2014          	jra	L517
1994  0451               L707:
1995                     ; 487         switch (CLK_IT)
1997  0451 7b01          	ld	a,(OFST+1,sp)
1999                     ; 495         default:
1999                     ; 496             break;
2000  0453 a00c          	sub	a,#12
2001  0455 270a          	jreq	L156
2002  0457 a010          	sub	a,#16
2003  0459 260a          	jrne	L517
2004                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2004                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2006  045b 721550c5      	bres	20677,#2
2007                     ; 491             break;
2009  045f 2004          	jra	L517
2010  0461               L156:
2011                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2011                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2013  0461 721550c8      	bres	20680,#2
2014                     ; 494             break;
2015  0465               L517:
2016                     ; 500 }
2019  0465 85            	popw	x
2020  0466 81            	ret
2021  0467               L356:
2022                     ; 495         default:
2022                     ; 496             break;
2024  0467 20fc          	jra	L517
2025  0469               L127:
2026  0469 20fa          	jra	L517
2062                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2062                     ; 508 {
2063                     	switch	.text
2064  046b               _CLK_SYSCLKConfig:
2066  046b 88            	push	a
2067       00000000      OFST:	set	0
2070                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2072  046c 4d            	tnz	a
2073  046d 272c          	jreq	L032
2074  046f a108          	cp	a,#8
2075  0471 2728          	jreq	L032
2076  0473 a110          	cp	a,#16
2077  0475 2724          	jreq	L032
2078  0477 a118          	cp	a,#24
2079  0479 2720          	jreq	L032
2080  047b a180          	cp	a,#128
2081  047d 271c          	jreq	L032
2082  047f a181          	cp	a,#129
2083  0481 2718          	jreq	L032
2084  0483 a182          	cp	a,#130
2085  0485 2714          	jreq	L032
2086  0487 a183          	cp	a,#131
2087  0489 2710          	jreq	L032
2088  048b a184          	cp	a,#132
2089  048d 270c          	jreq	L032
2090  048f a185          	cp	a,#133
2091  0491 2708          	jreq	L032
2092  0493 a186          	cp	a,#134
2093  0495 2704          	jreq	L032
2094  0497 a187          	cp	a,#135
2095  0499 2603          	jrne	L622
2096  049b               L032:
2097  049b 4f            	clr	a
2098  049c 2010          	jra	L232
2099  049e               L622:
2100  049e ae01ff        	ldw	x,#511
2101  04a1 89            	pushw	x
2102  04a2 ae0000        	ldw	x,#0
2103  04a5 89            	pushw	x
2104  04a6 ae000c        	ldw	x,#L75
2105  04a9 cd0000        	call	_assert_failed
2107  04ac 5b04          	addw	sp,#4
2108  04ae               L232:
2109                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2111  04ae 7b01          	ld	a,(OFST+1,sp)
2112  04b0 a580          	bcp	a,#128
2113  04b2 2614          	jrne	L147
2114                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2116  04b4 c650c6        	ld	a,20678
2117  04b7 a4e7          	and	a,#231
2118  04b9 c750c6        	ld	20678,a
2119                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2121  04bc 7b01          	ld	a,(OFST+1,sp)
2122  04be a418          	and	a,#24
2123  04c0 ca50c6        	or	a,20678
2124  04c3 c750c6        	ld	20678,a
2126  04c6 2012          	jra	L347
2127  04c8               L147:
2128                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2130  04c8 c650c6        	ld	a,20678
2131  04cb a4f8          	and	a,#248
2132  04cd c750c6        	ld	20678,a
2133                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2135  04d0 7b01          	ld	a,(OFST+1,sp)
2136  04d2 a407          	and	a,#7
2137  04d4 ca50c6        	or	a,20678
2138  04d7 c750c6        	ld	20678,a
2139  04da               L347:
2140                     ; 524 }
2143  04da 84            	pop	a
2144  04db 81            	ret
2201                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2201                     ; 532 {
2202                     	switch	.text
2203  04dc               _CLK_SWIMConfig:
2205  04dc 88            	push	a
2206       00000000      OFST:	set	0
2209                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2211  04dd 4d            	tnz	a
2212  04de 2704          	jreq	L042
2213  04e0 a101          	cp	a,#1
2214  04e2 2603          	jrne	L632
2215  04e4               L042:
2216  04e4 4f            	clr	a
2217  04e5 2010          	jra	L242
2218  04e7               L632:
2219  04e7 ae0217        	ldw	x,#535
2220  04ea 89            	pushw	x
2221  04eb ae0000        	ldw	x,#0
2222  04ee 89            	pushw	x
2223  04ef ae000c        	ldw	x,#L75
2224  04f2 cd0000        	call	_assert_failed
2226  04f5 5b04          	addw	sp,#4
2227  04f7               L242:
2228                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2230  04f7 0d01          	tnz	(OFST+1,sp)
2231  04f9 2706          	jreq	L377
2232                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2234  04fb 721050cd      	bset	20685,#0
2236  04ff 2004          	jra	L577
2237  0501               L377:
2238                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2240  0501 721150cd      	bres	20685,#0
2241  0505               L577:
2242                     ; 548 }
2245  0505 84            	pop	a
2246  0506 81            	ret
2270                     ; 557 void CLK_ClockSecuritySystemEnable(void)
2270                     ; 558 {
2271                     	switch	.text
2272  0507               _CLK_ClockSecuritySystemEnable:
2276                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
2278  0507 721050c8      	bset	20680,#0
2279                     ; 561 }
2282  050b 81            	ret
2307                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2307                     ; 570 {
2308                     	switch	.text
2309  050c               _CLK_GetSYSCLKSource:
2313                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
2315  050c c650c3        	ld	a,20675
2318  050f 81            	ret
2381                     ; 579 uint32_t CLK_GetClockFreq(void)
2381                     ; 580 {
2382                     	switch	.text
2383  0510               _CLK_GetClockFreq:
2385  0510 5209          	subw	sp,#9
2386       00000009      OFST:	set	9
2389                     ; 582     uint32_t clockfrequency = 0;
2391                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2393                     ; 584     uint8_t tmp = 0, presc = 0;
2397                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2399  0512 c650c3        	ld	a,20675
2400  0515 6b09          	ld	(OFST+0,sp),a
2401                     ; 589     if (clocksource == CLK_SOURCE_HSI)
2403  0517 7b09          	ld	a,(OFST+0,sp)
2404  0519 a1e1          	cp	a,#225
2405  051b 2641          	jrne	L1501
2406                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2408  051d c650c6        	ld	a,20678
2409  0520 a418          	and	a,#24
2410  0522 6b09          	ld	(OFST+0,sp),a
2411                     ; 592         tmp = (uint8_t)(tmp >> 3);
2413  0524 0409          	srl	(OFST+0,sp)
2414  0526 0409          	srl	(OFST+0,sp)
2415  0528 0409          	srl	(OFST+0,sp)
2416                     ; 593         presc = HSIDivFactor[tmp];
2418  052a 7b09          	ld	a,(OFST+0,sp)
2419  052c 5f            	clrw	x
2420  052d 97            	ld	xl,a
2421  052e d60000        	ld	a,(_HSIDivFactor,x)
2422  0531 6b09          	ld	(OFST+0,sp),a
2423                     ; 594         clockfrequency = HSI_VALUE / presc;
2425  0533 7b09          	ld	a,(OFST+0,sp)
2426  0535 b703          	ld	c_lreg+3,a
2427  0537 3f02          	clr	c_lreg+2
2428  0539 3f01          	clr	c_lreg+1
2429  053b 3f00          	clr	c_lreg
2430  053d 96            	ldw	x,sp
2431  053e 1c0001        	addw	x,#OFST-8
2432  0541 cd0000        	call	c_rtol
2434  0544 ae2400        	ldw	x,#9216
2435  0547 bf02          	ldw	c_lreg+2,x
2436  0549 ae00f4        	ldw	x,#244
2437  054c bf00          	ldw	c_lreg,x
2438  054e 96            	ldw	x,sp
2439  054f 1c0001        	addw	x,#OFST-8
2440  0552 cd0000        	call	c_ludv
2442  0555 96            	ldw	x,sp
2443  0556 1c0005        	addw	x,#OFST-4
2444  0559 cd0000        	call	c_rtol
2447  055c 201c          	jra	L3501
2448  055e               L1501:
2449                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
2451  055e 7b09          	ld	a,(OFST+0,sp)
2452  0560 a1d2          	cp	a,#210
2453  0562 260c          	jrne	L5501
2454                     ; 598         clockfrequency = LSI_VALUE;
2456  0564 aef400        	ldw	x,#62464
2457  0567 1f07          	ldw	(OFST-2,sp),x
2458  0569 ae0001        	ldw	x,#1
2459  056c 1f05          	ldw	(OFST-4,sp),x
2461  056e 200a          	jra	L3501
2462  0570               L5501:
2463                     ; 602         clockfrequency = HSE_VALUE;
2465  0570 ae3600        	ldw	x,#13824
2466  0573 1f07          	ldw	(OFST-2,sp),x
2467  0575 ae016e        	ldw	x,#366
2468  0578 1f05          	ldw	(OFST-4,sp),x
2469  057a               L3501:
2470                     ; 605     return((uint32_t)clockfrequency);
2472  057a 96            	ldw	x,sp
2473  057b 1c0005        	addw	x,#OFST-4
2474  057e cd0000        	call	c_ltor
2478  0581 5b09          	addw	sp,#9
2479  0583 81            	ret
2579                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2579                     ; 617 {
2580                     	switch	.text
2581  0584               _CLK_AdjustHSICalibrationValue:
2583  0584 88            	push	a
2584       00000000      OFST:	set	0
2587                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2589  0585 4d            	tnz	a
2590  0586 271c          	jreq	L652
2591  0588 a101          	cp	a,#1
2592  058a 2718          	jreq	L652
2593  058c a102          	cp	a,#2
2594  058e 2714          	jreq	L652
2595  0590 a103          	cp	a,#3
2596  0592 2710          	jreq	L652
2597  0594 a104          	cp	a,#4
2598  0596 270c          	jreq	L652
2599  0598 a105          	cp	a,#5
2600  059a 2708          	jreq	L652
2601  059c a106          	cp	a,#6
2602  059e 2704          	jreq	L652
2603  05a0 a107          	cp	a,#7
2604  05a2 2603          	jrne	L452
2605  05a4               L652:
2606  05a4 4f            	clr	a
2607  05a5 2010          	jra	L062
2608  05a7               L452:
2609  05a7 ae026c        	ldw	x,#620
2610  05aa 89            	pushw	x
2611  05ab ae0000        	ldw	x,#0
2612  05ae 89            	pushw	x
2613  05af ae000c        	ldw	x,#L75
2614  05b2 cd0000        	call	_assert_failed
2616  05b5 5b04          	addw	sp,#4
2617  05b7               L062:
2618                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2620  05b7 c650cc        	ld	a,20684
2621  05ba a4f8          	and	a,#248
2622  05bc 1a01          	or	a,(OFST+1,sp)
2623  05be c750cc        	ld	20684,a
2624                     ; 625 }
2627  05c1 84            	pop	a
2628  05c2 81            	ret
2652                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2652                     ; 637 {
2653                     	switch	.text
2654  05c3               _CLK_SYSCLKEmergencyClear:
2658                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2660  05c3 721150c5      	bres	20677,#0
2661                     ; 639 }
2664  05c7 81            	ret
2818                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2818                     ; 649 {
2819                     	switch	.text
2820  05c8               _CLK_GetFlagStatus:
2822  05c8 89            	pushw	x
2823  05c9 5203          	subw	sp,#3
2824       00000003      OFST:	set	3
2827                     ; 651     uint16_t statusreg = 0;
2829                     ; 652     uint8_t tmpreg = 0;
2831                     ; 653     FlagStatus bitstatus = RESET;
2833                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2835  05cb a30110        	cpw	x,#272
2836  05ce 2728          	jreq	L072
2837  05d0 a30102        	cpw	x,#258
2838  05d3 2723          	jreq	L072
2839  05d5 a30202        	cpw	x,#514
2840  05d8 271e          	jreq	L072
2841  05da a30308        	cpw	x,#776
2842  05dd 2719          	jreq	L072
2843  05df a30301        	cpw	x,#769
2844  05e2 2714          	jreq	L072
2845  05e4 a30408        	cpw	x,#1032
2846  05e7 270f          	jreq	L072
2847  05e9 a30402        	cpw	x,#1026
2848  05ec 270a          	jreq	L072
2849  05ee a30504        	cpw	x,#1284
2850  05f1 2705          	jreq	L072
2851  05f3 a30502        	cpw	x,#1282
2852  05f6 2603          	jrne	L662
2853  05f8               L072:
2854  05f8 4f            	clr	a
2855  05f9 2010          	jra	L272
2856  05fb               L662:
2857  05fb ae0290        	ldw	x,#656
2858  05fe 89            	pushw	x
2859  05ff ae0000        	ldw	x,#0
2860  0602 89            	pushw	x
2861  0603 ae000c        	ldw	x,#L75
2862  0606 cd0000        	call	_assert_failed
2864  0609 5b04          	addw	sp,#4
2865  060b               L272:
2866                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2868  060b 7b04          	ld	a,(OFST+1,sp)
2869  060d 97            	ld	xl,a
2870  060e 7b05          	ld	a,(OFST+2,sp)
2871  0610 9f            	ld	a,xl
2872  0611 a4ff          	and	a,#255
2873  0613 97            	ld	xl,a
2874  0614 4f            	clr	a
2875  0615 02            	rlwa	x,a
2876  0616 1f01          	ldw	(OFST-2,sp),x
2877  0618 01            	rrwa	x,a
2878                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2880  0619 1e01          	ldw	x,(OFST-2,sp)
2881  061b a30100        	cpw	x,#256
2882  061e 2607          	jrne	L3221
2883                     ; 664         tmpreg = CLK->ICKR;
2885  0620 c650c0        	ld	a,20672
2886  0623 6b03          	ld	(OFST+0,sp),a
2888  0625 202f          	jra	L5221
2889  0627               L3221:
2890                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2892  0627 1e01          	ldw	x,(OFST-2,sp)
2893  0629 a30200        	cpw	x,#512
2894  062c 2607          	jrne	L7221
2895                     ; 668         tmpreg = CLK->ECKR;
2897  062e c650c1        	ld	a,20673
2898  0631 6b03          	ld	(OFST+0,sp),a
2900  0633 2021          	jra	L5221
2901  0635               L7221:
2902                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2904  0635 1e01          	ldw	x,(OFST-2,sp)
2905  0637 a30300        	cpw	x,#768
2906  063a 2607          	jrne	L3321
2907                     ; 672         tmpreg = CLK->SWCR;
2909  063c c650c5        	ld	a,20677
2910  063f 6b03          	ld	(OFST+0,sp),a
2912  0641 2013          	jra	L5221
2913  0643               L3321:
2914                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2916  0643 1e01          	ldw	x,(OFST-2,sp)
2917  0645 a30400        	cpw	x,#1024
2918  0648 2607          	jrne	L7321
2919                     ; 676         tmpreg = CLK->CSSR;
2921  064a c650c8        	ld	a,20680
2922  064d 6b03          	ld	(OFST+0,sp),a
2924  064f 2005          	jra	L5221
2925  0651               L7321:
2926                     ; 680         tmpreg = CLK->CCOR;
2928  0651 c650c9        	ld	a,20681
2929  0654 6b03          	ld	(OFST+0,sp),a
2930  0656               L5221:
2931                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2933  0656 7b05          	ld	a,(OFST+2,sp)
2934  0658 1503          	bcp	a,(OFST+0,sp)
2935  065a 2706          	jreq	L3421
2936                     ; 685         bitstatus = SET;
2938  065c a601          	ld	a,#1
2939  065e 6b03          	ld	(OFST+0,sp),a
2941  0660 2002          	jra	L5421
2942  0662               L3421:
2943                     ; 689         bitstatus = RESET;
2945  0662 0f03          	clr	(OFST+0,sp)
2946  0664               L5421:
2947                     ; 693     return((FlagStatus)bitstatus);
2949  0664 7b03          	ld	a,(OFST+0,sp)
2952  0666 5b05          	addw	sp,#5
2953  0668 81            	ret
3000                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3000                     ; 704 {
3001                     	switch	.text
3002  0669               _CLK_GetITStatus:
3004  0669 88            	push	a
3005  066a 88            	push	a
3006       00000001      OFST:	set	1
3009                     ; 706     ITStatus bitstatus = RESET;
3011                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
3013  066b a10c          	cp	a,#12
3014  066d 2704          	jreq	L003
3015  066f a11c          	cp	a,#28
3016  0671 2603          	jrne	L672
3017  0673               L003:
3018  0673 4f            	clr	a
3019  0674 2010          	jra	L203
3020  0676               L672:
3021  0676 ae02c5        	ldw	x,#709
3022  0679 89            	pushw	x
3023  067a ae0000        	ldw	x,#0
3024  067d 89            	pushw	x
3025  067e ae000c        	ldw	x,#L75
3026  0681 cd0000        	call	_assert_failed
3028  0684 5b04          	addw	sp,#4
3029  0686               L203:
3030                     ; 711     if (CLK_IT == CLK_IT_SWIF)
3032  0686 7b02          	ld	a,(OFST+1,sp)
3033  0688 a11c          	cp	a,#28
3034  068a 2613          	jrne	L1721
3035                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3037  068c c650c5        	ld	a,20677
3038  068f 1402          	and	a,(OFST+1,sp)
3039  0691 a10c          	cp	a,#12
3040  0693 2606          	jrne	L3721
3041                     ; 716             bitstatus = SET;
3043  0695 a601          	ld	a,#1
3044  0697 6b01          	ld	(OFST+0,sp),a
3046  0699 2015          	jra	L7721
3047  069b               L3721:
3048                     ; 720             bitstatus = RESET;
3050  069b 0f01          	clr	(OFST+0,sp)
3051  069d 2011          	jra	L7721
3052  069f               L1721:
3053                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3055  069f c650c8        	ld	a,20680
3056  06a2 1402          	and	a,(OFST+1,sp)
3057  06a4 a10c          	cp	a,#12
3058  06a6 2606          	jrne	L1031
3059                     ; 728             bitstatus = SET;
3061  06a8 a601          	ld	a,#1
3062  06aa 6b01          	ld	(OFST+0,sp),a
3064  06ac 2002          	jra	L7721
3065  06ae               L1031:
3066                     ; 732             bitstatus = RESET;
3068  06ae 0f01          	clr	(OFST+0,sp)
3069  06b0               L7721:
3070                     ; 737     return bitstatus;
3072  06b0 7b01          	ld	a,(OFST+0,sp)
3075  06b2 85            	popw	x
3076  06b3 81            	ret
3113                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3113                     ; 748 {
3114                     	switch	.text
3115  06b4               _CLK_ClearITPendingBit:
3117  06b4 88            	push	a
3118       00000000      OFST:	set	0
3121                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
3123  06b5 a10c          	cp	a,#12
3124  06b7 2704          	jreq	L013
3125  06b9 a11c          	cp	a,#28
3126  06bb 2603          	jrne	L603
3127  06bd               L013:
3128  06bd 4f            	clr	a
3129  06be 2010          	jra	L213
3130  06c0               L603:
3131  06c0 ae02ef        	ldw	x,#751
3132  06c3 89            	pushw	x
3133  06c4 ae0000        	ldw	x,#0
3134  06c7 89            	pushw	x
3135  06c8 ae000c        	ldw	x,#L75
3136  06cb cd0000        	call	_assert_failed
3138  06ce 5b04          	addw	sp,#4
3139  06d0               L213:
3140                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3142  06d0 7b01          	ld	a,(OFST+1,sp)
3143  06d2 a10c          	cp	a,#12
3144  06d4 2606          	jrne	L3231
3145                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3147  06d6 721750c8      	bres	20680,#3
3149  06da 2004          	jra	L5231
3150  06dc               L3231:
3151                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3153  06dc 721750c5      	bres	20677,#3
3154  06e0               L5231:
3155                     ; 764 }
3158  06e0 84            	pop	a
3159  06e1 81            	ret
3194                     	xdef	_CLKPrescTable
3195                     	xdef	_HSIDivFactor
3196                     	xdef	_CLK_ClearITPendingBit
3197                     	xdef	_CLK_GetITStatus
3198                     	xdef	_CLK_GetFlagStatus
3199                     	xdef	_CLK_GetSYSCLKSource
3200                     	xdef	_CLK_GetClockFreq
3201                     	xdef	_CLK_AdjustHSICalibrationValue
3202                     	xdef	_CLK_SYSCLKEmergencyClear
3203                     	xdef	_CLK_ClockSecuritySystemEnable
3204                     	xdef	_CLK_SWIMConfig
3205                     	xdef	_CLK_SYSCLKConfig
3206                     	xdef	_CLK_ITConfig
3207                     	xdef	_CLK_CCOConfig
3208                     	xdef	_CLK_HSIPrescalerConfig
3209                     	xdef	_CLK_ClockSwitchConfig
3210                     	xdef	_CLK_PeripheralClockConfig
3211                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3212                     	xdef	_CLK_FastHaltWakeUpCmd
3213                     	xdef	_CLK_ClockSwitchCmd
3214                     	xdef	_CLK_CCOCmd
3215                     	xdef	_CLK_LSICmd
3216                     	xdef	_CLK_HSICmd
3217                     	xdef	_CLK_HSECmd
3218                     	xdef	_CLK_DeInit
3219                     	xref	_assert_failed
3220                     	switch	.const
3221  000c               L75:
3222  000c 2e2e5c2e2e5c  	dc.b	"..\..\libraries\st"
3223  001e 6d38735f7374  	dc.b	"m8s_stdperiph_driv"
3224  0030 65725c737263  	dc.b	"er\src\stm8s_clk.c",0
3225                     	xref.b	c_lreg
3226                     	xref.b	c_x
3246                     	xref	c_ltor
3247                     	xref	c_ludv
3248                     	xref	c_rtol
3249                     	end
