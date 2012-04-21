   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 44 void SPI_DeInit(void)
  50                     ; 45 {
  52                     .text:	section	.text,new
  53  0000               _SPI_DeInit:
  57                     ; 46     SPI->CR1    = SPI_CR1_RESET_VALUE;
  59  0000 725f5200      	clr	20992
  60                     ; 47     SPI->CR2    = SPI_CR2_RESET_VALUE;
  62  0004 725f5201      	clr	20993
  63                     ; 48     SPI->ICR    = SPI_ICR_RESET_VALUE;
  65  0008 725f5202      	clr	20994
  66                     ; 49     SPI->SR     = SPI_SR_RESET_VALUE;
  68  000c 35025203      	mov	20995,#2
  69                     ; 50     SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  71  0010 35075205      	mov	20997,#7
  72                     ; 51 }
  75  0014 81            	ret	
 390                     ; 72 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 390                     ; 73 {
 391                     .text:	section	.text,new
 392  0000               _SPI_Init:
 394  0000 89            	pushw	x
 395  0001 88            	push	a
 396       00000001      OFST:	set	1
 399                     ; 75     assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 401  0002 9e            	ld	a,xh
 402  0003 4d            	tnz	a
 403  0004 270b          	jreq	L41
 404  0006 9e            	ld	a,xh
 405  0007 a180          	cp	a,#128
 406  0009 2706          	jreq	L41
 407  000b ae004b        	ldw	x,#75
 408  000e cd00c2        	call	LC001
 409  0011               L41:
 410                     ; 76     assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 412  0011 7b03          	ld	a,(OFST+2,sp)
 413  0013 2722          	jreq	L42
 414  0015 a108          	cp	a,#8
 415  0017 271e          	jreq	L42
 416  0019 a110          	cp	a,#16
 417  001b 271a          	jreq	L42
 418  001d a118          	cp	a,#24
 419  001f 2716          	jreq	L42
 420  0021 a120          	cp	a,#32
 421  0023 2712          	jreq	L42
 422  0025 a128          	cp	a,#40
 423  0027 270e          	jreq	L42
 424  0029 a130          	cp	a,#48
 425  002b 270a          	jreq	L42
 426  002d a138          	cp	a,#56
 427  002f 2706          	jreq	L42
 428  0031 ae004c        	ldw	x,#76
 429  0034 cd00c2        	call	LC001
 430  0037               L42:
 431                     ; 77     assert_param(IS_SPI_MODE_OK(Mode));
 433  0037 7b06          	ld	a,(OFST+5,sp)
 434  0039 a104          	cp	a,#4
 435  003b 2709          	jreq	L43
 436  003d 7b06          	ld	a,(OFST+5,sp)
 437  003f 2705          	jreq	L43
 438  0041 ae004d        	ldw	x,#77
 439  0044 ad7c          	call	LC001
 440  0046               L43:
 441                     ; 78     assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 443  0046 7b07          	ld	a,(OFST+6,sp)
 444  0048 2709          	jreq	L44
 445  004a a102          	cp	a,#2
 446  004c 2705          	jreq	L44
 447  004e ae004e        	ldw	x,#78
 448  0051 ad6f          	call	LC001
 449  0053               L44:
 450                     ; 79     assert_param(IS_SPI_PHASE_OK(ClockPhase));
 452  0053 7b08          	ld	a,(OFST+7,sp)
 453  0055 2708          	jreq	L45
 454  0057 4a            	dec	a
 455  0058 2705          	jreq	L45
 456  005a ae004f        	ldw	x,#79
 457  005d ad63          	call	LC001
 458  005f               L45:
 459                     ; 80     assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 461  005f 7b09          	ld	a,(OFST+8,sp)
 462  0061 2711          	jreq	L46
 463  0063 a104          	cp	a,#4
 464  0065 270d          	jreq	L46
 465  0067 a180          	cp	a,#128
 466  0069 2709          	jreq	L46
 467  006b a1c0          	cp	a,#192
 468  006d 2705          	jreq	L46
 469  006f ae0050        	ldw	x,#80
 470  0072 ad4e          	call	LC001
 471  0074               L46:
 472                     ; 81     assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 474  0074 7b0a          	ld	a,(OFST+9,sp)
 475  0076 a102          	cp	a,#2
 476  0078 2709          	jreq	L47
 477  007a 7b0a          	ld	a,(OFST+9,sp)
 478  007c 2705          	jreq	L47
 479  007e ae0051        	ldw	x,#81
 480  0081 ad3f          	call	LC001
 481  0083               L47:
 482                     ; 82     assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 484  0083 7b0b          	ld	a,(OFST+10,sp)
 485  0085 2605          	jrne	L201
 486  0087 ae0052        	ldw	x,#82
 487  008a ad36          	call	LC001
 488  008c               L201:
 489                     ; 85     SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 489                     ; 86                     (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 491  008c 7b07          	ld	a,(OFST+6,sp)
 492  008e 1a08          	or	a,(OFST+7,sp)
 493  0090 6b01          	ld	(OFST+0,sp),a
 494  0092 7b02          	ld	a,(OFST+1,sp)
 495  0094 1a03          	or	a,(OFST+2,sp)
 496  0096 1a01          	or	a,(OFST+0,sp)
 497  0098 c75200        	ld	20992,a
 498                     ; 89     SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 500  009b 7b09          	ld	a,(OFST+8,sp)
 501  009d 1a0a          	or	a,(OFST+9,sp)
 502  009f c75201        	ld	20993,a
 503                     ; 91     if (Mode == SPI_MODE_MASTER)
 505  00a2 7b06          	ld	a,(OFST+5,sp)
 506  00a4 a104          	cp	a,#4
 507  00a6 2606          	jrne	L302
 508                     ; 93         SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 510  00a8 72105201      	bset	20993,#0
 512  00ac 2004          	jra	L502
 513  00ae               L302:
 514                     ; 97         SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 516  00ae 72115201      	bres	20993,#0
 517  00b2               L502:
 518                     ; 101     SPI->CR1 |= (uint8_t)(Mode);
 520  00b2 c65200        	ld	a,20992
 521  00b5 1a06          	or	a,(OFST+5,sp)
 522  00b7 c75200        	ld	20992,a
 523                     ; 104     SPI->CRCPR = (uint8_t)CRCPolynomial;
 525  00ba 7b0b          	ld	a,(OFST+10,sp)
 526  00bc c75205        	ld	20997,a
 527                     ; 105 }
 530  00bf 5b03          	addw	sp,#3
 531  00c1 81            	ret	
 532  00c2               LC001:
 533  00c2 89            	pushw	x
 534  00c3 5f            	clrw	x
 535  00c4 89            	pushw	x
 536  00c5 ae0000        	ldw	x,#L102
 537  00c8 cd0000        	call	_assert_failed
 539  00cb 5b04          	addw	sp,#4
 540  00cd 81            	ret	
 596                     ; 113 void SPI_Cmd(FunctionalState NewState)
 596                     ; 114 {
 597                     .text:	section	.text,new
 598  0000               _SPI_Cmd:
 600  0000 88            	push	a
 601       00000000      OFST:	set	0
 604                     ; 116     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 606  0001 4d            	tnz	a
 607  0002 2711          	jreq	L411
 608  0004 4a            	dec	a
 609  0005 270e          	jreq	L411
 610  0007 ae0074        	ldw	x,#116
 611  000a 89            	pushw	x
 612  000b 5f            	clrw	x
 613  000c 89            	pushw	x
 614  000d ae0000        	ldw	x,#L102
 615  0010 cd0000        	call	_assert_failed
 617  0013 5b04          	addw	sp,#4
 618  0015               L411:
 619                     ; 118     if (NewState != DISABLE)
 621  0015 7b01          	ld	a,(OFST+1,sp)
 622  0017 2706          	jreq	L532
 623                     ; 120         SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 625  0019 721c5200      	bset	20992,#6
 627  001d 2004          	jra	L732
 628  001f               L532:
 629                     ; 124         SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 631  001f 721d5200      	bres	20992,#6
 632  0023               L732:
 633                     ; 126 }
 636  0023 84            	pop	a
 637  0024 81            	ret	
 745                     ; 135 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 745                     ; 136 {
 746                     .text:	section	.text,new
 747  0000               _SPI_ITConfig:
 749  0000 89            	pushw	x
 750  0001 88            	push	a
 751       00000001      OFST:	set	1
 754                     ; 137     uint8_t itpos = 0;
 756                     ; 139     assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 758  0002 9e            	ld	a,xh
 759  0003 a117          	cp	a,#23
 760  0005 2714          	jreq	L621
 761  0007 9e            	ld	a,xh
 762  0008 a106          	cp	a,#6
 763  000a 270f          	jreq	L621
 764  000c 9e            	ld	a,xh
 765  000d a105          	cp	a,#5
 766  000f 270a          	jreq	L621
 767  0011 9e            	ld	a,xh
 768  0012 a134          	cp	a,#52
 769  0014 2705          	jreq	L621
 770  0016 ae008b        	ldw	x,#139
 771  0019 ad32          	call	LC002
 772  001b               L621:
 773                     ; 140     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 775  001b 7b03          	ld	a,(OFST+2,sp)
 776  001d 2708          	jreq	L631
 777  001f 4a            	dec	a
 778  0020 2705          	jreq	L631
 779  0022 ae008c        	ldw	x,#140
 780  0025 ad26          	call	LC002
 781  0027               L631:
 782                     ; 143     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 784  0027 7b02          	ld	a,(OFST+1,sp)
 785  0029 a40f          	and	a,#15
 786  002b 5f            	clrw	x
 787  002c 97            	ld	xl,a
 788  002d a601          	ld	a,#1
 789  002f 5d            	tnzw	x
 790  0030 2704          	jreq	L241
 791  0032               L441:
 792  0032 48            	sll	a
 793  0033 5a            	decw	x
 794  0034 26fc          	jrne	L441
 795  0036               L241:
 796  0036 6b01          	ld	(OFST+0,sp),a
 797                     ; 145     if (NewState != DISABLE)
 799  0038 0d03          	tnz	(OFST+2,sp)
 800  003a 2707          	jreq	L703
 801                     ; 147         SPI->ICR |= itpos; /* Enable interrupt*/
 803  003c c65202        	ld	a,20994
 804  003f 1a01          	or	a,(OFST+0,sp)
 806  0041 2004          	jra	L113
 807  0043               L703:
 808                     ; 151         SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 810  0043 43            	cpl	a
 811  0044 c45202        	and	a,20994
 812  0047               L113:
 813  0047 c75202        	ld	20994,a
 814                     ; 153 }
 817  004a 5b03          	addw	sp,#3
 818  004c 81            	ret	
 819  004d               LC002:
 820  004d 89            	pushw	x
 821  004e 5f            	clrw	x
 822  004f 89            	pushw	x
 823  0050 ae0000        	ldw	x,#L102
 824  0053 cd0000        	call	_assert_failed
 826  0056 5b04          	addw	sp,#4
 827  0058 81            	ret	
 859                     ; 159 void SPI_SendData(uint8_t Data)
 859                     ; 160 {
 860                     .text:	section	.text,new
 861  0000               _SPI_SendData:
 865                     ; 161     SPI->DR = Data; /* Write in the DR register the data to be sent*/
 867  0000 c75204        	ld	20996,a
 868                     ; 162 }
 871  0003 81            	ret	
 894                     ; 169 uint8_t SPI_ReceiveData(void)
 894                     ; 170 {
 895                     .text:	section	.text,new
 896  0000               _SPI_ReceiveData:
 900                     ; 171     return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 902  0000 c65204        	ld	a,20996
 905  0003 81            	ret	
 942                     ; 180 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 942                     ; 181 {
 943                     .text:	section	.text,new
 944  0000               _SPI_NSSInternalSoftwareCmd:
 946  0000 88            	push	a
 947       00000000      OFST:	set	0
 950                     ; 183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 952  0001 4d            	tnz	a
 953  0002 2711          	jreq	L061
 954  0004 4a            	dec	a
 955  0005 270e          	jreq	L061
 956  0007 ae00b7        	ldw	x,#183
 957  000a 89            	pushw	x
 958  000b 5f            	clrw	x
 959  000c 89            	pushw	x
 960  000d ae0000        	ldw	x,#L102
 961  0010 cd0000        	call	_assert_failed
 963  0013 5b04          	addw	sp,#4
 964  0015               L061:
 965                     ; 185     if (NewState != DISABLE)
 967  0015 7b01          	ld	a,(OFST+1,sp)
 968  0017 2706          	jreq	L553
 969                     ; 187         SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 971  0019 72105201      	bset	20993,#0
 973  001d 2004          	jra	L753
 974  001f               L553:
 975                     ; 191         SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 977  001f 72115201      	bres	20993,#0
 978  0023               L753:
 979                     ; 193 }
 982  0023 84            	pop	a
 983  0024 81            	ret	
1006                     ; 200 void SPI_TransmitCRC(void)
1006                     ; 201 {
1007                     .text:	section	.text,new
1008  0000               _SPI_TransmitCRC:
1012                     ; 202     SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1014  0000 72185201      	bset	20993,#4
1015                     ; 203 }
1018  0004 81            	ret	
1055                     ; 211 void SPI_CalculateCRCCmd(FunctionalState NewState)
1055                     ; 212 {
1056                     .text:	section	.text,new
1057  0000               _SPI_CalculateCRCCmd:
1059  0000 88            	push	a
1060       00000000      OFST:	set	0
1063                     ; 214     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1065  0001 4d            	tnz	a
1066  0002 2711          	jreq	L471
1067  0004 4a            	dec	a
1068  0005 270e          	jreq	L471
1069  0007 ae00d6        	ldw	x,#214
1070  000a 89            	pushw	x
1071  000b 5f            	clrw	x
1072  000c 89            	pushw	x
1073  000d ae0000        	ldw	x,#L102
1074  0010 cd0000        	call	_assert_failed
1076  0013 5b04          	addw	sp,#4
1077  0015               L471:
1078                     ; 216     if (NewState != DISABLE)
1080  0015 7b01          	ld	a,(OFST+1,sp)
1081  0017 2706          	jreq	L704
1082                     ; 218         SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1084  0019 721a5201      	bset	20993,#5
1086  001d 2004          	jra	L114
1087  001f               L704:
1088                     ; 222         SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1090  001f 721b5201      	bres	20993,#5
1091  0023               L114:
1092                     ; 224 }
1095  0023 84            	pop	a
1096  0024 81            	ret	
1159                     ; 231 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1159                     ; 232 {
1160                     .text:	section	.text,new
1161  0000               _SPI_GetCRC:
1163  0000 88            	push	a
1164  0001 88            	push	a
1165       00000001      OFST:	set	1
1168                     ; 233     uint8_t crcreg = 0;
1170                     ; 236     assert_param(IS_SPI_CRC_OK(SPI_CRC));
1172  0002 a101          	cp	a,#1
1173  0004 2711          	jreq	L602
1174  0006 4d            	tnz	a
1175  0007 270e          	jreq	L602
1176  0009 ae00ec        	ldw	x,#236
1177  000c 89            	pushw	x
1178  000d 5f            	clrw	x
1179  000e 89            	pushw	x
1180  000f ae0000        	ldw	x,#L102
1181  0012 cd0000        	call	_assert_failed
1183  0015 5b04          	addw	sp,#4
1184  0017               L602:
1185                     ; 238     if (SPI_CRC != SPI_CRC_RX)
1187  0017 7b02          	ld	a,(OFST+1,sp)
1188  0019 2705          	jreq	L344
1189                     ; 240         crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1191  001b c65207        	ld	a,20999
1193  001e 2003          	jra	L544
1194  0020               L344:
1195                     ; 244         crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1197  0020 c65206        	ld	a,20998
1198  0023               L544:
1199                     ; 248     return crcreg;
1203  0023 85            	popw	x
1204  0024 81            	ret	
1229                     ; 256 void SPI_ResetCRC(void)
1229                     ; 257 {
1230                     .text:	section	.text,new
1231  0000               _SPI_ResetCRC:
1235                     ; 260     SPI_CalculateCRCCmd(ENABLE);
1237  0000 a601          	ld	a,#1
1238  0002 cd0000        	call	_SPI_CalculateCRCCmd
1240                     ; 263     SPI_Cmd(ENABLE);
1242  0005 a601          	ld	a,#1
1244                     ; 264 }
1247  0007 cc0000        	jp	_SPI_Cmd
1271                     ; 271 uint8_t SPI_GetCRCPolynomial(void)
1271                     ; 272 {
1272                     .text:	section	.text,new
1273  0000               _SPI_GetCRCPolynomial:
1277                     ; 273     return SPI->CRCPR; /* Return the CRC polynomial register */
1279  0000 c65205        	ld	a,20997
1282  0003 81            	ret	
1339                     ; 281 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1339                     ; 282 {
1340                     .text:	section	.text,new
1341  0000               _SPI_BiDirectionalLineConfig:
1343  0000 88            	push	a
1344       00000000      OFST:	set	0
1347                     ; 284     assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1349  0001 4d            	tnz	a
1350  0002 2711          	jreq	L032
1351  0004 4a            	dec	a
1352  0005 270e          	jreq	L032
1353  0007 ae011c        	ldw	x,#284
1354  000a 89            	pushw	x
1355  000b 5f            	clrw	x
1356  000c 89            	pushw	x
1357  000d ae0000        	ldw	x,#L102
1358  0010 cd0000        	call	_assert_failed
1360  0013 5b04          	addw	sp,#4
1361  0015               L032:
1362                     ; 286     if (SPI_Direction != SPI_DIRECTION_RX)
1364  0015 7b01          	ld	a,(OFST+1,sp)
1365  0017 2706          	jreq	L515
1366                     ; 288         SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1368  0019 721c5201      	bset	20993,#6
1370  001d 2004          	jra	L715
1371  001f               L515:
1372                     ; 292         SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1374  001f 721d5201      	bres	20993,#6
1375  0023               L715:
1376                     ; 294 }
1379  0023 84            	pop	a
1380  0024 81            	ret	
1502                     ; 304 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1502                     ; 305 {
1503                     .text:	section	.text,new
1504  0000               _SPI_GetFlagStatus:
1506  0000 88            	push	a
1507  0001 88            	push	a
1508       00000001      OFST:	set	1
1511                     ; 306     FlagStatus status = RESET;
1513                     ; 308     assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1515  0002 a140          	cp	a,#64
1516  0004 2726          	jreq	L242
1517  0006 a120          	cp	a,#32
1518  0008 2722          	jreq	L242
1519  000a a110          	cp	a,#16
1520  000c 271e          	jreq	L242
1521  000e a108          	cp	a,#8
1522  0010 271a          	jreq	L242
1523  0012 a102          	cp	a,#2
1524  0014 2716          	jreq	L242
1525  0016 a101          	cp	a,#1
1526  0018 2712          	jreq	L242
1527  001a a180          	cp	a,#128
1528  001c 270e          	jreq	L242
1529  001e ae0134        	ldw	x,#308
1530  0021 89            	pushw	x
1531  0022 5f            	clrw	x
1532  0023 89            	pushw	x
1533  0024 ae0000        	ldw	x,#L102
1534  0027 cd0000        	call	_assert_failed
1536  002a 5b04          	addw	sp,#4
1537  002c               L242:
1538                     ; 311     if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1540  002c c65203        	ld	a,20995
1541  002f 1502          	bcp	a,(OFST+1,sp)
1542  0031 2704          	jreq	L575
1543                     ; 313         status = SET; /* SPI_FLAG is set */
1545  0033 a601          	ld	a,#1
1547  0035 2001          	jra	L775
1548  0037               L575:
1549                     ; 317         status = RESET; /* SPI_FLAG is reset*/
1551  0037 4f            	clr	a
1552  0038               L775:
1553                     ; 321     return status;
1557  0038 85            	popw	x
1558  0039 81            	ret	
1594                     ; 339 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1594                     ; 340 {
1595                     .text:	section	.text,new
1596  0000               _SPI_ClearFlag:
1598  0000 88            	push	a
1599       00000000      OFST:	set	0
1602                     ; 341     assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1604  0001 a110          	cp	a,#16
1605  0003 2712          	jreq	L452
1606  0005 a108          	cp	a,#8
1607  0007 270e          	jreq	L452
1608  0009 ae0155        	ldw	x,#341
1609  000c 89            	pushw	x
1610  000d 5f            	clrw	x
1611  000e 89            	pushw	x
1612  000f ae0000        	ldw	x,#L102
1613  0012 cd0000        	call	_assert_failed
1615  0015 5b04          	addw	sp,#4
1616  0017               L452:
1617                     ; 343     SPI->SR = (uint8_t)(~SPI_FLAG);
1619  0017 7b01          	ld	a,(OFST+1,sp)
1620  0019 43            	cpl	a
1621  001a c75203        	ld	20995,a
1622                     ; 344 }
1625  001d 84            	pop	a
1626  001e 81            	ret	
1701                     ; 359 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1701                     ; 360 {
1702                     .text:	section	.text,new
1703  0000               _SPI_GetITStatus:
1705  0000 88            	push	a
1706  0001 89            	pushw	x
1707       00000002      OFST:	set	2
1710                     ; 361     ITStatus pendingbitstatus = RESET;
1712                     ; 362     uint8_t itpos = 0;
1714                     ; 363     uint8_t itmask1 = 0;
1716                     ; 364     uint8_t itmask2 = 0;
1718                     ; 365     uint8_t enablestatus = 0;
1720                     ; 366     assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1722  0002 a165          	cp	a,#101
1723  0004 2722          	jreq	L662
1724  0006 a155          	cp	a,#85
1725  0008 271e          	jreq	L662
1726  000a a145          	cp	a,#69
1727  000c 271a          	jreq	L662
1728  000e a134          	cp	a,#52
1729  0010 2716          	jreq	L662
1730  0012 a117          	cp	a,#23
1731  0014 2712          	jreq	L662
1732  0016 a106          	cp	a,#6
1733  0018 270e          	jreq	L662
1734  001a ae016e        	ldw	x,#366
1735  001d 89            	pushw	x
1736  001e 5f            	clrw	x
1737  001f 89            	pushw	x
1738  0020 ae0000        	ldw	x,#L102
1739  0023 cd0000        	call	_assert_failed
1741  0026 5b04          	addw	sp,#4
1742  0028               L662:
1743                     ; 368     itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1745  0028 7b03          	ld	a,(OFST+1,sp)
1746  002a a40f          	and	a,#15
1747  002c 5f            	clrw	x
1748  002d 97            	ld	xl,a
1749  002e a601          	ld	a,#1
1750  0030 5d            	tnzw	x
1751  0031 2704          	jreq	L272
1752  0033               L472:
1753  0033 48            	sll	a
1754  0034 5a            	decw	x
1755  0035 26fc          	jrne	L472
1756  0037               L272:
1757  0037 6b01          	ld	(OFST-1,sp),a
1758                     ; 371     itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1760  0039 7b03          	ld	a,(OFST+1,sp)
1761  003b 4e            	swap	a
1762  003c a40f          	and	a,#15
1763  003e 6b02          	ld	(OFST+0,sp),a
1764                     ; 373     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1766  0040 5f            	clrw	x
1767  0041 97            	ld	xl,a
1768  0042 a601          	ld	a,#1
1769  0044 5d            	tnzw	x
1770  0045 2704          	jreq	L672
1771  0047               L003:
1772  0047 48            	sll	a
1773  0048 5a            	decw	x
1774  0049 26fc          	jrne	L003
1775  004b               L672:
1776                     ; 375     enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1778  004b c45203        	and	a,20995
1779  004e 6b02          	ld	(OFST+0,sp),a
1780                     ; 377     if (((SPI->ICR & itpos) != RESET) && enablestatus)
1782  0050 c65202        	ld	a,20994
1783  0053 1501          	bcp	a,(OFST-1,sp)
1784  0055 2708          	jreq	L156
1786  0057 7b02          	ld	a,(OFST+0,sp)
1787  0059 2704          	jreq	L156
1788                     ; 380         pendingbitstatus = SET;
1790  005b a601          	ld	a,#1
1792  005d 2001          	jra	L356
1793  005f               L156:
1794                     ; 385         pendingbitstatus = RESET;
1796  005f 4f            	clr	a
1797  0060               L356:
1798                     ; 388     return  pendingbitstatus;
1802  0060 5b03          	addw	sp,#3
1803  0062 81            	ret	
1847                     ; 404 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1847                     ; 405 {
1848                     .text:	section	.text,new
1849  0000               _SPI_ClearITPendingBit:
1851  0000 88            	push	a
1852  0001 88            	push	a
1853       00000001      OFST:	set	1
1856                     ; 406     uint8_t itpos = 0;
1858                     ; 407     assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1860  0002 a145          	cp	a,#69
1861  0004 2712          	jreq	L013
1862  0006 a134          	cp	a,#52
1863  0008 270e          	jreq	L013
1864  000a ae0197        	ldw	x,#407
1865  000d 89            	pushw	x
1866  000e 5f            	clrw	x
1867  000f 89            	pushw	x
1868  0010 ae0000        	ldw	x,#L102
1869  0013 cd0000        	call	_assert_failed
1871  0016 5b04          	addw	sp,#4
1872  0018               L013:
1873                     ; 412     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1875  0018 7b02          	ld	a,(OFST+1,sp)
1876  001a 4e            	swap	a
1877  001b a40f          	and	a,#15
1878  001d 5f            	clrw	x
1879  001e 97            	ld	xl,a
1880  001f a601          	ld	a,#1
1881  0021 5d            	tnzw	x
1882  0022 2704          	jreq	L413
1883  0024               L613:
1884  0024 48            	sll	a
1885  0025 5a            	decw	x
1886  0026 26fc          	jrne	L613
1887  0028               L413:
1888                     ; 414     SPI->SR = (uint8_t)(~itpos);
1890  0028 43            	cpl	a
1891  0029 c75203        	ld	20995,a
1892                     ; 416 }
1895  002c 85            	popw	x
1896  002d 81            	ret	
1909                     	xdef	_SPI_ClearITPendingBit
1910                     	xdef	_SPI_GetITStatus
1911                     	xdef	_SPI_ClearFlag
1912                     	xdef	_SPI_GetFlagStatus
1913                     	xdef	_SPI_BiDirectionalLineConfig
1914                     	xdef	_SPI_GetCRCPolynomial
1915                     	xdef	_SPI_ResetCRC
1916                     	xdef	_SPI_GetCRC
1917                     	xdef	_SPI_CalculateCRCCmd
1918                     	xdef	_SPI_TransmitCRC
1919                     	xdef	_SPI_NSSInternalSoftwareCmd
1920                     	xdef	_SPI_ReceiveData
1921                     	xdef	_SPI_SendData
1922                     	xdef	_SPI_ITConfig
1923                     	xdef	_SPI_Cmd
1924                     	xdef	_SPI_Init
1925                     	xdef	_SPI_DeInit
1926                     	xref	_assert_failed
1927                     .const:	section	.text
1928  0000               L102:
1929  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1930  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1931  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1932  0036 5f7370692e63  	dc.b	"_spi.c",0
1952                     	end
