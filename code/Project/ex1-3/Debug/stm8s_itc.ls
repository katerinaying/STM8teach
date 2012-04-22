   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  44                     ; 44 uint8_t ITC_GetCPUCC(void)
  44                     ; 45 {
  46                     	switch	.text
  47  0000               _ITC_GetCPUCC:
  51                     ; 47   _asm("push cc");
  54  0000 8a            push cc
  56                     ; 48   _asm("pop a");
  59  0001 84            pop a
  61                     ; 49   return; /* Ignore compiler warning, the returned value is in A register */
  64  0002 81            	ret
  87                     ; 74 void ITC_DeInit(void)
  87                     ; 75 {
  88                     	switch	.text
  89  0003               _ITC_DeInit:
  93                     ; 76     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  95  0003 35ff7f70      	mov	32624,#255
  96                     ; 77     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  98  0007 35ff7f71      	mov	32625,#255
  99                     ; 78     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 101  000b 35ff7f72      	mov	32626,#255
 102                     ; 79     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 104  000f 35ff7f73      	mov	32627,#255
 105                     ; 80     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 107  0013 35ff7f74      	mov	32628,#255
 108                     ; 81     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 110  0017 35ff7f75      	mov	32629,#255
 111                     ; 82     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 113  001b 35ff7f76      	mov	32630,#255
 114                     ; 83     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 116  001f 35ff7f77      	mov	32631,#255
 117                     ; 84 }
 120  0023 81            	ret
 145                     ; 91 uint8_t ITC_GetSoftIntStatus(void)
 145                     ; 92 {
 146                     	switch	.text
 147  0024               _ITC_GetSoftIntStatus:
 151                     ; 93     return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 153  0024 adda          	call	_ITC_GetCPUCC
 155  0026 a428          	and	a,#40
 158  0028 81            	ret
 436                     .const:	section	.text
 437  0000               L62:
 438  0000 0065          	dc.w	L14
 439  0002 0065          	dc.w	L14
 440  0004 0065          	dc.w	L14
 441  0006 0065          	dc.w	L14
 442  0008 006e          	dc.w	L34
 443  000a 006e          	dc.w	L34
 444  000c 006e          	dc.w	L34
 445  000e 006e          	dc.w	L34
 446  0010 0077          	dc.w	L54
 447  0012 0077          	dc.w	L54
 448  0014 0077          	dc.w	L54
 449  0016 0077          	dc.w	L54
 450  0018 0080          	dc.w	L74
 451  001a 0080          	dc.w	L74
 452  001c 0080          	dc.w	L74
 453  001e 0080          	dc.w	L74
 454  0020 0089          	dc.w	L15
 455  0022 0089          	dc.w	L15
 456  0024 0089          	dc.w	L15
 457  0026 0089          	dc.w	L15
 458  0028 0092          	dc.w	L35
 459  002a 0092          	dc.w	L35
 460  002c 0092          	dc.w	L35
 461  002e 0092          	dc.w	L35
 462  0030 009b          	dc.w	L55
 463                     ; 101 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 463                     ; 102 {
 464                     	switch	.text
 465  0029               _ITC_GetSoftwarePriority:
 467  0029 88            	push	a
 468  002a 89            	pushw	x
 469       00000002      OFST:	set	2
 472                     ; 104     uint8_t Value = 0;
 474  002b 0f02          	clr	(OFST+0,sp)
 475                     ; 105     uint8_t Mask = 0;
 477                     ; 108     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 479  002d a119          	cp	a,#25
 480  002f 2403          	jruge	L41
 481  0031 4f            	clr	a
 482  0032 2010          	jra	L61
 483  0034               L41:
 484  0034 ae006c        	ldw	x,#108
 485  0037 89            	pushw	x
 486  0038 ae0000        	ldw	x,#0
 487  003b 89            	pushw	x
 488  003c ae0064        	ldw	x,#L112
 489  003f cd0000        	call	_assert_failed
 491  0042 5b04          	addw	sp,#4
 492  0044               L61:
 493                     ; 111     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 495  0044 7b03          	ld	a,(OFST+1,sp)
 496  0046 a403          	and	a,#3
 497  0048 48            	sll	a
 498  0049 5f            	clrw	x
 499  004a 97            	ld	xl,a
 500  004b a603          	ld	a,#3
 501  004d 5d            	tnzw	x
 502  004e 2704          	jreq	L02
 503  0050               L22:
 504  0050 48            	sll	a
 505  0051 5a            	decw	x
 506  0052 26fc          	jrne	L22
 507  0054               L02:
 508  0054 6b01          	ld	(OFST-1,sp),a
 509                     ; 113     switch (IrqNum)
 511  0056 7b03          	ld	a,(OFST+1,sp)
 513                     ; 185     default:
 513                     ; 186         break;
 514  0058 a119          	cp	a,#25
 515  005a 2407          	jruge	L42
 516  005c 5f            	clrw	x
 517  005d 97            	ld	xl,a
 518  005e 58            	sllw	x
 519  005f de0000        	ldw	x,(L62,x)
 520  0062 fc            	jp	(x)
 521  0063               L42:
 522  0063 203d          	jra	L512
 523  0065               L14:
 524                     ; 115     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 524                     ; 116     case ITC_IRQ_AWU:
 524                     ; 117     case ITC_IRQ_CLK:
 524                     ; 118     case ITC_IRQ_PORTA:
 524                     ; 119         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 526  0065 c67f70        	ld	a,32624
 527  0068 1401          	and	a,(OFST-1,sp)
 528  006a 6b02          	ld	(OFST+0,sp),a
 529                     ; 120         break;
 531  006c 2034          	jra	L512
 532  006e               L34:
 533                     ; 121     case ITC_IRQ_PORTB:
 533                     ; 122     case ITC_IRQ_PORTC:
 533                     ; 123     case ITC_IRQ_PORTD:
 533                     ; 124     case ITC_IRQ_PORTE:
 533                     ; 125         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 535  006e c67f71        	ld	a,32625
 536  0071 1401          	and	a,(OFST-1,sp)
 537  0073 6b02          	ld	(OFST+0,sp),a
 538                     ; 126         break;
 540  0075 202b          	jra	L512
 541  0077               L54:
 542                     ; 128     case ITC_IRQ_CAN_RX:
 542                     ; 129     case ITC_IRQ_CAN_TX:
 542                     ; 130 #endif /*STM8S208 or STM8AF52Ax */
 542                     ; 131 
 542                     ; 132 #ifdef STM8S903
 542                     ; 133     case ITC_IRQ_PORTF:
 542                     ; 134 #endif /*STM8S903*/
 542                     ; 135 
 542                     ; 136     case ITC_IRQ_SPI:
 542                     ; 137     case ITC_IRQ_TIM1_OVF:
 542                     ; 138         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 544  0077 c67f72        	ld	a,32626
 545  007a 1401          	and	a,(OFST-1,sp)
 546  007c 6b02          	ld	(OFST+0,sp),a
 547                     ; 139         break;
 549  007e 2022          	jra	L512
 550  0080               L74:
 551                     ; 140     case ITC_IRQ_TIM1_CAPCOM:
 551                     ; 141 #ifdef STM8S903
 551                     ; 142     case ITC_IRQ_TIM5_OVFTRI:
 551                     ; 143     case ITC_IRQ_TIM5_CAPCOM:
 551                     ; 144 #else
 551                     ; 145     case ITC_IRQ_TIM2_OVF:
 551                     ; 146     case ITC_IRQ_TIM2_CAPCOM:
 551                     ; 147 #endif /*STM8S903*/
 551                     ; 148 
 551                     ; 149     case ITC_IRQ_TIM3_OVF:
 551                     ; 150         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 553  0080 c67f73        	ld	a,32627
 554  0083 1401          	and	a,(OFST-1,sp)
 555  0085 6b02          	ld	(OFST+0,sp),a
 556                     ; 151         break;
 558  0087 2019          	jra	L512
 559  0089               L15:
 560                     ; 152     case ITC_IRQ_TIM3_CAPCOM:
 560                     ; 153     case ITC_IRQ_UART1_TX:
 560                     ; 154     case ITC_IRQ_UART1_RX:
 560                     ; 155     case ITC_IRQ_I2C:
 560                     ; 156         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 562  0089 c67f74        	ld	a,32628
 563  008c 1401          	and	a,(OFST-1,sp)
 564  008e 6b02          	ld	(OFST+0,sp),a
 565                     ; 157         break;
 567  0090 2010          	jra	L512
 568  0092               L35:
 569                     ; 165     case ITC_IRQ_UART3_TX:
 569                     ; 166     case ITC_IRQ_UART3_RX:
 569                     ; 167     case ITC_IRQ_ADC2:
 569                     ; 168 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 569                     ; 169 
 569                     ; 170 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 569                     ; 171     defined(STM8S903) || defined(STM8AF626x)
 569                     ; 172     case ITC_IRQ_ADC1:
 569                     ; 173 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 569                     ; 174 
 569                     ; 175 #ifdef STM8S903
 569                     ; 176     case ITC_IRQ_TIM6_OVFTRI:
 569                     ; 177 #else
 569                     ; 178     case ITC_IRQ_TIM4_OVF:
 569                     ; 179 #endif /*STM8S903*/
 569                     ; 180         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 571  0092 c67f75        	ld	a,32629
 572  0095 1401          	and	a,(OFST-1,sp)
 573  0097 6b02          	ld	(OFST+0,sp),a
 574                     ; 181         break;
 576  0099 2007          	jra	L512
 577  009b               L55:
 578                     ; 182     case ITC_IRQ_EEPROM_EEC:
 578                     ; 183         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 580  009b c67f76        	ld	a,32630
 581  009e 1401          	and	a,(OFST-1,sp)
 582  00a0 6b02          	ld	(OFST+0,sp),a
 583                     ; 184         break;
 585  00a2               L75:
 586                     ; 185     default:
 586                     ; 186         break;
 588  00a2               L512:
 589                     ; 189     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 591  00a2 7b03          	ld	a,(OFST+1,sp)
 592  00a4 a403          	and	a,#3
 593  00a6 48            	sll	a
 594  00a7 5f            	clrw	x
 595  00a8 97            	ld	xl,a
 596  00a9 7b02          	ld	a,(OFST+0,sp)
 597  00ab 5d            	tnzw	x
 598  00ac 2704          	jreq	L03
 599  00ae               L23:
 600  00ae 44            	srl	a
 601  00af 5a            	decw	x
 602  00b0 26fc          	jrne	L23
 603  00b2               L03:
 604  00b2 6b02          	ld	(OFST+0,sp),a
 605                     ; 191     return((ITC_PriorityLevel_TypeDef)Value);
 607  00b4 7b02          	ld	a,(OFST+0,sp)
 610  00b6 5b03          	addw	sp,#3
 611  00b8 81            	ret
 677                     	switch	.const
 678  0032               L66:
 679  0032 014a          	dc.w	L712
 680  0034 014a          	dc.w	L712
 681  0036 014a          	dc.w	L712
 682  0038 014a          	dc.w	L712
 683  003a 015c          	dc.w	L122
 684  003c 015c          	dc.w	L122
 685  003e 015c          	dc.w	L122
 686  0040 015c          	dc.w	L122
 687  0042 016e          	dc.w	L322
 688  0044 016e          	dc.w	L322
 689  0046 016e          	dc.w	L322
 690  0048 016e          	dc.w	L322
 691  004a 0180          	dc.w	L522
 692  004c 0180          	dc.w	L522
 693  004e 0180          	dc.w	L522
 694  0050 0180          	dc.w	L522
 695  0052 0192          	dc.w	L722
 696  0054 0192          	dc.w	L722
 697  0056 0192          	dc.w	L722
 698  0058 0192          	dc.w	L722
 699  005a 01a4          	dc.w	L132
 700  005c 01a4          	dc.w	L132
 701  005e 01a4          	dc.w	L132
 702  0060 01a4          	dc.w	L132
 703  0062 01b6          	dc.w	L332
 704                     ; 208 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 704                     ; 209 {
 705                     	switch	.text
 706  00b9               _ITC_SetSoftwarePriority:
 708  00b9 89            	pushw	x
 709  00ba 89            	pushw	x
 710       00000002      OFST:	set	2
 713                     ; 211     uint8_t Mask = 0;
 715                     ; 212     uint8_t NewPriority = 0;
 717                     ; 215     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 719  00bb 9e            	ld	a,xh
 720  00bc a119          	cp	a,#25
 721  00be 2403          	jruge	L63
 722  00c0 4f            	clr	a
 723  00c1 2010          	jra	L04
 724  00c3               L63:
 725  00c3 ae00d7        	ldw	x,#215
 726  00c6 89            	pushw	x
 727  00c7 ae0000        	ldw	x,#0
 728  00ca 89            	pushw	x
 729  00cb ae0064        	ldw	x,#L112
 730  00ce cd0000        	call	_assert_failed
 732  00d1 5b04          	addw	sp,#4
 733  00d3               L04:
 734                     ; 216     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 736  00d3 7b04          	ld	a,(OFST+2,sp)
 737  00d5 a102          	cp	a,#2
 738  00d7 2710          	jreq	L44
 739  00d9 7b04          	ld	a,(OFST+2,sp)
 740  00db a101          	cp	a,#1
 741  00dd 270a          	jreq	L44
 742  00df 0d04          	tnz	(OFST+2,sp)
 743  00e1 2706          	jreq	L44
 744  00e3 7b04          	ld	a,(OFST+2,sp)
 745  00e5 a103          	cp	a,#3
 746  00e7 2603          	jrne	L24
 747  00e9               L44:
 748  00e9 4f            	clr	a
 749  00ea 2010          	jra	L64
 750  00ec               L24:
 751  00ec ae00d8        	ldw	x,#216
 752  00ef 89            	pushw	x
 753  00f0 ae0000        	ldw	x,#0
 754  00f3 89            	pushw	x
 755  00f4 ae0064        	ldw	x,#L112
 756  00f7 cd0000        	call	_assert_failed
 758  00fa 5b04          	addw	sp,#4
 759  00fc               L64:
 760                     ; 219     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 762  00fc cd0024        	call	_ITC_GetSoftIntStatus
 764  00ff a128          	cp	a,#40
 765  0101 2603          	jrne	L05
 766  0103 4f            	clr	a
 767  0104 2010          	jra	L25
 768  0106               L05:
 769  0106 ae00db        	ldw	x,#219
 770  0109 89            	pushw	x
 771  010a ae0000        	ldw	x,#0
 772  010d 89            	pushw	x
 773  010e ae0064        	ldw	x,#L112
 774  0111 cd0000        	call	_assert_failed
 776  0114 5b04          	addw	sp,#4
 777  0116               L25:
 778                     ; 223     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 780  0116 7b03          	ld	a,(OFST+1,sp)
 781  0118 a403          	and	a,#3
 782  011a 48            	sll	a
 783  011b 5f            	clrw	x
 784  011c 97            	ld	xl,a
 785  011d a603          	ld	a,#3
 786  011f 5d            	tnzw	x
 787  0120 2704          	jreq	L45
 788  0122               L65:
 789  0122 48            	sll	a
 790  0123 5a            	decw	x
 791  0124 26fc          	jrne	L65
 792  0126               L45:
 793  0126 43            	cpl	a
 794  0127 6b01          	ld	(OFST-1,sp),a
 795                     ; 226     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 797  0129 7b03          	ld	a,(OFST+1,sp)
 798  012b a403          	and	a,#3
 799  012d 48            	sll	a
 800  012e 5f            	clrw	x
 801  012f 97            	ld	xl,a
 802  0130 7b04          	ld	a,(OFST+2,sp)
 803  0132 5d            	tnzw	x
 804  0133 2704          	jreq	L06
 805  0135               L26:
 806  0135 48            	sll	a
 807  0136 5a            	decw	x
 808  0137 26fc          	jrne	L26
 809  0139               L06:
 810  0139 6b02          	ld	(OFST+0,sp),a
 811                     ; 228     switch (IrqNum)
 813  013b 7b03          	ld	a,(OFST+1,sp)
 815                     ; 314     default:
 815                     ; 315         break;
 816  013d a119          	cp	a,#25
 817  013f 2407          	jruge	L46
 818  0141 5f            	clrw	x
 819  0142 97            	ld	xl,a
 820  0143 58            	sllw	x
 821  0144 de0032        	ldw	x,(L66,x)
 822  0147 fc            	jp	(x)
 823  0148               L46:
 824  0148 207c          	jra	L372
 825  014a               L712:
 826                     ; 231     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 826                     ; 232     case ITC_IRQ_AWU:
 826                     ; 233     case ITC_IRQ_CLK:
 826                     ; 234     case ITC_IRQ_PORTA:
 826                     ; 235         ITC->ISPR1 &= Mask;
 828  014a c67f70        	ld	a,32624
 829  014d 1401          	and	a,(OFST-1,sp)
 830  014f c77f70        	ld	32624,a
 831                     ; 236         ITC->ISPR1 |= NewPriority;
 833  0152 c67f70        	ld	a,32624
 834  0155 1a02          	or	a,(OFST+0,sp)
 835  0157 c77f70        	ld	32624,a
 836                     ; 237         break;
 838  015a 206a          	jra	L372
 839  015c               L122:
 840                     ; 239     case ITC_IRQ_PORTB:
 840                     ; 240     case ITC_IRQ_PORTC:
 840                     ; 241     case ITC_IRQ_PORTD:
 840                     ; 242     case ITC_IRQ_PORTE:
 840                     ; 243         ITC->ISPR2 &= Mask;
 842  015c c67f71        	ld	a,32625
 843  015f 1401          	and	a,(OFST-1,sp)
 844  0161 c77f71        	ld	32625,a
 845                     ; 244         ITC->ISPR2 |= NewPriority;
 847  0164 c67f71        	ld	a,32625
 848  0167 1a02          	or	a,(OFST+0,sp)
 849  0169 c77f71        	ld	32625,a
 850                     ; 245         break;
 852  016c 2058          	jra	L372
 853  016e               L322:
 854                     ; 248     case ITC_IRQ_CAN_RX:
 854                     ; 249     case ITC_IRQ_CAN_TX:
 854                     ; 250 #endif /*STM8S208 or STM8AF52Ax */
 854                     ; 251 
 854                     ; 252 #ifdef STM8S903
 854                     ; 253     case ITC_IRQ_PORTF:
 854                     ; 254 #endif /*STM8S903*/
 854                     ; 255     case ITC_IRQ_SPI:
 854                     ; 256     case ITC_IRQ_TIM1_OVF:
 854                     ; 257         ITC->ISPR3 &= Mask;
 856  016e c67f72        	ld	a,32626
 857  0171 1401          	and	a,(OFST-1,sp)
 858  0173 c77f72        	ld	32626,a
 859                     ; 258         ITC->ISPR3 |= NewPriority;
 861  0176 c67f72        	ld	a,32626
 862  0179 1a02          	or	a,(OFST+0,sp)
 863  017b c77f72        	ld	32626,a
 864                     ; 259         break;
 866  017e 2046          	jra	L372
 867  0180               L522:
 868                     ; 261     case ITC_IRQ_TIM1_CAPCOM:
 868                     ; 262 #ifdef STM8S903
 868                     ; 263     case ITC_IRQ_TIM5_OVFTRI:
 868                     ; 264     case ITC_IRQ_TIM5_CAPCOM:
 868                     ; 265 #else
 868                     ; 266     case ITC_IRQ_TIM2_OVF:
 868                     ; 267     case ITC_IRQ_TIM2_CAPCOM:
 868                     ; 268 #endif /*STM8S903*/
 868                     ; 269 
 868                     ; 270     case ITC_IRQ_TIM3_OVF:
 868                     ; 271         ITC->ISPR4 &= Mask;
 870  0180 c67f73        	ld	a,32627
 871  0183 1401          	and	a,(OFST-1,sp)
 872  0185 c77f73        	ld	32627,a
 873                     ; 272         ITC->ISPR4 |= NewPriority;
 875  0188 c67f73        	ld	a,32627
 876  018b 1a02          	or	a,(OFST+0,sp)
 877  018d c77f73        	ld	32627,a
 878                     ; 273         break;
 880  0190 2034          	jra	L372
 881  0192               L722:
 882                     ; 275     case ITC_IRQ_TIM3_CAPCOM:
 882                     ; 276     case ITC_IRQ_UART1_TX:
 882                     ; 277     case ITC_IRQ_UART1_RX:
 882                     ; 278     case ITC_IRQ_I2C:
 882                     ; 279         ITC->ISPR5 &= Mask;
 884  0192 c67f74        	ld	a,32628
 885  0195 1401          	and	a,(OFST-1,sp)
 886  0197 c77f74        	ld	32628,a
 887                     ; 280         ITC->ISPR5 |= NewPriority;
 889  019a c67f74        	ld	a,32628
 890  019d 1a02          	or	a,(OFST+0,sp)
 891  019f c77f74        	ld	32628,a
 892                     ; 281         break;
 894  01a2 2022          	jra	L372
 895  01a4               L132:
 896                     ; 290     case ITC_IRQ_UART3_TX:
 896                     ; 291     case ITC_IRQ_UART3_RX:
 896                     ; 292     case ITC_IRQ_ADC2:
 896                     ; 293 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 896                     ; 294 
 896                     ; 295 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 896                     ; 296     defined(STM8S903) || defined(STM8AF626x)
 896                     ; 297     case ITC_IRQ_ADC1:
 896                     ; 298 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 896                     ; 299 
 896                     ; 300 #ifdef STM8S903
 896                     ; 301     case ITC_IRQ_TIM6_OVFTRI:
 896                     ; 302 #else
 896                     ; 303     case ITC_IRQ_TIM4_OVF:
 896                     ; 304 #endif /*STM8S903*/
 896                     ; 305         ITC->ISPR6 &= Mask;
 898  01a4 c67f75        	ld	a,32629
 899  01a7 1401          	and	a,(OFST-1,sp)
 900  01a9 c77f75        	ld	32629,a
 901                     ; 306         ITC->ISPR6 |= NewPriority;
 903  01ac c67f75        	ld	a,32629
 904  01af 1a02          	or	a,(OFST+0,sp)
 905  01b1 c77f75        	ld	32629,a
 906                     ; 307         break;
 908  01b4 2010          	jra	L372
 909  01b6               L332:
 910                     ; 309     case ITC_IRQ_EEPROM_EEC:
 910                     ; 310         ITC->ISPR7 &= Mask;
 912  01b6 c67f76        	ld	a,32630
 913  01b9 1401          	and	a,(OFST-1,sp)
 914  01bb c77f76        	ld	32630,a
 915                     ; 311         ITC->ISPR7 |= NewPriority;
 917  01be c67f76        	ld	a,32630
 918  01c1 1a02          	or	a,(OFST+0,sp)
 919  01c3 c77f76        	ld	32630,a
 920                     ; 312         break;
 922  01c6               L532:
 923                     ; 314     default:
 923                     ; 315         break;
 925  01c6               L372:
 926                     ; 319 }
 929  01c6 5b04          	addw	sp,#4
 930  01c8 81            	ret
 943                     	xdef	_ITC_GetSoftwarePriority
 944                     	xdef	_ITC_SetSoftwarePriority
 945                     	xdef	_ITC_GetSoftIntStatus
 946                     	xdef	_ITC_DeInit
 947                     	xdef	_ITC_GetCPUCC
 948                     	xref	_assert_failed
 949                     	switch	.const
 950  0064               L112:
 951  0064 2e2e5c2e2e5c  	dc.b	"..\..\libraries\st"
 952  0076 6d38735f7374  	dc.b	"m8s_stdperiph_driv"
 953  0088 65725c737263  	dc.b	"er\src\stm8s_itc.c",0
 973                     	end
