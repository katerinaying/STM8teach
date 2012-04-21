   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 44 uint8_t ITC_GetCPUCC(void)
  50                     ; 45 {
  52                     .text:	section	.text,new
  53  0000               _ITC_GetCPUCC:
  57                     ; 47   _asm("push cc");
  60  0000 8a            	push	cc
  62                     ; 48   _asm("pop a");
  65  0001 84            	pop	a
  67                     ; 49   return; /* Ignore compiler warning, the returned value is in A register */
  70  0002 81            	ret	
  93                     ; 74 void ITC_DeInit(void)
  93                     ; 75 {
  94                     .text:	section	.text,new
  95  0000               _ITC_DeInit:
  99                     ; 76     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
 101  0000 35ff7f70      	mov	32624,#255
 102                     ; 77     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 104  0004 35ff7f71      	mov	32625,#255
 105                     ; 78     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 107  0008 35ff7f72      	mov	32626,#255
 108                     ; 79     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 110  000c 35ff7f73      	mov	32627,#255
 111                     ; 80     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 113  0010 35ff7f74      	mov	32628,#255
 114                     ; 81     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 116  0014 35ff7f75      	mov	32629,#255
 117                     ; 82     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 119  0018 35ff7f76      	mov	32630,#255
 120                     ; 83     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 122  001c 35ff7f77      	mov	32631,#255
 123                     ; 84 }
 126  0020 81            	ret	
 151                     ; 91 uint8_t ITC_GetSoftIntStatus(void)
 151                     ; 92 {
 152                     .text:	section	.text,new
 153  0000               _ITC_GetSoftIntStatus:
 157                     ; 93     return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 159  0000 cd0000        	call	_ITC_GetCPUCC
 161  0003 a428          	and	a,#40
 164  0005 81            	ret	
 438                     .const:	section	.text
 439  0000               L23:
 440  0000 0035          	dc.w	L14
 441  0002 0035          	dc.w	L14
 442  0004 0035          	dc.w	L14
 443  0006 0035          	dc.w	L14
 444  0008 003a          	dc.w	L34
 445  000a 003a          	dc.w	L34
 446  000c 003a          	dc.w	L34
 447  000e 003a          	dc.w	L34
 448  0010 003f          	dc.w	L54
 449  0012 003f          	dc.w	L54
 450  0014 003f          	dc.w	L54
 451  0016 003f          	dc.w	L54
 452  0018 0044          	dc.w	L74
 453  001a 0044          	dc.w	L74
 454  001c 0044          	dc.w	L74
 455  001e 0044          	dc.w	L74
 456  0020 0049          	dc.w	L15
 457  0022 0049          	dc.w	L15
 458  0024 0049          	dc.w	L15
 459  0026 0049          	dc.w	L15
 460  0028 004e          	dc.w	L35
 461  002a 004e          	dc.w	L35
 462  002c 004e          	dc.w	L35
 463  002e 004e          	dc.w	L35
 464  0030 0053          	dc.w	L55
 465                     ; 101 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 465                     ; 102 {
 466                     .text:	section	.text,new
 467  0000               _ITC_GetSoftwarePriority:
 469  0000 88            	push	a
 470  0001 89            	pushw	x
 471       00000002      OFST:	set	2
 474                     ; 104     uint8_t Value = 0;
 476  0002 0f02          	clr	(OFST+0,sp)
 477                     ; 105     uint8_t Mask = 0;
 479                     ; 108     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 481  0004 a119          	cp	a,#25
 482  0006 250e          	jrult	L02
 483  0008 ae006c        	ldw	x,#108
 484  000b 89            	pushw	x
 485  000c 5f            	clrw	x
 486  000d 89            	pushw	x
 487  000e ae0064        	ldw	x,#L502
 488  0011 cd0000        	call	_assert_failed
 490  0014 5b04          	addw	sp,#4
 491  0016               L02:
 492                     ; 111     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 494  0016 7b03          	ld	a,(OFST+1,sp)
 495  0018 a403          	and	a,#3
 496  001a 48            	sll	a
 497  001b 5f            	clrw	x
 498  001c 97            	ld	xl,a
 499  001d a603          	ld	a,#3
 500  001f 5d            	tnzw	x
 501  0020 2704          	jreq	L42
 502  0022               L62:
 503  0022 48            	sll	a
 504  0023 5a            	decw	x
 505  0024 26fc          	jrne	L62
 506  0026               L42:
 507  0026 6b01          	ld	(OFST-1,sp),a
 508                     ; 113     switch (IrqNum)
 510  0028 7b03          	ld	a,(OFST+1,sp)
 512                     ; 185     default:
 512                     ; 186         break;
 513  002a a119          	cp	a,#25
 514  002c 242e          	jruge	L112
 515  002e 5f            	clrw	x
 516  002f 97            	ld	xl,a
 517  0030 58            	sllw	x
 518  0031 de0000        	ldw	x,(L23,x)
 519  0034 fc            	jp	(x)
 520  0035               L14:
 521                     ; 115     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 521                     ; 116     case ITC_IRQ_AWU:
 521                     ; 117     case ITC_IRQ_CLK:
 521                     ; 118     case ITC_IRQ_PORTA:
 521                     ; 119         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 523  0035 c67f70        	ld	a,32624
 524                     ; 120         break;
 526  0038 201c          	jp	LC001
 527  003a               L34:
 528                     ; 121     case ITC_IRQ_PORTB:
 528                     ; 122     case ITC_IRQ_PORTC:
 528                     ; 123     case ITC_IRQ_PORTD:
 528                     ; 124     case ITC_IRQ_PORTE:
 528                     ; 125         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 530  003a c67f71        	ld	a,32625
 531                     ; 126         break;
 533  003d 2017          	jp	LC001
 534  003f               L54:
 535                     ; 128     case ITC_IRQ_CAN_RX:
 535                     ; 129     case ITC_IRQ_CAN_TX:
 535                     ; 130 #endif /*STM8S208 or STM8AF52Ax */
 535                     ; 131 
 535                     ; 132 #ifdef STM8S903
 535                     ; 133     case ITC_IRQ_PORTF:
 535                     ; 134 #endif /*STM8S903*/
 535                     ; 135 
 535                     ; 136     case ITC_IRQ_SPI:
 535                     ; 137     case ITC_IRQ_TIM1_OVF:
 535                     ; 138         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 537  003f c67f72        	ld	a,32626
 538                     ; 139         break;
 540  0042 2012          	jp	LC001
 541  0044               L74:
 542                     ; 140     case ITC_IRQ_TIM1_CAPCOM:
 542                     ; 141 #ifdef STM8S903
 542                     ; 142     case ITC_IRQ_TIM5_OVFTRI:
 542                     ; 143     case ITC_IRQ_TIM5_CAPCOM:
 542                     ; 144 #else
 542                     ; 145     case ITC_IRQ_TIM2_OVF:
 542                     ; 146     case ITC_IRQ_TIM2_CAPCOM:
 542                     ; 147 #endif /*STM8S903*/
 542                     ; 148 
 542                     ; 149     case ITC_IRQ_TIM3_OVF:
 542                     ; 150         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 544  0044 c67f73        	ld	a,32627
 545                     ; 151         break;
 547  0047 200d          	jp	LC001
 548  0049               L15:
 549                     ; 152     case ITC_IRQ_TIM3_CAPCOM:
 549                     ; 153     case ITC_IRQ_UART1_TX:
 549                     ; 154     case ITC_IRQ_UART1_RX:
 549                     ; 155     case ITC_IRQ_I2C:
 549                     ; 156         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 551  0049 c67f74        	ld	a,32628
 552                     ; 157         break;
 554  004c 2008          	jp	LC001
 555  004e               L35:
 556                     ; 165     case ITC_IRQ_UART3_TX:
 556                     ; 166     case ITC_IRQ_UART3_RX:
 556                     ; 167     case ITC_IRQ_ADC2:
 556                     ; 168 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 556                     ; 169 
 556                     ; 170 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 556                     ; 171     defined(STM8S903) || defined(STM8AF626x)
 556                     ; 172     case ITC_IRQ_ADC1:
 556                     ; 173 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 556                     ; 174 
 556                     ; 175 #ifdef STM8S903
 556                     ; 176     case ITC_IRQ_TIM6_OVFTRI:
 556                     ; 177 #else
 556                     ; 178     case ITC_IRQ_TIM4_OVF:
 556                     ; 179 #endif /*STM8S903*/
 556                     ; 180         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 558  004e c67f75        	ld	a,32629
 559                     ; 181         break;
 561  0051 2003          	jp	LC001
 562  0053               L55:
 563                     ; 182     case ITC_IRQ_EEPROM_EEC:
 563                     ; 183         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 565  0053 c67f76        	ld	a,32630
 566  0056               LC001:
 567  0056 1401          	and	a,(OFST-1,sp)
 568  0058 6b02          	ld	(OFST+0,sp),a
 569                     ; 184         break;
 571                     ; 185     default:
 571                     ; 186         break;
 573  005a 7b03          	ld	a,(OFST+1,sp)
 574  005c               L112:
 575                     ; 189     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 577  005c a403          	and	a,#3
 578  005e 48            	sll	a
 579  005f 5f            	clrw	x
 580  0060 97            	ld	xl,a
 581  0061 7b02          	ld	a,(OFST+0,sp)
 582  0063 5d            	tnzw	x
 583  0064 2704          	jreq	L43
 584  0066               L63:
 585  0066 44            	srl	a
 586  0067 5a            	decw	x
 587  0068 26fc          	jrne	L63
 588  006a               L43:
 589                     ; 191     return((ITC_PriorityLevel_TypeDef)Value);
 593  006a 5b03          	addw	sp,#3
 594  006c 81            	ret	
 656                     	switch	.const
 657  0032               L201:
 658  0032 0066          	dc.w	L312
 659  0034 0066          	dc.w	L312
 660  0036 0066          	dc.w	L312
 661  0038 0066          	dc.w	L312
 662  003a 0078          	dc.w	L512
 663  003c 0078          	dc.w	L512
 664  003e 0078          	dc.w	L512
 665  0040 0078          	dc.w	L512
 666  0042 008a          	dc.w	L712
 667  0044 008a          	dc.w	L712
 668  0046 008a          	dc.w	L712
 669  0048 008a          	dc.w	L712
 670  004a 009c          	dc.w	L122
 671  004c 009c          	dc.w	L122
 672  004e 009c          	dc.w	L122
 673  0050 009c          	dc.w	L122
 674  0052 00ae          	dc.w	L322
 675  0054 00ae          	dc.w	L322
 676  0056 00ae          	dc.w	L322
 677  0058 00ae          	dc.w	L322
 678  005a 00c0          	dc.w	L522
 679  005c 00c0          	dc.w	L522
 680  005e 00c0          	dc.w	L522
 681  0060 00c0          	dc.w	L522
 682  0062 00d2          	dc.w	L722
 683                     ; 208 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 683                     ; 209 {
 684                     .text:	section	.text,new
 685  0000               _ITC_SetSoftwarePriority:
 687  0000 89            	pushw	x
 688  0001 89            	pushw	x
 689       00000002      OFST:	set	2
 692                     ; 211     uint8_t Mask = 0;
 694                     ; 212     uint8_t NewPriority = 0;
 696                     ; 215     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 698  0002 9e            	ld	a,xh
 699  0003 a119          	cp	a,#25
 700  0005 2506          	jrult	L44
 701  0007 ae00d7        	ldw	x,#215
 702  000a cd00e5        	call	LC002
 703  000d               L44:
 704                     ; 216     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 706  000d 7b04          	ld	a,(OFST+2,sp)
 707  000f a102          	cp	a,#2
 708  0011 2711          	jreq	L45
 709  0013 4a            	dec	a
 710  0014 270e          	jreq	L45
 711  0016 7b04          	ld	a,(OFST+2,sp)
 712  0018 270a          	jreq	L45
 713  001a a103          	cp	a,#3
 714  001c 2706          	jreq	L45
 715  001e ae00d8        	ldw	x,#216
 716  0021 cd00e5        	call	LC002
 717  0024               L45:
 718                     ; 219     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 720  0024 cd0000        	call	_ITC_GetSoftIntStatus
 722  0027 a128          	cp	a,#40
 723  0029 2706          	jreq	L46
 724  002b ae00db        	ldw	x,#219
 725  002e cd00e5        	call	LC002
 726  0031               L46:
 727                     ; 223     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 729  0031 7b03          	ld	a,(OFST+1,sp)
 730  0033 a403          	and	a,#3
 731  0035 48            	sll	a
 732  0036 5f            	clrw	x
 733  0037 97            	ld	xl,a
 734  0038 a603          	ld	a,#3
 735  003a 5d            	tnzw	x
 736  003b 2704          	jreq	L07
 737  003d               L27:
 738  003d 48            	sll	a
 739  003e 5a            	decw	x
 740  003f 26fc          	jrne	L27
 741  0041               L07:
 742  0041 43            	cpl	a
 743  0042 6b01          	ld	(OFST-1,sp),a
 744                     ; 226     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 746  0044 7b03          	ld	a,(OFST+1,sp)
 747  0046 a403          	and	a,#3
 748  0048 48            	sll	a
 749  0049 5f            	clrw	x
 750  004a 97            	ld	xl,a
 751  004b 7b04          	ld	a,(OFST+2,sp)
 752  004d 5d            	tnzw	x
 753  004e 2704          	jreq	L47
 754  0050               L67:
 755  0050 48            	sll	a
 756  0051 5a            	decw	x
 757  0052 26fc          	jrne	L67
 758  0054               L47:
 759  0054 6b02          	ld	(OFST+0,sp),a
 760                     ; 228     switch (IrqNum)
 762  0056 7b03          	ld	a,(OFST+1,sp)
 764                     ; 314     default:
 764                     ; 315         break;
 765  0058 a119          	cp	a,#25
 766  005a 2503cc00e2    	jruge	L362
 767  005f 5f            	clrw	x
 768  0060 97            	ld	xl,a
 769  0061 58            	sllw	x
 770  0062 de0032        	ldw	x,(L201,x)
 771  0065 fc            	jp	(x)
 772  0066               L312:
 773                     ; 231     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 773                     ; 232     case ITC_IRQ_AWU:
 773                     ; 233     case ITC_IRQ_CLK:
 773                     ; 234     case ITC_IRQ_PORTA:
 773                     ; 235         ITC->ISPR1 &= Mask;
 775  0066 c67f70        	ld	a,32624
 776  0069 1401          	and	a,(OFST-1,sp)
 777  006b c77f70        	ld	32624,a
 778                     ; 236         ITC->ISPR1 |= NewPriority;
 780  006e c67f70        	ld	a,32624
 781  0071 1a02          	or	a,(OFST+0,sp)
 782  0073 c77f70        	ld	32624,a
 783                     ; 237         break;
 785  0076 206a          	jra	L362
 786  0078               L512:
 787                     ; 239     case ITC_IRQ_PORTB:
 787                     ; 240     case ITC_IRQ_PORTC:
 787                     ; 241     case ITC_IRQ_PORTD:
 787                     ; 242     case ITC_IRQ_PORTE:
 787                     ; 243         ITC->ISPR2 &= Mask;
 789  0078 c67f71        	ld	a,32625
 790  007b 1401          	and	a,(OFST-1,sp)
 791  007d c77f71        	ld	32625,a
 792                     ; 244         ITC->ISPR2 |= NewPriority;
 794  0080 c67f71        	ld	a,32625
 795  0083 1a02          	or	a,(OFST+0,sp)
 796  0085 c77f71        	ld	32625,a
 797                     ; 245         break;
 799  0088 2058          	jra	L362
 800  008a               L712:
 801                     ; 248     case ITC_IRQ_CAN_RX:
 801                     ; 249     case ITC_IRQ_CAN_TX:
 801                     ; 250 #endif /*STM8S208 or STM8AF52Ax */
 801                     ; 251 
 801                     ; 252 #ifdef STM8S903
 801                     ; 253     case ITC_IRQ_PORTF:
 801                     ; 254 #endif /*STM8S903*/
 801                     ; 255     case ITC_IRQ_SPI:
 801                     ; 256     case ITC_IRQ_TIM1_OVF:
 801                     ; 257         ITC->ISPR3 &= Mask;
 803  008a c67f72        	ld	a,32626
 804  008d 1401          	and	a,(OFST-1,sp)
 805  008f c77f72        	ld	32626,a
 806                     ; 258         ITC->ISPR3 |= NewPriority;
 808  0092 c67f72        	ld	a,32626
 809  0095 1a02          	or	a,(OFST+0,sp)
 810  0097 c77f72        	ld	32626,a
 811                     ; 259         break;
 813  009a 2046          	jra	L362
 814  009c               L122:
 815                     ; 261     case ITC_IRQ_TIM1_CAPCOM:
 815                     ; 262 #ifdef STM8S903
 815                     ; 263     case ITC_IRQ_TIM5_OVFTRI:
 815                     ; 264     case ITC_IRQ_TIM5_CAPCOM:
 815                     ; 265 #else
 815                     ; 266     case ITC_IRQ_TIM2_OVF:
 815                     ; 267     case ITC_IRQ_TIM2_CAPCOM:
 815                     ; 268 #endif /*STM8S903*/
 815                     ; 269 
 815                     ; 270     case ITC_IRQ_TIM3_OVF:
 815                     ; 271         ITC->ISPR4 &= Mask;
 817  009c c67f73        	ld	a,32627
 818  009f 1401          	and	a,(OFST-1,sp)
 819  00a1 c77f73        	ld	32627,a
 820                     ; 272         ITC->ISPR4 |= NewPriority;
 822  00a4 c67f73        	ld	a,32627
 823  00a7 1a02          	or	a,(OFST+0,sp)
 824  00a9 c77f73        	ld	32627,a
 825                     ; 273         break;
 827  00ac 2034          	jra	L362
 828  00ae               L322:
 829                     ; 275     case ITC_IRQ_TIM3_CAPCOM:
 829                     ; 276     case ITC_IRQ_UART1_TX:
 829                     ; 277     case ITC_IRQ_UART1_RX:
 829                     ; 278     case ITC_IRQ_I2C:
 829                     ; 279         ITC->ISPR5 &= Mask;
 831  00ae c67f74        	ld	a,32628
 832  00b1 1401          	and	a,(OFST-1,sp)
 833  00b3 c77f74        	ld	32628,a
 834                     ; 280         ITC->ISPR5 |= NewPriority;
 836  00b6 c67f74        	ld	a,32628
 837  00b9 1a02          	or	a,(OFST+0,sp)
 838  00bb c77f74        	ld	32628,a
 839                     ; 281         break;
 841  00be 2022          	jra	L362
 842  00c0               L522:
 843                     ; 290     case ITC_IRQ_UART3_TX:
 843                     ; 291     case ITC_IRQ_UART3_RX:
 843                     ; 292     case ITC_IRQ_ADC2:
 843                     ; 293 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 843                     ; 294 
 843                     ; 295 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 843                     ; 296     defined(STM8S903) || defined(STM8AF626x)
 843                     ; 297     case ITC_IRQ_ADC1:
 843                     ; 298 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 843                     ; 299 
 843                     ; 300 #ifdef STM8S903
 843                     ; 301     case ITC_IRQ_TIM6_OVFTRI:
 843                     ; 302 #else
 843                     ; 303     case ITC_IRQ_TIM4_OVF:
 843                     ; 304 #endif /*STM8S903*/
 843                     ; 305         ITC->ISPR6 &= Mask;
 845  00c0 c67f75        	ld	a,32629
 846  00c3 1401          	and	a,(OFST-1,sp)
 847  00c5 c77f75        	ld	32629,a
 848                     ; 306         ITC->ISPR6 |= NewPriority;
 850  00c8 c67f75        	ld	a,32629
 851  00cb 1a02          	or	a,(OFST+0,sp)
 852  00cd c77f75        	ld	32629,a
 853                     ; 307         break;
 855  00d0 2010          	jra	L362
 856  00d2               L722:
 857                     ; 309     case ITC_IRQ_EEPROM_EEC:
 857                     ; 310         ITC->ISPR7 &= Mask;
 859  00d2 c67f76        	ld	a,32630
 860  00d5 1401          	and	a,(OFST-1,sp)
 861  00d7 c77f76        	ld	32630,a
 862                     ; 311         ITC->ISPR7 |= NewPriority;
 864  00da c67f76        	ld	a,32630
 865  00dd 1a02          	or	a,(OFST+0,sp)
 866  00df c77f76        	ld	32630,a
 867                     ; 312         break;
 869                     ; 314     default:
 869                     ; 315         break;
 871  00e2               L362:
 872                     ; 319 }
 875  00e2 5b04          	addw	sp,#4
 876  00e4 81            	ret	
 877  00e5               LC002:
 878  00e5 89            	pushw	x
 879  00e6 5f            	clrw	x
 880  00e7 89            	pushw	x
 881  00e8 ae0064        	ldw	x,#L502
 882  00eb cd0000        	call	_assert_failed
 884  00ee 5b04          	addw	sp,#4
 885  00f0 81            	ret	
 898                     	xdef	_ITC_GetSoftwarePriority
 899                     	xdef	_ITC_SetSoftwarePriority
 900                     	xdef	_ITC_GetSoftIntStatus
 901                     	xdef	_ITC_DeInit
 902                     	xdef	_ITC_GetCPUCC
 903                     	xref	_assert_failed
 904                     	switch	.const
 905  0064               L502:
 906  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 907  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 908  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 909  009a 5f6974632e63  	dc.b	"_itc.c",0
 929                     	end
