   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  22                     .const:	section	.text
  23  0000               _HSIDivFactor:
  24  0000 01            	dc.b	1
  25  0001 02            	dc.b	2
  26  0002 04            	dc.b	4
  27  0003 08            	dc.b	8
  28  0004               _CLKPrescTable:
  29  0004 01            	dc.b	1
  30  0005 02            	dc.b	2
  31  0006 04            	dc.b	4
  32  0007 08            	dc.b	8
  33  0008 0a            	dc.b	10
  34  0009 10            	dc.b	16
  35  000a 14            	dc.b	20
  36  000b 28            	dc.b	40
  65                     ; 66 void CLK_DeInit(void)
  65                     ; 67 {
  67                     .text:	section	.text,new
  68  0000               _CLK_DeInit:
  72                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  74  0000 350150c0      	mov	20672,#1
  75                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  77  0004 725f50c1      	clr	20673
  78                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  80  0008 35e150c4      	mov	20676,#225
  81                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  83  000c 725f50c5      	clr	20677
  84                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  86  0010 351850c6      	mov	20678,#24
  87                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  89  0014 35ff50c7      	mov	20679,#255
  90                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  92  0018 35ff50ca      	mov	20682,#255
  93                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  95  001c 725f50c8      	clr	20680
  96                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  98  0020 725f50c9      	clr	20681
 100  0024               L52:
 101                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 103  0024 720050c9fb    	btjt	20681,#0,L52
 104                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 106  0029 725f50c9      	clr	20681
 107                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 109  002d 725f50cc      	clr	20684
 110                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 112  0031 725f50cd      	clr	20685
 113                     ; 84 }
 116  0035 81            	ret	
 173                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 173                     ; 96 {
 174                     .text:	section	.text,new
 175  0000               _CLK_FastHaltWakeUpCmd:
 177  0000 88            	push	a
 178       00000000      OFST:	set	0
 181                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 183  0001 4d            	tnz	a
 184  0002 2711          	jreq	L41
 185  0004 4a            	dec	a
 186  0005 270e          	jreq	L41
 187  0007 ae0063        	ldw	x,#99
 188  000a 89            	pushw	x
 189  000b 5f            	clrw	x
 190  000c 89            	pushw	x
 191  000d ae000c        	ldw	x,#L75
 192  0010 cd0000        	call	_assert_failed
 194  0013 5b04          	addw	sp,#4
 195  0015               L41:
 196                     ; 101     if (NewState != DISABLE)
 198  0015 7b01          	ld	a,(OFST+1,sp)
 199  0017 2706          	jreq	L16
 200                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 202  0019 721450c0      	bset	20672,#2
 204  001d 2004          	jra	L36
 205  001f               L16:
 206                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 208  001f 721550c0      	bres	20672,#2
 209  0023               L36:
 210                     ; 112 }
 213  0023 84            	pop	a
 214  0024 81            	ret	
 250                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 250                     ; 120 {
 251                     .text:	section	.text,new
 252  0000               _CLK_HSECmd:
 254  0000 88            	push	a
 255       00000000      OFST:	set	0
 258                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 260  0001 4d            	tnz	a
 261  0002 2711          	jreq	L62
 262  0004 4a            	dec	a
 263  0005 270e          	jreq	L62
 264  0007 ae007b        	ldw	x,#123
 265  000a 89            	pushw	x
 266  000b 5f            	clrw	x
 267  000c 89            	pushw	x
 268  000d ae000c        	ldw	x,#L75
 269  0010 cd0000        	call	_assert_failed
 271  0013 5b04          	addw	sp,#4
 272  0015               L62:
 273                     ; 125     if (NewState != DISABLE)
 275  0015 7b01          	ld	a,(OFST+1,sp)
 276  0017 2706          	jreq	L301
 277                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 279  0019 721050c1      	bset	20673,#0
 281  001d 2004          	jra	L501
 282  001f               L301:
 283                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 285  001f 721150c1      	bres	20673,#0
 286  0023               L501:
 287                     ; 136 }
 290  0023 84            	pop	a
 291  0024 81            	ret	
 327                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 327                     ; 144 {
 328                     .text:	section	.text,new
 329  0000               _CLK_HSICmd:
 331  0000 88            	push	a
 332       00000000      OFST:	set	0
 335                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 337  0001 4d            	tnz	a
 338  0002 2711          	jreq	L04
 339  0004 4a            	dec	a
 340  0005 270e          	jreq	L04
 341  0007 ae0093        	ldw	x,#147
 342  000a 89            	pushw	x
 343  000b 5f            	clrw	x
 344  000c 89            	pushw	x
 345  000d ae000c        	ldw	x,#L75
 346  0010 cd0000        	call	_assert_failed
 348  0013 5b04          	addw	sp,#4
 349  0015               L04:
 350                     ; 149     if (NewState != DISABLE)
 352  0015 7b01          	ld	a,(OFST+1,sp)
 353  0017 2706          	jreq	L521
 354                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 356  0019 721050c0      	bset	20672,#0
 358  001d 2004          	jra	L721
 359  001f               L521:
 360                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 362  001f 721150c0      	bres	20672,#0
 363  0023               L721:
 364                     ; 160 }
 367  0023 84            	pop	a
 368  0024 81            	ret	
 404                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 404                     ; 168 {
 405                     .text:	section	.text,new
 406  0000               _CLK_LSICmd:
 408  0000 88            	push	a
 409       00000000      OFST:	set	0
 412                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414  0001 4d            	tnz	a
 415  0002 2711          	jreq	L25
 416  0004 4a            	dec	a
 417  0005 270e          	jreq	L25
 418  0007 ae00ab        	ldw	x,#171
 419  000a 89            	pushw	x
 420  000b 5f            	clrw	x
 421  000c 89            	pushw	x
 422  000d ae000c        	ldw	x,#L75
 423  0010 cd0000        	call	_assert_failed
 425  0013 5b04          	addw	sp,#4
 426  0015               L25:
 427                     ; 173     if (NewState != DISABLE)
 429  0015 7b01          	ld	a,(OFST+1,sp)
 430  0017 2706          	jreq	L741
 431                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 433  0019 721650c0      	bset	20672,#3
 435  001d 2004          	jra	L151
 436  001f               L741:
 437                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 439  001f 721750c0      	bres	20672,#3
 440  0023               L151:
 441                     ; 184 }
 444  0023 84            	pop	a
 445  0024 81            	ret	
 481                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 481                     ; 193 {
 482                     .text:	section	.text,new
 483  0000               _CLK_CCOCmd:
 485  0000 88            	push	a
 486       00000000      OFST:	set	0
 489                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 491  0001 4d            	tnz	a
 492  0002 2711          	jreq	L46
 493  0004 4a            	dec	a
 494  0005 270e          	jreq	L46
 495  0007 ae00c4        	ldw	x,#196
 496  000a 89            	pushw	x
 497  000b 5f            	clrw	x
 498  000c 89            	pushw	x
 499  000d ae000c        	ldw	x,#L75
 500  0010 cd0000        	call	_assert_failed
 502  0013 5b04          	addw	sp,#4
 503  0015               L46:
 504                     ; 198     if (NewState != DISABLE)
 506  0015 7b01          	ld	a,(OFST+1,sp)
 507  0017 2706          	jreq	L171
 508                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 510  0019 721050c9      	bset	20681,#0
 512  001d 2004          	jra	L371
 513  001f               L171:
 514                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 516  001f 721150c9      	bres	20681,#0
 517  0023               L371:
 518                     ; 209 }
 521  0023 84            	pop	a
 522  0024 81            	ret	
 558                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 558                     ; 219 {
 559                     .text:	section	.text,new
 560  0000               _CLK_ClockSwitchCmd:
 562  0000 88            	push	a
 563       00000000      OFST:	set	0
 566                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 568  0001 4d            	tnz	a
 569  0002 2711          	jreq	L67
 570  0004 4a            	dec	a
 571  0005 270e          	jreq	L67
 572  0007 ae00de        	ldw	x,#222
 573  000a 89            	pushw	x
 574  000b 5f            	clrw	x
 575  000c 89            	pushw	x
 576  000d ae000c        	ldw	x,#L75
 577  0010 cd0000        	call	_assert_failed
 579  0013 5b04          	addw	sp,#4
 580  0015               L67:
 581                     ; 224     if (NewState != DISABLE )
 583  0015 7b01          	ld	a,(OFST+1,sp)
 584  0017 2706          	jreq	L312
 585                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 587  0019 721250c5      	bset	20677,#1
 589  001d 2004          	jra	L512
 590  001f               L312:
 591                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 593  001f 721350c5      	bres	20677,#1
 594  0023               L512:
 595                     ; 235 }
 598  0023 84            	pop	a
 599  0024 81            	ret	
 636                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 636                     ; 246 {
 637                     .text:	section	.text,new
 638  0000               _CLK_SlowActiveHaltWakeUpCmd:
 640  0000 88            	push	a
 641       00000000      OFST:	set	0
 644                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 646  0001 4d            	tnz	a
 647  0002 2711          	jreq	L011
 648  0004 4a            	dec	a
 649  0005 270e          	jreq	L011
 650  0007 ae00f9        	ldw	x,#249
 651  000a 89            	pushw	x
 652  000b 5f            	clrw	x
 653  000c 89            	pushw	x
 654  000d ae000c        	ldw	x,#L75
 655  0010 cd0000        	call	_assert_failed
 657  0013 5b04          	addw	sp,#4
 658  0015               L011:
 659                     ; 251     if (NewState != DISABLE)
 661  0015 7b01          	ld	a,(OFST+1,sp)
 662  0017 2706          	jreq	L532
 663                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 665  0019 721a50c0      	bset	20672,#5
 667  001d 2004          	jra	L732
 668  001f               L532:
 669                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 671  001f 721b50c0      	bres	20672,#5
 672  0023               L732:
 673                     ; 262 }
 676  0023 84            	pop	a
 677  0024 81            	ret	
 837                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 837                     ; 273 {
 838                     .text:	section	.text,new
 839  0000               _CLK_PeripheralClockConfig:
 841  0000 89            	pushw	x
 842       00000000      OFST:	set	0
 845                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 847  0001 9f            	ld	a,xl
 848  0002 4d            	tnz	a
 849  0003 270a          	jreq	L221
 850  0005 9f            	ld	a,xl
 851  0006 4a            	dec	a
 852  0007 2706          	jreq	L221
 853  0009 ae0114        	ldw	x,#276
 854  000c cd0096        	call	LC004
 855  000f               L221:
 856                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 858  000f 7b01          	ld	a,(OFST+1,sp)
 859  0011 2733          	jreq	L231
 860  0013 a101          	cp	a,#1
 861  0015 272f          	jreq	L231
 862  0017 a103          	cp	a,#3
 863  0019 272b          	jreq	L231
 864  001b a102          	cp	a,#2
 865  001d 2727          	jreq	L231
 866  001f a104          	cp	a,#4
 867  0021 2723          	jreq	L231
 868  0023 a105          	cp	a,#5
 869  0025 271f          	jreq	L231
 870  0027 a104          	cp	a,#4
 871  0029 271b          	jreq	L231
 872  002b a106          	cp	a,#6
 873  002d 2717          	jreq	L231
 874  002f a107          	cp	a,#7
 875  0031 2713          	jreq	L231
 876  0033 a117          	cp	a,#23
 877  0035 270f          	jreq	L231
 878  0037 a113          	cp	a,#19
 879  0039 270b          	jreq	L231
 880  003b a112          	cp	a,#18
 881  003d 2707          	jreq	L231
 882  003f ae0115        	ldw	x,#277
 883  0042 ad52          	call	LC004
 884  0044 7b01          	ld	a,(OFST+1,sp)
 885  0046               L231:
 886                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 888  0046 a510          	bcp	a,#16
 889  0048 2622          	jrne	L323
 890                     ; 281         if (NewState != DISABLE)
 892  004a 0d02          	tnz	(OFST+2,sp)
 893  004c 270d          	jreq	L523
 894                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 896  004e ad3e          	call	LC003
 897  0050 2704          	jreq	L631
 898  0052               L041:
 899  0052 48            	sll	a
 900  0053 5a            	decw	x
 901  0054 26fc          	jrne	L041
 902  0056               L631:
 903  0056 ca50c7        	or	a,20679
 905  0059 200c          	jp	LC002
 906  005b               L523:
 907                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 909  005b ad31          	call	LC003
 910  005d 2704          	jreq	L241
 911  005f               L441:
 912  005f 48            	sll	a
 913  0060 5a            	decw	x
 914  0061 26fc          	jrne	L441
 915  0063               L241:
 916  0063 43            	cpl	a
 917  0064 c450c7        	and	a,20679
 918  0067               LC002:
 919  0067 c750c7        	ld	20679,a
 920  006a 2020          	jra	L133
 921  006c               L323:
 922                     ; 294         if (NewState != DISABLE)
 924  006c 0d02          	tnz	(OFST+2,sp)
 925  006e 270d          	jreq	L333
 926                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 928  0070 ad1c          	call	LC003
 929  0072 2704          	jreq	L641
 930  0074               L051:
 931  0074 48            	sll	a
 932  0075 5a            	decw	x
 933  0076 26fc          	jrne	L051
 934  0078               L641:
 935  0078 ca50ca        	or	a,20682
 937  007b 200c          	jp	LC001
 938  007d               L333:
 939                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 941  007d ad0f          	call	LC003
 942  007f 2704          	jreq	L251
 943  0081               L451:
 944  0081 48            	sll	a
 945  0082 5a            	decw	x
 946  0083 26fc          	jrne	L451
 947  0085               L251:
 948  0085 43            	cpl	a
 949  0086 c450ca        	and	a,20682
 950  0089               LC001:
 951  0089 c750ca        	ld	20682,a
 952  008c               L133:
 953                     ; 306 }
 956  008c 85            	popw	x
 957  008d 81            	ret	
 958  008e               LC003:
 959  008e a40f          	and	a,#15
 960  0090 5f            	clrw	x
 961  0091 97            	ld	xl,a
 962  0092 a601          	ld	a,#1
 963  0094 5d            	tnzw	x
 964  0095 81            	ret	
 965  0096               LC004:
 966  0096 89            	pushw	x
 967  0097 5f            	clrw	x
 968  0098 89            	pushw	x
 969  0099 ae000c        	ldw	x,#L75
 970  009c cd0000        	call	_assert_failed
 972  009f 5b04          	addw	sp,#4
 973  00a1 81            	ret	
