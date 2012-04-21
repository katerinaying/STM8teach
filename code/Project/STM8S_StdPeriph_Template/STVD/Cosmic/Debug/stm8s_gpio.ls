   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
 116                     ; 47 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 116                     ; 48 {
 118                     .text:	section	.text,new
 119  0000               _GPIO_DeInit:
 123                     ; 49     GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 125  0000 7f            	clr	(x)
 126                     ; 50     GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 128  0001 6f02          	clr	(2,x)
 129                     ; 51     GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 131  0003 6f03          	clr	(3,x)
 132                     ; 52     GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 134  0005 6f04          	clr	(4,x)
 135                     ; 53 }
 138  0007 81            	ret	
 379                     ; 65 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 379                     ; 66 {
 380                     .text:	section	.text,new
 381  0000               _GPIO_Init:
 383  0000 89            	pushw	x
 384       00000000      OFST:	set	0
 387                     ; 71     assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 389  0001 7b06          	ld	a,(OFST+6,sp)
 390  0003 2731          	jreq	L41
 391  0005 a140          	cp	a,#64
 392  0007 272d          	jreq	L41
 393  0009 a120          	cp	a,#32
 394  000b 2729          	jreq	L41
 395  000d a160          	cp	a,#96
 396  000f 2725          	jreq	L41
 397  0011 a1a0          	cp	a,#160
 398  0013 2721          	jreq	L41
 399  0015 a1e0          	cp	a,#224
 400  0017 271d          	jreq	L41
 401  0019 a180          	cp	a,#128
 402  001b 2719          	jreq	L41
 403  001d a1c0          	cp	a,#192
 404  001f 2715          	jreq	L41
 405  0021 a1b0          	cp	a,#176
 406  0023 2711          	jreq	L41
 407  0025 a1f0          	cp	a,#240
 408  0027 270d          	jreq	L41
 409  0029 a190          	cp	a,#144
 410  002b 2709          	jreq	L41
 411  002d a1d0          	cp	a,#208
 412  002f 2705          	jreq	L41
 413  0031 ae0047        	ldw	x,#71
 414  0034 ad5d          	call	LC001
 415  0036               L41:
 416                     ; 72     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 418  0036 7b05          	ld	a,(OFST+5,sp)
 419  0038 2607          	jrne	L22
 420  003a ae0048        	ldw	x,#72
 421  003d ad54          	call	LC001
 422  003f 7b05          	ld	a,(OFST+5,sp)
 423  0041               L22:
 424                     ; 75   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 426  0041 1e01          	ldw	x,(OFST+1,sp)
 427  0043 43            	cpl	a
 428  0044 e404          	and	a,(4,x)
 429  0046 e704          	ld	(4,x),a
 430                     ; 81     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 432  0048 7b06          	ld	a,(OFST+6,sp)
 433  004a 2a14          	jrpl	L102
 434                     ; 83         if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 436  004c a510          	bcp	a,#16
 437  004e 2705          	jreq	L302
 438                     ; 85             GPIOx->ODR |= (uint8_t)GPIO_Pin;
 440  0050 f6            	ld	a,(x)
 441  0051 1a05          	or	a,(OFST+5,sp)
 443  0053 2004          	jra	L502
 444  0055               L302:
 445                     ; 89             GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 447  0055 7b05          	ld	a,(OFST+5,sp)
 448  0057 43            	cpl	a
 449  0058 f4            	and	a,(x)
 450  0059               L502:
 451  0059 f7            	ld	(x),a
 452                     ; 92         GPIOx->DDR |= (uint8_t)GPIO_Pin;
 454  005a e602          	ld	a,(2,x)
 455  005c 1a05          	or	a,(OFST+5,sp)
 457  005e 2005          	jra	L702
 458  0060               L102:
 459                     ; 97         GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 461  0060 7b05          	ld	a,(OFST+5,sp)
 462  0062 43            	cpl	a
 463  0063 e402          	and	a,(2,x)
 464  0065               L702:
 465  0065 e702          	ld	(2,x),a
 466                     ; 104     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 468  0067 7b06          	ld	a,(OFST+6,sp)
 469  0069 a540          	bcp	a,#64
 470  006b 2706          	jreq	L112
 471                     ; 106         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 473  006d e603          	ld	a,(3,x)
 474  006f 1a05          	or	a,(OFST+5,sp)
 476  0071 2005          	jra	L312
 477  0073               L112:
 478                     ; 110         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 480  0073 7b05          	ld	a,(OFST+5,sp)
 481  0075 43            	cpl	a
 482  0076 e403          	and	a,(3,x)
 483  0078               L312:
 484  0078 e703          	ld	(3,x),a
 485                     ; 117     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 487  007a 7b06          	ld	a,(OFST+6,sp)
 488  007c a520          	bcp	a,#32
 489  007e 2708          	jreq	L512
 490                     ; 119         GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 492  0080 1e01          	ldw	x,(OFST+1,sp)
 493  0082 e604          	ld	a,(4,x)
 494  0084 1a05          	or	a,(OFST+5,sp)
 496  0086 2007          	jra	L712
 497  0088               L512:
 498                     ; 123         GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 500  0088 1e01          	ldw	x,(OFST+1,sp)
 501  008a 7b05          	ld	a,(OFST+5,sp)
 502  008c 43            	cpl	a
 503  008d e404          	and	a,(4,x)
 504  008f               L712:
 505  008f e704          	ld	(4,x),a
 506                     ; 125 }
 509  0091 85            	popw	x
 510  0092 81            	ret	
 511  0093               LC001:
 512  0093 89            	pushw	x
 513  0094 5f            	clrw	x
 514  0095 89            	pushw	x
 515  0096 ae0000        	ldw	x,#L771
 516  0099 cd0000        	call	_assert_failed
 518  009c 5b04          	addw	sp,#4
 519  009e 81            	ret	
 563                     ; 135 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 563                     ; 136 {
 564                     .text:	section	.text,new
 565  0000               _GPIO_Write:
 567  0000 89            	pushw	x
 568       00000000      OFST:	set	0
 571                     ; 137     GPIOx->ODR = PortVal;
 573  0001 1e01          	ldw	x,(OFST+1,sp)
 574  0003 7b05          	ld	a,(OFST+5,sp)
 575  0005 f7            	ld	(x),a
 576                     ; 138 }
 579  0006 85            	popw	x
 580  0007 81            	ret	
 627                     ; 148 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 627                     ; 149 {
 628                     .text:	section	.text,new
 629  0000               _GPIO_WriteHigh:
 631  0000 89            	pushw	x
 632       00000000      OFST:	set	0
 635                     ; 150     GPIOx->ODR |= (uint8_t)PortPins;
 637  0001 f6            	ld	a,(x)
 638  0002 1a05          	or	a,(OFST+5,sp)
 639  0004 f7            	ld	(x),a
 640                     ; 151 }
 643  0005 85            	popw	x
 644  0006 81            	ret	
 691                     ; 161 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 691                     ; 162 {
 692                     .text:	section	.text,new
 693  0000               _GPIO_WriteLow:
 695  0000 89            	pushw	x
 696       00000000      OFST:	set	0
 699                     ; 163     GPIOx->ODR &= (uint8_t)(~PortPins);
 701  0001 7b05          	ld	a,(OFST+5,sp)
 702  0003 43            	cpl	a
 703  0004 f4            	and	a,(x)
 704  0005 f7            	ld	(x),a
 705                     ; 164 }
 708  0006 85            	popw	x
 709  0007 81            	ret	
 756                     ; 174 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 756                     ; 175 {
 757                     .text:	section	.text,new
 758  0000               _GPIO_WriteReverse:
 760  0000 89            	pushw	x
 761       00000000      OFST:	set	0
 764                     ; 176     GPIOx->ODR ^= (uint8_t)PortPins;
 766  0001 f6            	ld	a,(x)
 767  0002 1805          	xor	a,(OFST+5,sp)
 768  0004 f7            	ld	(x),a
 769                     ; 177 }
 772  0005 85            	popw	x
 773  0006 81            	ret	
 811                     ; 185 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 811                     ; 186 {
 812                     .text:	section	.text,new
 813  0000               _GPIO_ReadOutputData:
 817                     ; 187     return ((uint8_t)GPIOx->ODR);
 819  0000 f6            	ld	a,(x)
 822  0001 81            	ret	
 859                     ; 196 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 859                     ; 197 {
 860                     .text:	section	.text,new
 861  0000               _GPIO_ReadInputData:
 865                     ; 198     return ((uint8_t)GPIOx->IDR);
 867  0000 e601          	ld	a,(1,x)
 870  0002 81            	ret	
 938                     ; 207 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 938                     ; 208 {
 939                     .text:	section	.text,new
 940  0000               _GPIO_ReadInputPin:
 942  0000 89            	pushw	x
 943       00000000      OFST:	set	0
 946                     ; 209     return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 948  0001 e601          	ld	a,(1,x)
 949  0003 1405          	and	a,(OFST+5,sp)
 952  0005 85            	popw	x
 953  0006 81            	ret	
1032                     ; 219 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1032                     ; 220 {
1033                     .text:	section	.text,new
1034  0000               _GPIO_ExternalPullUpConfig:
1036  0000 89            	pushw	x
1037       00000000      OFST:	set	0
1040                     ; 222     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1042  0001 7b05          	ld	a,(OFST+5,sp)
1043  0003 2605          	jrne	L05
1044  0005 ae00de        	ldw	x,#222
1045  0008 ad23          	call	LC002
1046  000a               L05:
1047                     ; 223     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1049  000a 7b06          	ld	a,(OFST+6,sp)
1050  000c 2708          	jreq	L06
1051  000e 4a            	dec	a
1052  000f 2705          	jreq	L06
1053  0011 ae00df        	ldw	x,#223
1054  0014 ad17          	call	LC002
1055  0016               L06:
1056                     ; 225     if (NewState != DISABLE) /* External Pull-Up Set*/
1058  0016 7b06          	ld	a,(OFST+6,sp)
1059  0018 2708          	jreq	L374
1060                     ; 227         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1062  001a 1e01          	ldw	x,(OFST+1,sp)
1063  001c e603          	ld	a,(3,x)
1064  001e 1a05          	or	a,(OFST+5,sp)
1066  0020 2007          	jra	L574
1067  0022               L374:
1068                     ; 230         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1070  0022 1e01          	ldw	x,(OFST+1,sp)
1071  0024 7b05          	ld	a,(OFST+5,sp)
1072  0026 43            	cpl	a
1073  0027 e403          	and	a,(3,x)
1074  0029               L574:
1075  0029 e703          	ld	(3,x),a
1076                     ; 232 }
1079  002b 85            	popw	x
1080  002c 81            	ret	
1081  002d               LC002:
1082  002d 89            	pushw	x
1083  002e 5f            	clrw	x
1084  002f 89            	pushw	x
1085  0030 ae0000        	ldw	x,#L771
1086  0033 cd0000        	call	_assert_failed
1088  0036 5b04          	addw	sp,#4
1089  0038 81            	ret	
1102                     	xdef	_GPIO_ExternalPullUpConfig
1103                     	xdef	_GPIO_ReadInputPin
1104                     	xdef	_GPIO_ReadOutputData
1105                     	xdef	_GPIO_ReadInputData
1106                     	xdef	_GPIO_WriteReverse
1107                     	xdef	_GPIO_WriteLow
1108                     	xdef	_GPIO_WriteHigh
1109                     	xdef	_GPIO_Write
1110                     	xdef	_GPIO_Init
1111                     	xdef	_GPIO_DeInit
1112                     	xref	_assert_failed
1113                     .const:	section	.text
1114  0000               L771:
1115  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1116  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1117  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1118  0036 5f6770696f2e  	dc.b	"_gpio.c",0
1138                     	end
