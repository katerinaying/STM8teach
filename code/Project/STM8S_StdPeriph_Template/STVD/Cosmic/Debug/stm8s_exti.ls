   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 47 void EXTI_DeInit(void)
  50                     ; 48 {
  52                     .text:	section	.text,new
  53  0000               _EXTI_DeInit:
  57                     ; 49     EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  59  0000 725f50a0      	clr	20640
  60                     ; 50     EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  62  0004 725f50a1      	clr	20641
  63                     ; 51 }
  66  0008 81            	ret	
 192                     ; 64 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 192                     ; 65 {
 193                     .text:	section	.text,new
 194  0000               _EXTI_SetExtIntSensitivity:
 196  0000 89            	pushw	x
 197       00000000      OFST:	set	0
 200                     ; 68     assert_param(IS_EXTI_PORT_OK(Port));
 202  0001 9e            	ld	a,xh
 203  0002 4d            	tnz	a
 204  0003 2718          	jreq	L41
 205  0005 9e            	ld	a,xh
 206  0006 4a            	dec	a
 207  0007 2714          	jreq	L41
 208  0009 9e            	ld	a,xh
 209  000a a102          	cp	a,#2
 210  000c 270f          	jreq	L41
 211  000e 9e            	ld	a,xh
 212  000f a103          	cp	a,#3
 213  0011 270a          	jreq	L41
 214  0013 9e            	ld	a,xh
 215  0014 a104          	cp	a,#4
 216  0016 2705          	jreq	L41
 217  0018 ae0044        	ldw	x,#68
 218  001b ad7c          	call	LC004
 219  001d               L41:
 220                     ; 69     assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 222  001d 7b02          	ld	a,(OFST+2,sp)
 223  001f 2711          	jreq	L42
 224  0021 a101          	cp	a,#1
 225  0023 270d          	jreq	L42
 226  0025 a102          	cp	a,#2
 227  0027 2709          	jreq	L42
 228  0029 a103          	cp	a,#3
 229  002b 2705          	jreq	L42
 230  002d ae0045        	ldw	x,#69
 231  0030 ad67          	call	LC004
 232  0032               L42:
 233                     ; 72     switch (Port)
 235  0032 7b01          	ld	a,(OFST+1,sp)
 237                     ; 94     default:
 237                     ; 95         break;
 238  0034 270e          	jreq	L12
 239  0036 4a            	dec	a
 240  0037 271a          	jreq	L32
 241  0039 4a            	dec	a
 242  003a 2725          	jreq	L52
 243  003c 4a            	dec	a
 244  003d 2731          	jreq	L72
 245  003f 4a            	dec	a
 246  0040 2745          	jreq	L13
 247  0042 2053          	jra	L511
 248  0044               L12:
 249                     ; 74     case EXTI_PORT_GPIOA:
 249                     ; 75         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 251  0044 c650a0        	ld	a,20640
 252  0047 a4fc          	and	a,#252
 253  0049 c750a0        	ld	20640,a
 254                     ; 76         EXTI->CR1 |= (uint8_t)(SensitivityValue);
 256  004c c650a0        	ld	a,20640
 257  004f 1a02          	or	a,(OFST+2,sp)
 258                     ; 77         break;
 260  0051 202f          	jp	LC001
 261  0053               L32:
 262                     ; 78     case EXTI_PORT_GPIOB:
 262                     ; 79         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 264  0053 c650a0        	ld	a,20640
 265  0056 a4f3          	and	a,#243
 266  0058 c750a0        	ld	20640,a
 267                     ; 80         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 269  005b 7b02          	ld	a,(OFST+2,sp)
 270  005d 48            	sll	a
 271  005e 48            	sll	a
 272                     ; 81         break;
 274  005f 201e          	jp	LC002
 275  0061               L52:
 276                     ; 82     case EXTI_PORT_GPIOC:
 276                     ; 83         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 278  0061 c650a0        	ld	a,20640
 279  0064 a4cf          	and	a,#207
 280  0066 c750a0        	ld	20640,a
 281                     ; 84         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 283  0069 7b02          	ld	a,(OFST+2,sp)
 284  006b 97            	ld	xl,a
 285  006c a610          	ld	a,#16
 286                     ; 85         break;
 288  006e 200d          	jp	LC003
 289  0070               L72:
 290                     ; 86     case EXTI_PORT_GPIOD:
 290                     ; 87         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 292  0070 c650a0        	ld	a,20640
 293  0073 a43f          	and	a,#63
 294  0075 c750a0        	ld	20640,a
 295                     ; 88         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 297  0078 7b02          	ld	a,(OFST+2,sp)
 298  007a 97            	ld	xl,a
 299  007b a640          	ld	a,#64
 300  007d               LC003:
 301  007d 42            	mul	x,a
 302  007e 9f            	ld	a,xl
 303  007f               LC002:
 304  007f ca50a0        	or	a,20640
 305  0082               LC001:
 306  0082 c750a0        	ld	20640,a
 307                     ; 89         break;
 309  0085 2010          	jra	L511
 310  0087               L13:
 311                     ; 90     case EXTI_PORT_GPIOE:
 311                     ; 91         EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 313  0087 c650a1        	ld	a,20641
 314  008a a4fc          	and	a,#252
 315  008c c750a1        	ld	20641,a
 316                     ; 92         EXTI->CR2 |= (uint8_t)(SensitivityValue);
 318  008f c650a1        	ld	a,20641
 319  0092 1a02          	or	a,(OFST+2,sp)
 320  0094 c750a1        	ld	20641,a
 321                     ; 93         break;
 323                     ; 94     default:
 323                     ; 95         break;
 325  0097               L511:
 326                     ; 97 }
 329  0097 85            	popw	x
 330  0098 81            	ret	
 331  0099               LC004:
 332  0099 89            	pushw	x
 333  009a 5f            	clrw	x
 334  009b 89            	pushw	x
 335  009c ae0000        	ldw	x,#L111
 336  009f cd0000        	call	_assert_failed
 338  00a2 5b04          	addw	sp,#4
 339  00a4 81            	ret	
 398                     ; 106 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 398                     ; 107 {
 399                     .text:	section	.text,new
 400  0000               _EXTI_SetTLISensitivity:
 402  0000 88            	push	a
 403       00000000      OFST:	set	0
 406                     ; 109     assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 408  0001 4d            	tnz	a
 409  0002 2712          	jreq	L63
 410  0004 a104          	cp	a,#4
 411  0006 270e          	jreq	L63
 412  0008 ae006d        	ldw	x,#109
 413  000b 89            	pushw	x
 414  000c 5f            	clrw	x
 415  000d 89            	pushw	x
 416  000e ae0000        	ldw	x,#L111
 417  0011 cd0000        	call	_assert_failed
 419  0014 5b04          	addw	sp,#4
 420  0016               L63:
 421                     ; 112     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 423  0016 721550a1      	bres	20641,#2
 424                     ; 113     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 426  001a c650a1        	ld	a,20641
 427  001d 1a01          	or	a,(OFST+1,sp)
 428  001f c750a1        	ld	20641,a
 429                     ; 114 }
 432  0022 84            	pop	a
 433  0023 81            	ret	
 478                     ; 121 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 478                     ; 122 {
 479                     .text:	section	.text,new
 480  0000               _EXTI_GetExtIntSensitivity:
 482  0000 88            	push	a
 483  0001 88            	push	a
 484       00000001      OFST:	set	1
 487                     ; 123     uint8_t value = 0;
 489  0002 0f01          	clr	(OFST+0,sp)
 490                     ; 126     assert_param(IS_EXTI_PORT_OK(Port));
 492  0004 4d            	tnz	a
 493  0005 271e          	jreq	L05
 494  0007 a101          	cp	a,#1
 495  0009 271a          	jreq	L05
 496  000b a102          	cp	a,#2
 497  000d 2716          	jreq	L05
 498  000f a103          	cp	a,#3
 499  0011 2712          	jreq	L05
 500  0013 a104          	cp	a,#4
 501  0015 270e          	jreq	L05
 502  0017 ae007e        	ldw	x,#126
 503  001a 89            	pushw	x
 504  001b 5f            	clrw	x
 505  001c 89            	pushw	x
 506  001d ae0000        	ldw	x,#L111
 507  0020 cd0000        	call	_assert_failed
 509  0023 5b04          	addw	sp,#4
 510  0025               L05:
 511                     ; 128     switch (Port)
 513  0025 7b02          	ld	a,(OFST+1,sp)
 515                     ; 145     default:
 515                     ; 146         break;
 516  0027 2710          	jreq	L541
 517  0029 4a            	dec	a
 518  002a 2712          	jreq	L741
 519  002c 4a            	dec	a
 520  002d 2718          	jreq	L151
 521  002f 4a            	dec	a
 522  0030 271b          	jreq	L351
 523  0032 4a            	dec	a
 524  0033 2722          	jreq	L551
 525  0035 7b01          	ld	a,(OFST+0,sp)
 526  0037 2023          	jra	LC005
 527  0039               L541:
 528                     ; 130     case EXTI_PORT_GPIOA:
 528                     ; 131         value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 530  0039 c650a0        	ld	a,20640
 531                     ; 132         break;
 533  003c 201c          	jp	LC006
 534  003e               L741:
 535                     ; 133     case EXTI_PORT_GPIOB:
 535                     ; 134         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 537  003e c650a0        	ld	a,20640
 538  0041 a40c          	and	a,#12
 539  0043 44            	srl	a
 540  0044 44            	srl	a
 541                     ; 135         break;
 543  0045 2015          	jp	LC005
 544  0047               L151:
 545                     ; 136     case EXTI_PORT_GPIOC:
 545                     ; 137         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 547  0047 c650a0        	ld	a,20640
 548  004a 4e            	swap	a
 549                     ; 138         break;
 551  004b 200d          	jp	LC006
 552  004d               L351:
 553                     ; 139     case EXTI_PORT_GPIOD:
 553                     ; 140         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 555  004d c650a0        	ld	a,20640
 556  0050 4e            	swap	a
 557  0051 a40c          	and	a,#12
 558  0053 44            	srl	a
 559  0054 44            	srl	a
 560                     ; 141         break;
 562  0055 2003          	jp	LC006
 563  0057               L551:
 564                     ; 142     case EXTI_PORT_GPIOE:
 564                     ; 143         value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 566  0057 c650a1        	ld	a,20641
 567  005a               LC006:
 568  005a a403          	and	a,#3
 569  005c               LC005:
 570                     ; 144         break;
 572                     ; 145     default:
 572                     ; 146         break;
 574                     ; 149     return((EXTI_Sensitivity_TypeDef)value);
 578  005c 85            	popw	x
 579  005d 81            	ret	
 613                     ; 157 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 613                     ; 158 {
 614                     .text:	section	.text,new
 615  0000               _EXTI_GetTLISensitivity:
 617  0000 88            	push	a
 618       00000001      OFST:	set	1
 621                     ; 160     uint8_t value = 0;
 623                     ; 163     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 625  0001 c650a1        	ld	a,20641
 626  0004 a404          	and	a,#4
 627                     ; 165     return((EXTI_TLISensitivity_TypeDef)value);
 631  0006 5b01          	addw	sp,#1
 632  0008 81            	ret	
 645                     	xdef	_EXTI_GetTLISensitivity
 646                     	xdef	_EXTI_GetExtIntSensitivity
 647                     	xdef	_EXTI_SetTLISensitivity
 648                     	xdef	_EXTI_SetExtIntSensitivity
 649                     	xdef	_EXTI_DeInit
 650                     	xref	_assert_failed
 651                     .const:	section	.text
 652  0000               L111:
 653  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 654  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 655  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 656  0036 5f657874692e  	dc.b	"_exti.c",0
 676                     	end