1160                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1160                     ; 320 {
1161                     .text:	section	.text,new
1162  0000               _CLK_ClockSwitchConfig:
1164  0000 89            	pushw	x
1165  0001 5204          	subw	sp,#4
1166       00000004      OFST:	set	4
1169                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1171  0003 ae0491        	ldw	x,#1169
1172  0006 1f03          	ldw	(OFST-1,sp),x
1173                     ; 324     ErrorStatus Swif = ERROR;
1175                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1177  0008 7b06          	ld	a,(OFST+2,sp)
1178  000a a1e1          	cp	a,#225
1179  000c 270e          	jreq	L461
1180  000e a1d2          	cp	a,#210
1181  0010 270a          	jreq	L461
1182  0012 a1b4          	cp	a,#180
1183  0014 2706          	jreq	L461
1184  0016 ae0147        	ldw	x,#327
1185  0019 cd00c4        	call	LC006
1186  001c               L461:
1187                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1189  001c 7b05          	ld	a,(OFST+1,sp)
1190  001e 2709          	jreq	L471
1191  0020 4a            	dec	a
1192  0021 2706          	jreq	L471
1193  0023 ae0148        	ldw	x,#328
1194  0026 cd00c4        	call	LC006
1195  0029               L471:
1196                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1198  0029 7b09          	ld	a,(OFST+5,sp)
1199  002b 2709          	jreq	L402
1200  002d 4a            	dec	a
1201  002e 2706          	jreq	L402
1202  0030 ae0149        	ldw	x,#329
1203  0033 cd00c4        	call	LC006
1204  0036               L402:
1205                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1207  0036 7b0a          	ld	a,(OFST+6,sp)
1208  0038 2709          	jreq	L412
1209  003a 4a            	dec	a
1210  003b 2706          	jreq	L412
1211  003d ae014a        	ldw	x,#330
1212  0040 cd00c4        	call	LC006
1213  0043               L412:
1214                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1216  0043 c650c3        	ld	a,20675
1217  0046 6b01          	ld	(OFST-3,sp),a
1218                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1220  0048 7b05          	ld	a,(OFST+1,sp)
1221  004a 4a            	dec	a
1222  004b 262d          	jrne	L544
1223                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1225  004d 721250c5      	bset	20677,#1
1226                     ; 343         if (ITState != DISABLE)
1228  0051 7b09          	ld	a,(OFST+5,sp)
1229  0053 2706          	jreq	L744
1230                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1232  0055 721450c5      	bset	20677,#2
1234  0059 2004          	jra	L154
1235  005b               L744:
1236                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1238  005b 721550c5      	bres	20677,#2
1239  005f               L154:
1240                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1242  005f 7b06          	ld	a,(OFST+2,sp)
1243  0061 c750c4        	ld	20676,a
1245  0064 2003          	jra	L754
1246  0066               L354:
1247                     ; 357             DownCounter--;
1249  0066 5a            	decw	x
1250  0067 1f03          	ldw	(OFST-1,sp),x
1251  0069               L754:
1252                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1254  0069 720150c504    	btjf	20677,#0,L364
1256  006e 1e03          	ldw	x,(OFST-1,sp)
1257  0070 26f4          	jrne	L354
1258  0072               L364:
1259                     ; 360         if (DownCounter != 0)
1261  0072 1e03          	ldw	x,(OFST-1,sp)
1262                     ; 362             Swif = SUCCESS;
1264  0074 2617          	jrne	LC005
1265                     ; 366             Swif = ERROR;
1267  0076 0f02          	clr	(OFST-2,sp)
1268  0078 2017          	jra	L174
1269  007a               L544:
1270                     ; 374         if (ITState != DISABLE)
1272  007a 7b09          	ld	a,(OFST+5,sp)
1273  007c 2706          	jreq	L374
1274                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1276  007e 721450c5      	bset	20677,#2
1278  0082 2004          	jra	L574
1279  0084               L374:
1280                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1282  0084 721550c5      	bres	20677,#2
1283  0088               L574:
1284                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1286  0088 7b06          	ld	a,(OFST+2,sp)
1287  008a c750c4        	ld	20676,a
1288                     ; 388         Swif = SUCCESS;
1290  008d               LC005:
1292  008d a601          	ld	a,#1
1293  008f 6b02          	ld	(OFST-2,sp),a
1294  0091               L174:
1295                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1297  0091 7b0a          	ld	a,(OFST+6,sp)
1298  0093 260c          	jrne	L774
1300  0095 7b01          	ld	a,(OFST-3,sp)
1301  0097 a1e1          	cp	a,#225
1302  0099 2606          	jrne	L774
1303                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1305  009b 721150c0      	bres	20672,#0
1307  009f 201e          	jra	L105
1308  00a1               L774:
1309                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1311  00a1 7b0a          	ld	a,(OFST+6,sp)
1312  00a3 260c          	jrne	L305
1314  00a5 7b01          	ld	a,(OFST-3,sp)
1315  00a7 a1d2          	cp	a,#210
1316  00a9 2606          	jrne	L305
1317                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1319  00ab 721750c0      	bres	20672,#3
1321  00af 200e          	jra	L105
1322  00b1               L305:
1323                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1325  00b1 7b0a          	ld	a,(OFST+6,sp)
1326  00b3 260a          	jrne	L105
1328  00b5 7b01          	ld	a,(OFST-3,sp)
1329  00b7 a1b4          	cp	a,#180
1330  00b9 2604          	jrne	L105
1331                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1333  00bb 721150c1      	bres	20673,#0
1334  00bf               L105:
1335                     ; 406     return(Swif);
1337  00bf 7b02          	ld	a,(OFST-2,sp)
1340  00c1 5b06          	addw	sp,#6
1341  00c3 81            	ret	
1342  00c4               LC006:
1343  00c4 89            	pushw	x
1344  00c5 5f            	clrw	x
1345  00c6 89            	pushw	x
1346  00c7 ae000c        	ldw	x,#L75
1347  00ca cd0000        	call	_assert_failed
1349  00cd 5b04          	addw	sp,#4
1350  00cf 81            	ret	
1489                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1489                     ; 417 {
1490                     .text:	section	.text,new
1491  0000               _CLK_HSIPrescalerConfig:
1493  0000 88            	push	a
1494       00000000      OFST:	set	0
1497                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1499  0001 4d            	tnz	a
1500  0002 271a          	jreq	L622
1501  0004 a108          	cp	a,#8
1502  0006 2716          	jreq	L622
1503  0008 a110          	cp	a,#16
1504  000a 2712          	jreq	L622
1505  000c a118          	cp	a,#24
1506  000e 270e          	jreq	L622
1507  0010 ae01a4        	ldw	x,#420
1508  0013 89            	pushw	x
1509  0014 5f            	clrw	x
1510  0015 89            	pushw	x
1511  0016 ae000c        	ldw	x,#L75
1512  0019 cd0000        	call	_assert_failed
1514  001c 5b04          	addw	sp,#4
1515  001e               L622:
1516                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1518  001e c650c6        	ld	a,20678
1519  0021 a4e7          	and	a,#231
1520  0023 c750c6        	ld	20678,a
1521                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1523  0026 c650c6        	ld	a,20678
1524  0029 1a01          	or	a,(OFST+1,sp)
1525  002b c750c6        	ld	20678,a
1526                     ; 428 }
1529  002e 84            	pop	a
1530  002f 81            	ret	
1666                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1666                     ; 440 {
1667                     .text:	section	.text,new
1668  0000               _CLK_CCOConfig:
1670  0000 88            	push	a
1671       00000000      OFST:	set	0
1674                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1676  0001 4d            	tnz	a
1677  0002 273e          	jreq	L042
1678  0004 a104          	cp	a,#4
1679  0006 273a          	jreq	L042
1680  0008 a102          	cp	a,#2
1681  000a 2736          	jreq	L042
1682  000c a108          	cp	a,#8
1683  000e 2732          	jreq	L042
1684  0010 a10a          	cp	a,#10
1685  0012 272e          	jreq	L042
1686  0014 a10c          	cp	a,#12
1687  0016 272a          	jreq	L042
1688  0018 a10e          	cp	a,#14
1689  001a 2726          	jreq	L042
1690  001c a110          	cp	a,#16
1691  001e 2722          	jreq	L042
1692  0020 a112          	cp	a,#18
1693  0022 271e          	jreq	L042
1694  0024 a114          	cp	a,#20
1695  0026 271a          	jreq	L042
1696  0028 a116          	cp	a,#22
1697  002a 2716          	jreq	L042
1698  002c a118          	cp	a,#24
1699  002e 2712          	jreq	L042
1700  0030 a11a          	cp	a,#26
1701  0032 270e          	jreq	L042
1702  0034 ae01bb        	ldw	x,#443
1703  0037 89            	pushw	x
1704  0038 5f            	clrw	x
1705  0039 89            	pushw	x
1706  003a ae000c        	ldw	x,#L75
1707  003d cd0000        	call	_assert_failed
1709  0040 5b04          	addw	sp,#4
1710  0042               L042:
1711                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1713  0042 c650c9        	ld	a,20681
1714  0045 a4e1          	and	a,#225
1715  0047 c750c9        	ld	20681,a
1716                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1718  004a c650c9        	ld	a,20681
1719  004d 1a01          	or	a,(OFST+1,sp)
1720  004f c750c9        	ld	20681,a
1721                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1723                     ; 454 }
1726  0052 84            	pop	a
1727  0053 721050c9      	bset	20681,#0
1728  0057 81            	ret	
1794                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1794                     ; 465 {
1795                     .text:	section	.text,new
1796  0000               _CLK_ITConfig:
1798  0000 89            	pushw	x
1799       00000000      OFST:	set	0
1802                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1804  0001 9f            	ld	a,xl
1805  0002 4d            	tnz	a
1806  0003 2709          	jreq	L252
1807  0005 9f            	ld	a,xl
1808  0006 4a            	dec	a
1809  0007 2705          	jreq	L252
1810  0009 ae01d4        	ldw	x,#468
1811  000c ad3f          	call	LC007
1812  000e               L252:
1813                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1815  000e 7b01          	ld	a,(OFST+1,sp)
1816  0010 a10c          	cp	a,#12
1817  0012 2709          	jreq	L262
1818  0014 a11c          	cp	a,#28
1819  0016 2705          	jreq	L262
1820  0018 ae01d5        	ldw	x,#469
1821  001b ad30          	call	LC007
1822  001d               L262:
1823                     ; 471     if (NewState != DISABLE)
1825  001d 7b02          	ld	a,(OFST+2,sp)
1826  001f 2716          	jreq	L507
1827                     ; 473         switch (CLK_IT)
1829  0021 7b01          	ld	a,(OFST+1,sp)
1831                     ; 481         default:
1831                     ; 482             break;
1832  0023 a00c          	sub	a,#12
1833  0025 270a          	jreq	L146
1834  0027 a010          	sub	a,#16
1835  0029 2620          	jrne	L317
1836                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1836                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1838  002b 721450c5      	bset	20677,#2
1839                     ; 477             break;
1841  002f 201a          	jra	L317
1842  0031               L146:
1843                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1843                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1845  0031 721450c8      	bset	20680,#2
1846                     ; 480             break;
1848  0035 2014          	jra	L317
1849                     ; 481         default:
1849                     ; 482             break;
1852  0037               L507:
1853                     ; 487         switch (CLK_IT)
1855  0037 7b01          	ld	a,(OFST+1,sp)
1857                     ; 495         default:
1857                     ; 496             break;
1858  0039 a00c          	sub	a,#12
1859  003b 270a          	jreq	L746
1860  003d a010          	sub	a,#16
1861  003f 260a          	jrne	L317
1862                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1862                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1864  0041 721550c5      	bres	20677,#2
1865                     ; 491             break;
1867  0045 2004          	jra	L317
1868  0047               L746:
1869                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1869                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1871  0047 721550c8      	bres	20680,#2
1872                     ; 494             break;
1873  004b               L317:
1874                     ; 500 }
1877  004b 85            	popw	x
1878  004c 81            	ret	
1879                     ; 495         default:
1879                     ; 496             break;
1881  004d               LC007:
1882  004d 89            	pushw	x
1883  004e 5f            	clrw	x
1884  004f 89            	pushw	x
1885  0050 ae000c        	ldw	x,#L75
1886  0053 cd0000        	call	_assert_failed
1888  0056 5b04          	addw	sp,#4
1889  0058 81            	ret	
1925                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1925                     ; 508 {
1926                     .text:	section	.text,new
1927  0000               _CLK_SYSCLKConfig:
1929  0000 88            	push	a
1930       00000000      OFST:	set	0
1933                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1935  0001 4d            	tnz	a
1936  0002 273a          	jreq	L472
1937  0004 a108          	cp	a,#8
1938  0006 2736          	jreq	L472
1939  0008 a110          	cp	a,#16
1940  000a 2732          	jreq	L472
1941  000c a118          	cp	a,#24
1942  000e 272e          	jreq	L472
1943  0010 a180          	cp	a,#128
1944  0012 272a          	jreq	L472
1945  0014 a181          	cp	a,#129
1946  0016 2726          	jreq	L472
1947  0018 a182          	cp	a,#130
1948  001a 2722          	jreq	L472
1949  001c a183          	cp	a,#131
1950  001e 271e          	jreq	L472
1951  0020 a184          	cp	a,#132
1952  0022 271a          	jreq	L472
1953  0024 a185          	cp	a,#133
1954  0026 2716          	jreq	L472
1955  0028 a186          	cp	a,#134
1956  002a 2712          	jreq	L472
1957  002c a187          	cp	a,#135
1958  002e 270e          	jreq	L472
1959  0030 ae01ff        	ldw	x,#511
1960  0033 89            	pushw	x
1961  0034 5f            	clrw	x
1962  0035 89            	pushw	x
1963  0036 ae000c        	ldw	x,#L75
1964  0039 cd0000        	call	_assert_failed
1966  003c 5b04          	addw	sp,#4
1967  003e               L472:
1968                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1970  003e 7b01          	ld	a,(OFST+1,sp)
1971  0040 2b0e          	jrmi	L737
1972                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1974  0042 c650c6        	ld	a,20678
1975  0045 a4e7          	and	a,#231
1976  0047 c750c6        	ld	20678,a
1977                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1979  004a 7b01          	ld	a,(OFST+1,sp)
1980  004c a418          	and	a,#24
1982  004e 200c          	jra	L147
1983  0050               L737:
1984                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1986  0050 c650c6        	ld	a,20678
1987  0053 a4f8          	and	a,#248
1988  0055 c750c6        	ld	20678,a
1989                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1991  0058 7b01          	ld	a,(OFST+1,sp)
1992  005a a407          	and	a,#7
1993  005c               L147:
1994  005c ca50c6        	or	a,20678
1995  005f c750c6        	ld	20678,a
1996                     ; 524 }
1999  0062 84            	pop	a
2000  0063 81            	ret	
2057                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2057                     ; 532 {
2058                     .text:	section	.text,new
2059  0000               _CLK_SWIMConfig:
2061  0000 88            	push	a
2062       00000000      OFST:	set	0
2065                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2067  0001 4d            	tnz	a
2068  0002 2711          	jreq	L603
2069  0004 4a            	dec	a
2070  0005 270e          	jreq	L603
2071  0007 ae0217        	ldw	x,#535
2072  000a 89            	pushw	x
2073  000b 5f            	clrw	x
2074  000c 89            	pushw	x
2075  000d ae000c        	ldw	x,#L75
2076  0010 cd0000        	call	_assert_failed
2078  0013 5b04          	addw	sp,#4
2079  0015               L603:
2080                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2082  0015 7b01          	ld	a,(OFST+1,sp)
2083  0017 2706          	jreq	L177
2084                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2086  0019 721050cd      	bset	20685,#0
2088  001d 2004          	jra	L377
2089  001f               L177:
2090                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2092  001f 721150cd      	bres	20685,#0
2093  0023               L377:
2094                     ; 548 }
2097  0023 84            	pop	a
2098  0024 81            	ret	
2122                     ; 557 void CLK_ClockSecuritySystemEnable(void)
2122                     ; 558 {
2123                     .text:	section	.text,new
2124  0000               _CLK_ClockSecuritySystemEnable:
2128                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
2130  0000 721050c8      	bset	20680,#0
2131                     ; 561 }
2134  0004 81            	ret	
2159                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2159                     ; 570 {
2160                     .text:	section	.text,new
2161  0000               _CLK_GetSYSCLKSource:
2165                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
2167  0000 c650c3        	ld	a,20675
2170  0003 81            	ret	
2227                     ; 579 uint32_t CLK_GetClockFreq(void)
2227                     ; 580 {
2228                     .text:	section	.text,new
2229  0000               _CLK_GetClockFreq:
2231  0000 5209          	subw	sp,#9
2232       00000009      OFST:	set	9
2235                     ; 582     uint32_t clockfrequency = 0;
2237                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2239                     ; 584     uint8_t tmp = 0, presc = 0;
2243                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2245  0002 c650c3        	ld	a,20675
2246  0005 6b09          	ld	(OFST+0,sp),a
2247                     ; 589     if (clocksource == CLK_SOURCE_HSI)
2249  0007 a1e1          	cp	a,#225
2250  0009 2634          	jrne	L1401
2251                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2253  000b c650c6        	ld	a,20678
2254  000e a418          	and	a,#24
2255  0010 44            	srl	a
2256  0011 44            	srl	a
2257  0012 44            	srl	a
2258                     ; 592         tmp = (uint8_t)(tmp >> 3);
2260                     ; 593         presc = HSIDivFactor[tmp];
2262  0013 5f            	clrw	x
2263  0014 97            	ld	xl,a
2264  0015 d60000        	ld	a,(_HSIDivFactor,x)
2265  0018 6b09          	ld	(OFST+0,sp),a
2266                     ; 594         clockfrequency = HSI_VALUE / presc;
2268  001a b703          	ld	c_lreg+3,a
2269  001c 3f02          	clr	c_lreg+2
2270  001e 3f01          	clr	c_lreg+1
2271  0020 3f00          	clr	c_lreg
2272  0022 96            	ldw	x,sp
2273  0023 5c            	incw	x
2274  0024 cd0000        	call	c_rtol
2276  0027 ae2400        	ldw	x,#9216
2277  002a bf02          	ldw	c_lreg+2,x
2278  002c ae00f4        	ldw	x,#244
2279  002f bf00          	ldw	c_lreg,x
2280  0031 96            	ldw	x,sp
2281  0032 5c            	incw	x
2282  0033 cd0000        	call	c_ludv
2284  0036 96            	ldw	x,sp
2285  0037 1c0005        	addw	x,#OFST-4
2286  003a cd0000        	call	c_rtol
2289  003d 2018          	jra	L3401
2290  003f               L1401:
2291                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
2293  003f a1d2          	cp	a,#210
2294  0041 260a          	jrne	L5401
2295                     ; 598         clockfrequency = LSI_VALUE;
2297  0043 aef400        	ldw	x,#62464
2298  0046 1f07          	ldw	(OFST-2,sp),x
2299  0048 ae0001        	ldw	x,#1
2301  004b 2008          	jp	LC008
2302  004d               L5401:
2303                     ; 602         clockfrequency = HSE_VALUE;
2305  004d ae3600        	ldw	x,#13824
2306  0050 1f07          	ldw	(OFST-2,sp),x
2307  0052 ae016e        	ldw	x,#366
2308  0055               LC008:
2309  0055 1f05          	ldw	(OFST-4,sp),x
2310  0057               L3401:
2311                     ; 605     return((uint32_t)clockfrequency);
2313  0057 96            	ldw	x,sp
2314  0058 1c0005        	addw	x,#OFST-4
2315  005b cd0000        	call	c_ltor
2319  005e 5b09          	addw	sp,#9
2320  0060 81            	ret	
2420                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2420                     ; 617 {
2421                     .text:	section	.text,new
2422  0000               _CLK_AdjustHSICalibrationValue:
2424  0000 88            	push	a
2425       00000000      OFST:	set	0
2428                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2430  0001 4d            	tnz	a
2431  0002 272a          	jreq	L623
2432  0004 a101          	cp	a,#1
2433  0006 2726          	jreq	L623
2434  0008 a102          	cp	a,#2
2435  000a 2722          	jreq	L623
2436  000c a103          	cp	a,#3
2437  000e 271e          	jreq	L623
2438  0010 a104          	cp	a,#4
2439  0012 271a          	jreq	L623
2440  0014 a105          	cp	a,#5
2441  0016 2716          	jreq	L623
2442  0018 a106          	cp	a,#6
2443  001a 2712          	jreq	L623
2444  001c a107          	cp	a,#7
2445  001e 270e          	jreq	L623
2446  0020 ae026c        	ldw	x,#620
2447  0023 89            	pushw	x
2448  0024 5f            	clrw	x
2449  0025 89            	pushw	x
2450  0026 ae000c        	ldw	x,#L75
2451  0029 cd0000        	call	_assert_failed
2453  002c 5b04          	addw	sp,#4
2454  002e               L623:
2455                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2457  002e c650cc        	ld	a,20684
2458  0031 a4f8          	and	a,#248
2459  0033 1a01          	or	a,(OFST+1,sp)
2460  0035 c750cc        	ld	20684,a
2461                     ; 625 }
2464  0038 84            	pop	a
2465  0039 81            	ret	
2489                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2489                     ; 637 {
2490                     .text:	section	.text,new
2491  0000               _CLK_SYSCLKEmergencyClear:
2495                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2497  0000 721150c5      	bres	20677,#0
2498                     ; 639 }
2501  0004 81            	ret	
2651                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2651                     ; 649 {
2652                     .text:	section	.text,new
2653  0000               _CLK_GetFlagStatus:
2655  0000 89            	pushw	x
2656  0001 5203          	subw	sp,#3
2657       00000003      OFST:	set	3
2660                     ; 651     uint16_t statusreg = 0;
2662                     ; 652     uint8_t tmpreg = 0;
2664                     ; 653     FlagStatus bitstatus = RESET;
2666                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2668  0003 a30110        	cpw	x,#272
2669  0006 2736          	jreq	L243
2670  0008 a30102        	cpw	x,#258
2671  000b 2731          	jreq	L243
2672  000d a30202        	cpw	x,#514
2673  0010 272c          	jreq	L243
2674  0012 a30308        	cpw	x,#776
2675  0015 2727          	jreq	L243
2676  0017 a30301        	cpw	x,#769
2677  001a 2722          	jreq	L243
2678  001c a30408        	cpw	x,#1032
2679  001f 271d          	jreq	L243
2680  0021 a30402        	cpw	x,#1026
2681  0024 2718          	jreq	L243
2682  0026 a30504        	cpw	x,#1284
2683  0029 2713          	jreq	L243
2684  002b a30502        	cpw	x,#1282
2685  002e 270e          	jreq	L243
2686  0030 ae0290        	ldw	x,#656
2687  0033 89            	pushw	x
2688  0034 5f            	clrw	x
2689  0035 89            	pushw	x
2690  0036 ae000c        	ldw	x,#L75
2691  0039 cd0000        	call	_assert_failed
2693  003c 5b04          	addw	sp,#4
2694  003e               L243:
2695                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2697  003e 7b04          	ld	a,(OFST+1,sp)
2698  0040 97            	ld	xl,a
2699  0041 4f            	clr	a
2700  0042 02            	rlwa	x,a
2701  0043 1f01          	ldw	(OFST-2,sp),x
2702                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2704  0045 a30100        	cpw	x,#256
2705  0048 2605          	jrne	L7021
2706                     ; 664         tmpreg = CLK->ICKR;
2708  004a c650c0        	ld	a,20672
2710  004d 2021          	jra	L1121
2711  004f               L7021:
2712                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2714  004f a30200        	cpw	x,#512
2715  0052 2605          	jrne	L3121
2716                     ; 668         tmpreg = CLK->ECKR;
2718  0054 c650c1        	ld	a,20673
2720  0057 2017          	jra	L1121
2721  0059               L3121:
2722                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2724  0059 a30300        	cpw	x,#768
2725  005c 2605          	jrne	L7121
2726                     ; 672         tmpreg = CLK->SWCR;
2728  005e c650c5        	ld	a,20677
2730  0061 200d          	jra	L1121
2731  0063               L7121:
2732                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2734  0063 a30400        	cpw	x,#1024
2735  0066 2605          	jrne	L3221
2736                     ; 676         tmpreg = CLK->CSSR;
2738  0068 c650c8        	ld	a,20680
2740  006b 2003          	jra	L1121
2741  006d               L3221:
2742                     ; 680         tmpreg = CLK->CCOR;
2744  006d c650c9        	ld	a,20681
2745  0070               L1121:
2746  0070 6b03          	ld	(OFST+0,sp),a
2747                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2749  0072 7b05          	ld	a,(OFST+2,sp)
2750  0074 1503          	bcp	a,(OFST+0,sp)
2751  0076 2704          	jreq	L7221
2752                     ; 685         bitstatus = SET;
2754  0078 a601          	ld	a,#1
2756  007a 2001          	jra	L1321
2757  007c               L7221:
2758                     ; 689         bitstatus = RESET;
2760  007c 4f            	clr	a
2761  007d               L1321:
2762                     ; 693     return((FlagStatus)bitstatus);
2766  007d 5b05          	addw	sp,#5
2767  007f 81            	ret	
2814                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2814                     ; 704 {
2815                     .text:	section	.text,new
2816  0000               _CLK_GetITStatus:
2818  0000 88            	push	a
2819  0001 88            	push	a
2820       00000001      OFST:	set	1
2823                     ; 706     ITStatus bitstatus = RESET;
2825                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
2827  0002 a10c          	cp	a,#12
2828  0004 2712          	jreq	L453
2829  0006 a11c          	cp	a,#28
2830  0008 270e          	jreq	L453
2831  000a ae02c5        	ldw	x,#709
2832  000d 89            	pushw	x
2833  000e 5f            	clrw	x
2834  000f 89            	pushw	x
2835  0010 ae000c        	ldw	x,#L75
2836  0013 cd0000        	call	_assert_failed
2838  0016 5b04          	addw	sp,#4
2839  0018               L453:
2840                     ; 711     if (CLK_IT == CLK_IT_SWIF)
2842  0018 7b02          	ld	a,(OFST+1,sp)
2843  001a a11c          	cp	a,#28
2844  001c 260b          	jrne	L5521
2845                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2847  001e c650c5        	ld	a,20677
2848  0021 1402          	and	a,(OFST+1,sp)
2849  0023 a10c          	cp	a,#12
2850  0025 260f          	jrne	L5621
2851                     ; 716             bitstatus = SET;
2853  0027 2009          	jp	LC010
2854                     ; 720             bitstatus = RESET;
2855  0029               L5521:
2856                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2858  0029 c650c8        	ld	a,20680
2859  002c 1402          	and	a,(OFST+1,sp)
2860  002e a10c          	cp	a,#12
2861  0030 2604          	jrne	L5621
2862                     ; 728             bitstatus = SET;
2864  0032               LC010:
2866  0032 a601          	ld	a,#1
2868  0034 2001          	jra	L3621
2869  0036               L5621:
2870                     ; 732             bitstatus = RESET;
2873  0036 4f            	clr	a
2874  0037               L3621:
2875                     ; 737     return bitstatus;
2879  0037 85            	popw	x
2880  0038 81            	ret	
2917                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2917                     ; 748 {
2918                     .text:	section	.text,new
2919  0000               _CLK_ClearITPendingBit:
2921  0000 88            	push	a
2922       00000000      OFST:	set	0
2925                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
2927  0001 a10c          	cp	a,#12
2928  0003 2712          	jreq	L663
2929  0005 a11c          	cp	a,#28
2930  0007 270e          	jreq	L663
2931  0009 ae02ef        	ldw	x,#751
2932  000c 89            	pushw	x
2933  000d 5f            	clrw	x
2934  000e 89            	pushw	x
2935  000f ae000c        	ldw	x,#L75
2936  0012 cd0000        	call	_assert_failed
2938  0015 5b04          	addw	sp,#4
2939  0017               L663:
2940                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2942  0017 7b01          	ld	a,(OFST+1,sp)
2943  0019 a10c          	cp	a,#12
2944  001b 2606          	jrne	L7031
2945                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2947  001d 721750c8      	bres	20680,#3
2949  0021 2004          	jra	L1131
2950  0023               L7031:
2951                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2953  0023 721750c5      	bres	20677,#3
2954  0027               L1131:
2955                     ; 764 }
2958  0027 84            	pop	a
2959  0028 81            	ret	
2994                     	xdef	_CLKPrescTable
2995                     	xdef	_HSIDivFactor
2996                     	xdef	_CLK_ClearITPendingBit
2997                     	xdef	_CLK_GetITStatus
2998                     	xdef	_CLK_GetFlagStatus
2999                     	xdef	_CLK_GetSYSCLKSource
3000                     	xdef	_CLK_GetClockFreq
3001                     	xdef	_CLK_AdjustHSICalibrationValue
3002                     	xdef	_CLK_SYSCLKEmergencyClear
3003                     	xdef	_CLK_ClockSecuritySystemEnable
3004                     	xdef	_CLK_SWIMConfig
3005                     	xdef	_CLK_SYSCLKConfig
3006                     	xdef	_CLK_ITConfig
3007                     	xdef	_CLK_CCOConfig
3008                     	xdef	_CLK_HSIPrescalerConfig
3009                     	xdef	_CLK_ClockSwitchConfig
3010                     	xdef	_CLK_PeripheralClockConfig
3011                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3012                     	xdef	_CLK_FastHaltWakeUpCmd
3013                     	xdef	_CLK_ClockSwitchCmd
3014                     	xdef	_CLK_CCOCmd
3015                     	xdef	_CLK_LSICmd
3016                     	xdef	_CLK_HSICmd
3017                     	xdef	_CLK_HSECmd
3018                     	xdef	_CLK_DeInit
3019                     	xref	_assert_failed
3020                     	switch	.const
3021  000c               L75:
3022  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3023  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3024  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3025  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3026                     	xref.b	c_lreg
3027                     	xref.b	c_x
3047                     	xref	c_ltor
3048                     	xref	c_ludv
3049                     	xref	c_rtol
3050                     	end
