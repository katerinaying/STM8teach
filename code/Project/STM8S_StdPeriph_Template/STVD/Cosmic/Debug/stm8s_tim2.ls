   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 46 void TIM2_DeInit(void)
  50                     ; 47 {
  52                     .text:	section	.text,new
  53  0000               _TIM2_DeInit:
  57                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  59  0000 725f5300      	clr	21248
  60                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  62  0004 725f5301      	clr	21249
  63                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  65  0008 725f5303      	clr	21251
  66                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  68  000c 725f5308      	clr	21256
  69                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  71  0010 725f5309      	clr	21257
  72                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  74  0014 725f5308      	clr	21256
  75                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  77  0018 725f5309      	clr	21257
  78                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  80  001c 725f5305      	clr	21253
  81                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  83  0020 725f5306      	clr	21254
  84                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  86  0024 725f5307      	clr	21255
  87                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  89  0028 725f530a      	clr	21258
  90                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  92  002c 725f530b      	clr	21259
  93                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  95  0030 725f530c      	clr	21260
  96                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  98  0034 35ff530d      	mov	21261,#255
  99                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
 101  0038 35ff530e      	mov	21262,#255
 102                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 104  003c 725f530f      	clr	21263
 105                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 107  0040 725f5310      	clr	21264
 108                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 110  0044 725f5311      	clr	21265
 111                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 113  0048 725f5312      	clr	21266
 114                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 116  004c 725f5313      	clr	21267
 117                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 119  0050 725f5314      	clr	21268
 120                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 122  0054 725f5302      	clr	21250
 123                     ; 76 }
 126  0058 81            	ret	
 292                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 292                     ; 86                         uint16_t TIM2_Period)
 292                     ; 87 {
 293                     .text:	section	.text,new
 294  0000               _TIM2_TimeBaseInit:
 296       00000000      OFST:	set	0
 299                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 301  0000 c7530c        	ld	21260,a
 302  0003 88            	push	a
 303                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 305  0004 7b04          	ld	a,(OFST+4,sp)
 306  0006 c7530d        	ld	21261,a
 307                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 309  0009 7b05          	ld	a,(OFST+5,sp)
 310  000b c7530e        	ld	21262,a
 311                     ; 93 }
 314  000e 84            	pop	a
 315  000f 81            	ret	
 471                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 471                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 471                     ; 106                   uint16_t TIM2_Pulse,
 471                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 471                     ; 108 {
 472                     .text:	section	.text,new
 473  0000               _TIM2_OC1Init:
 475  0000 89            	pushw	x
 476  0001 88            	push	a
 477       00000001      OFST:	set	1
 480                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 482  0002 9e            	ld	a,xh
 483  0003 4d            	tnz	a
 484  0004 271e          	jreq	L61
 485  0006 9e            	ld	a,xh
 486  0007 a110          	cp	a,#16
 487  0009 2719          	jreq	L61
 488  000b 9e            	ld	a,xh
 489  000c a120          	cp	a,#32
 490  000e 2714          	jreq	L61
 491  0010 9e            	ld	a,xh
 492  0011 a130          	cp	a,#48
 493  0013 270f          	jreq	L61
 494  0015 9e            	ld	a,xh
 495  0016 a160          	cp	a,#96
 496  0018 270a          	jreq	L61
 497  001a 9e            	ld	a,xh
 498  001b a170          	cp	a,#112
 499  001d 2705          	jreq	L61
 500  001f ae006e        	ldw	x,#110
 501  0022 ad4b          	call	LC001
 502  0024               L61:
 503                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 505  0024 7b03          	ld	a,(OFST+2,sp)
 506  0026 2709          	jreq	L62
 507  0028 a111          	cp	a,#17
 508  002a 2705          	jreq	L62
 509  002c ae006f        	ldw	x,#111
 510  002f ad3e          	call	LC001
 511  0031               L62:
 512                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 514  0031 7b08          	ld	a,(OFST+7,sp)
 515  0033 2709          	jreq	L63
 516  0035 a122          	cp	a,#34
 517  0037 2705          	jreq	L63
 518  0039 ae0070        	ldw	x,#112
 519  003c ad31          	call	LC001
 520  003e               L63:
 521                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 523  003e c65308        	ld	a,21256
 524  0041 a4fc          	and	a,#252
 525  0043 c75308        	ld	21256,a
 526                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 526                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 528  0046 7b08          	ld	a,(OFST+7,sp)
 529  0048 a402          	and	a,#2
 530  004a 6b01          	ld	(OFST+0,sp),a
 531  004c 7b03          	ld	a,(OFST+2,sp)
 532  004e a401          	and	a,#1
 533  0050 1a01          	or	a,(OFST+0,sp)
 534  0052 ca5308        	or	a,21256
 535  0055 c75308        	ld	21256,a
 536                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 536                     ; 122                             (uint8_t)TIM2_OCMode);
 538  0058 c65305        	ld	a,21253
 539  005b a48f          	and	a,#143
 540  005d 1a02          	or	a,(OFST+1,sp)
 541  005f c75305        	ld	21253,a
 542                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 544  0062 7b06          	ld	a,(OFST+5,sp)
 545  0064 c7530f        	ld	21263,a
 546                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 548  0067 7b07          	ld	a,(OFST+6,sp)
 549  0069 c75310        	ld	21264,a
 550                     ; 127 }
 553  006c 5b03          	addw	sp,#3
 554  006e 81            	ret	
 555  006f               LC001:
 556  006f 89            	pushw	x
 557  0070 5f            	clrw	x
 558  0071 89            	pushw	x
 559  0072 ae0000        	ldw	x,#L302
 560  0075 cd0000        	call	_assert_failed
 562  0078 5b04          	addw	sp,#4
 563  007a 81            	ret	
 626                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 626                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 626                     ; 140                   uint16_t TIM2_Pulse,
 626                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 626                     ; 142 {
 627                     .text:	section	.text,new
 628  0000               _TIM2_OC2Init:
 630  0000 89            	pushw	x
 631  0001 88            	push	a
 632       00000001      OFST:	set	1
 635                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 637  0002 9e            	ld	a,xh
 638  0003 4d            	tnz	a
 639  0004 271e          	jreq	L05
 640  0006 9e            	ld	a,xh
 641  0007 a110          	cp	a,#16
 642  0009 2719          	jreq	L05
 643  000b 9e            	ld	a,xh
 644  000c a120          	cp	a,#32
 645  000e 2714          	jreq	L05
 646  0010 9e            	ld	a,xh
 647  0011 a130          	cp	a,#48
 648  0013 270f          	jreq	L05
 649  0015 9e            	ld	a,xh
 650  0016 a160          	cp	a,#96
 651  0018 270a          	jreq	L05
 652  001a 9e            	ld	a,xh
 653  001b a170          	cp	a,#112
 654  001d 2705          	jreq	L05
 655  001f ae0090        	ldw	x,#144
 656  0022 ad4b          	call	LC002
 657  0024               L05:
 658                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 660  0024 7b03          	ld	a,(OFST+2,sp)
 661  0026 2709          	jreq	L06
 662  0028 a111          	cp	a,#17
 663  002a 2705          	jreq	L06
 664  002c ae0091        	ldw	x,#145
 665  002f ad3e          	call	LC002
 666  0031               L06:
 667                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 669  0031 7b08          	ld	a,(OFST+7,sp)
 670  0033 2709          	jreq	L07
 671  0035 a122          	cp	a,#34
 672  0037 2705          	jreq	L07
 673  0039 ae0092        	ldw	x,#146
 674  003c ad31          	call	LC002
 675  003e               L07:
 676                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 678  003e c65308        	ld	a,21256
 679  0041 a4cf          	and	a,#207
 680  0043 c75308        	ld	21256,a
 681                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 681                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 683  0046 7b08          	ld	a,(OFST+7,sp)
 684  0048 a420          	and	a,#32
 685  004a 6b01          	ld	(OFST+0,sp),a
 686  004c 7b03          	ld	a,(OFST+2,sp)
 687  004e a410          	and	a,#16
 688  0050 1a01          	or	a,(OFST+0,sp)
 689  0052 ca5308        	or	a,21256
 690  0055 c75308        	ld	21256,a
 691                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 691                     ; 158                             (uint8_t)TIM2_OCMode);
 693  0058 c65306        	ld	a,21254
 694  005b a48f          	and	a,#143
 695  005d 1a02          	or	a,(OFST+1,sp)
 696  005f c75306        	ld	21254,a
 697                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 699  0062 7b06          	ld	a,(OFST+5,sp)
 700  0064 c75311        	ld	21265,a
 701                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 703  0067 7b07          	ld	a,(OFST+6,sp)
 704  0069 c75312        	ld	21266,a
 705                     ; 164 }
 708  006c 5b03          	addw	sp,#3
 709  006e 81            	ret	
 710  006f               LC002:
 711  006f 89            	pushw	x
 712  0070 5f            	clrw	x
 713  0071 89            	pushw	x
 714  0072 ae0000        	ldw	x,#L302
 715  0075 cd0000        	call	_assert_failed
 717  0078 5b04          	addw	sp,#4
 718  007a 81            	ret	
 781                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 781                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 781                     ; 177                   uint16_t TIM2_Pulse,
 781                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 781                     ; 179 {
 782                     .text:	section	.text,new
 783  0000               _TIM2_OC3Init:
 785  0000 89            	pushw	x
 786  0001 88            	push	a
 787       00000001      OFST:	set	1
 790                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 792  0002 9e            	ld	a,xh
 793  0003 4d            	tnz	a
 794  0004 271e          	jreq	L201
 795  0006 9e            	ld	a,xh
 796  0007 a110          	cp	a,#16
 797  0009 2719          	jreq	L201
 798  000b 9e            	ld	a,xh
 799  000c a120          	cp	a,#32
 800  000e 2714          	jreq	L201
 801  0010 9e            	ld	a,xh
 802  0011 a130          	cp	a,#48
 803  0013 270f          	jreq	L201
 804  0015 9e            	ld	a,xh
 805  0016 a160          	cp	a,#96
 806  0018 270a          	jreq	L201
 807  001a 9e            	ld	a,xh
 808  001b a170          	cp	a,#112
 809  001d 2705          	jreq	L201
 810  001f ae00b5        	ldw	x,#181
 811  0022 ad4b          	call	LC003
 812  0024               L201:
 813                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 815  0024 7b03          	ld	a,(OFST+2,sp)
 816  0026 2709          	jreq	L211
 817  0028 a111          	cp	a,#17
 818  002a 2705          	jreq	L211
 819  002c ae00b6        	ldw	x,#182
 820  002f ad3e          	call	LC003
 821  0031               L211:
 822                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 824  0031 7b08          	ld	a,(OFST+7,sp)
 825  0033 2709          	jreq	L221
 826  0035 a122          	cp	a,#34
 827  0037 2705          	jreq	L221
 828  0039 ae00b7        	ldw	x,#183
 829  003c ad31          	call	LC003
 830  003e               L221:
 831                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 833  003e c65309        	ld	a,21257
 834  0041 a4fc          	and	a,#252
 835  0043 c75309        	ld	21257,a
 836                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 836                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 838  0046 7b08          	ld	a,(OFST+7,sp)
 839  0048 a402          	and	a,#2
 840  004a 6b01          	ld	(OFST+0,sp),a
 841  004c 7b03          	ld	a,(OFST+2,sp)
 842  004e a401          	and	a,#1
 843  0050 1a01          	or	a,(OFST+0,sp)
 844  0052 ca5309        	or	a,21257
 845  0055 c75309        	ld	21257,a
 846                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 846                     ; 192                             (uint8_t)TIM2_OCMode);
 848  0058 c65307        	ld	a,21255
 849  005b a48f          	and	a,#143
 850  005d 1a02          	or	a,(OFST+1,sp)
 851  005f c75307        	ld	21255,a
 852                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 854  0062 7b06          	ld	a,(OFST+5,sp)
 855  0064 c75313        	ld	21267,a
 856                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 858  0067 7b07          	ld	a,(OFST+6,sp)
 859  0069 c75314        	ld	21268,a
 860                     ; 198 }
 863  006c 5b03          	addw	sp,#3
 864  006e 81            	ret	
 865  006f               LC003:
 866  006f 89            	pushw	x
 867  0070 5f            	clrw	x
 868  0071 89            	pushw	x
 869  0072 ae0000        	ldw	x,#L302
 870  0075 cd0000        	call	_assert_failed
 872  0078 5b04          	addw	sp,#4
 873  007a 81            	ret	
1065                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1065                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1065                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1065                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1065                     ; 214                  uint8_t TIM2_ICFilter)
1065                     ; 215 {
1066                     .text:	section	.text,new
1067  0000               _TIM2_ICInit:
1069  0000 89            	pushw	x
1070       00000000      OFST:	set	0
1073                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1075  0001 9e            	ld	a,xh
1076  0002 4d            	tnz	a
1077  0003 270f          	jreq	L431
1078  0005 9e            	ld	a,xh
1079  0006 4a            	dec	a
1080  0007 270b          	jreq	L431
1081  0009 9e            	ld	a,xh
1082  000a a102          	cp	a,#2
1083  000c 2706          	jreq	L431
1084  000e ae00d9        	ldw	x,#217
1085  0011 cd0097        	call	LC004
1086  0014               L431:
1087                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1089  0014 7b02          	ld	a,(OFST+2,sp)
1090  0016 2709          	jreq	L441
1091  0018 a144          	cp	a,#68
1092  001a 2705          	jreq	L441
1093  001c ae00da        	ldw	x,#218
1094  001f ad76          	call	LC004
1095  0021               L441:
1096                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1098  0021 7b05          	ld	a,(OFST+5,sp)
1099  0023 a101          	cp	a,#1
1100  0025 270d          	jreq	L451
1101  0027 a102          	cp	a,#2
1102  0029 2709          	jreq	L451
1103  002b a103          	cp	a,#3
1104  002d 2705          	jreq	L451
1105  002f ae00db        	ldw	x,#219
1106  0032 ad63          	call	LC004
1107  0034               L451:
1108                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1110  0034 7b06          	ld	a,(OFST+6,sp)
1111  0036 2711          	jreq	L461
1112  0038 a104          	cp	a,#4
1113  003a 270d          	jreq	L461
1114  003c a108          	cp	a,#8
1115  003e 2709          	jreq	L461
1116  0040 a10c          	cp	a,#12
1117  0042 2705          	jreq	L461
1118  0044 ae00dc        	ldw	x,#220
1119  0047 ad4e          	call	LC004
1120  0049               L461:
1121                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1123  0049 7b07          	ld	a,(OFST+7,sp)
1124  004b a110          	cp	a,#16
1125  004d 2505          	jrult	L271
1126  004f ae00dd        	ldw	x,#221
1127  0052 ad43          	call	LC004
1128  0054               L271:
1129                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
1131  0054 7b01          	ld	a,(OFST+1,sp)
1132  0056 2614          	jrne	L173
1133                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
1133                     ; 227                    (uint8_t)TIM2_ICSelection,
1133                     ; 228                    (uint8_t)TIM2_ICFilter);
1135  0058 7b07          	ld	a,(OFST+7,sp)
1136  005a 88            	push	a
1137  005b 7b06          	ld	a,(OFST+6,sp)
1138  005d 97            	ld	xl,a
1139  005e 7b03          	ld	a,(OFST+3,sp)
1140  0060 95            	ld	xh,a
1141  0061 cd0000        	call	L3_TI1_Config
1143  0064 84            	pop	a
1144                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1146  0065 7b06          	ld	a,(OFST+6,sp)
1147  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1150  006a 2029          	jra	L373
1151  006c               L173:
1152                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
1154  006c 4a            	dec	a
1155  006d 2614          	jrne	L573
1156                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
1156                     ; 237                    (uint8_t)TIM2_ICSelection,
1156                     ; 238                    (uint8_t)TIM2_ICFilter);
1158  006f 7b07          	ld	a,(OFST+7,sp)
1159  0071 88            	push	a
1160  0072 7b06          	ld	a,(OFST+6,sp)
1161  0074 97            	ld	xl,a
1162  0075 7b03          	ld	a,(OFST+3,sp)
1163  0077 95            	ld	xh,a
1164  0078 cd0000        	call	L5_TI2_Config
1166  007b 84            	pop	a
1167                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1169  007c 7b06          	ld	a,(OFST+6,sp)
1170  007e cd0000        	call	_TIM2_SetIC2Prescaler
1173  0081 2012          	jra	L373
1174  0083               L573:
1175                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
1175                     ; 247                    (uint8_t)TIM2_ICSelection,
1175                     ; 248                    (uint8_t)TIM2_ICFilter);
1177  0083 7b07          	ld	a,(OFST+7,sp)
1178  0085 88            	push	a
1179  0086 7b06          	ld	a,(OFST+6,sp)
1180  0088 97            	ld	xl,a
1181  0089 7b03          	ld	a,(OFST+3,sp)
1182  008b 95            	ld	xh,a
1183  008c cd0000        	call	L7_TI3_Config
1185  008f 84            	pop	a
1186                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1188  0090 7b06          	ld	a,(OFST+6,sp)
1189  0092 cd0000        	call	_TIM2_SetIC3Prescaler
1191  0095               L373:
1192                     ; 253 }
1195  0095 85            	popw	x
1196  0096 81            	ret	
1197  0097               LC004:
1198  0097 89            	pushw	x
1199  0098 5f            	clrw	x
1200  0099 89            	pushw	x
1201  009a ae0000        	ldw	x,#L302
1202  009d cd0000        	call	_assert_failed
1204  00a0 5b04          	addw	sp,#4
1205  00a2 81            	ret	
1296                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1296                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1296                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1296                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1296                     ; 269                      uint8_t TIM2_ICFilter)
1296                     ; 270 {
1297                     .text:	section	.text,new
1298  0000               _TIM2_PWMIConfig:
1300  0000 89            	pushw	x
1301  0001 89            	pushw	x
1302       00000002      OFST:	set	2
1305                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1307                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1309                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1311  0002 9e            	ld	a,xh
1312  0003 4d            	tnz	a
1313  0004 270a          	jreq	L022
1314  0006 9e            	ld	a,xh
1315  0007 4a            	dec	a
1316  0008 2706          	jreq	L022
1317  000a ae0113        	ldw	x,#275
1318  000d cd00b3        	call	LC005
1319  0010               L022:
1320                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1322  0010 7b04          	ld	a,(OFST+2,sp)
1323  0012 270a          	jreq	L032
1324  0014 a144          	cp	a,#68
1325  0016 2706          	jreq	L032
1326  0018 ae0114        	ldw	x,#276
1327  001b cd00b3        	call	LC005
1328  001e               L032:
1329                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1331  001e 7b07          	ld	a,(OFST+5,sp)
1332  0020 a101          	cp	a,#1
1333  0022 270e          	jreq	L042
1334  0024 a102          	cp	a,#2
1335  0026 270a          	jreq	L042
1336  0028 a103          	cp	a,#3
1337  002a 2706          	jreq	L042
1338  002c ae0115        	ldw	x,#277
1339  002f cd00b3        	call	LC005
1340  0032               L042:
1341                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1343  0032 7b08          	ld	a,(OFST+6,sp)
1344  0034 2711          	jreq	L052
1345  0036 a104          	cp	a,#4
1346  0038 270d          	jreq	L052
1347  003a a108          	cp	a,#8
1348  003c 2709          	jreq	L052
1349  003e a10c          	cp	a,#12
1350  0040 2705          	jreq	L052
1351  0042 ae0116        	ldw	x,#278
1352  0045 ad6c          	call	LC005
1353  0047               L052:
1354                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1356  0047 7b04          	ld	a,(OFST+2,sp)
1357  0049 a144          	cp	a,#68
1358  004b 2706          	jreq	L144
1359                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1361  004d a644          	ld	a,#68
1362  004f 6b01          	ld	(OFST-1,sp),a
1364  0051 2002          	jra	L344
1365  0053               L144:
1366                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1368  0053 0f01          	clr	(OFST-1,sp)
1369  0055               L344:
1370                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1372  0055 7b07          	ld	a,(OFST+5,sp)
1373  0057 4a            	dec	a
1374  0058 2604          	jrne	L544
1375                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1377  005a a602          	ld	a,#2
1379  005c 2002          	jra	L744
1380  005e               L544:
1381                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1383  005e a601          	ld	a,#1
1384  0060               L744:
1385  0060 6b02          	ld	(OFST+0,sp),a
1386                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1388  0062 7b03          	ld	a,(OFST+1,sp)
1389  0064 2626          	jrne	L154
1390                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1390                     ; 304                    (uint8_t)TIM2_ICFilter);
1392  0066 7b09          	ld	a,(OFST+7,sp)
1393  0068 88            	push	a
1394  0069 7b08          	ld	a,(OFST+6,sp)
1395  006b 97            	ld	xl,a
1396  006c 7b05          	ld	a,(OFST+3,sp)
1397  006e 95            	ld	xh,a
1398  006f cd0000        	call	L3_TI1_Config
1400  0072 84            	pop	a
1401                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1403  0073 7b08          	ld	a,(OFST+6,sp)
1404  0075 cd0000        	call	_TIM2_SetIC1Prescaler
1406                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1408  0078 7b09          	ld	a,(OFST+7,sp)
1409  007a 88            	push	a
1410  007b 7b03          	ld	a,(OFST+1,sp)
1411  007d 97            	ld	xl,a
1412  007e 7b02          	ld	a,(OFST+0,sp)
1413  0080 95            	ld	xh,a
1414  0081 cd0000        	call	L5_TI2_Config
1416  0084 84            	pop	a
1417                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1419  0085 7b08          	ld	a,(OFST+6,sp)
1420  0087 cd0000        	call	_TIM2_SetIC2Prescaler
1423  008a 2024          	jra	L354
1424  008c               L154:
1425                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1425                     ; 319                    (uint8_t)TIM2_ICFilter);
1427  008c 7b09          	ld	a,(OFST+7,sp)
1428  008e 88            	push	a
1429  008f 7b08          	ld	a,(OFST+6,sp)
1430  0091 97            	ld	xl,a
1431  0092 7b05          	ld	a,(OFST+3,sp)
1432  0094 95            	ld	xh,a
1433  0095 cd0000        	call	L5_TI2_Config
1435  0098 84            	pop	a
1436                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1438  0099 7b08          	ld	a,(OFST+6,sp)
1439  009b cd0000        	call	_TIM2_SetIC2Prescaler
1441                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1443  009e 7b09          	ld	a,(OFST+7,sp)
1444  00a0 88            	push	a
1445  00a1 7b03          	ld	a,(OFST+1,sp)
1446  00a3 97            	ld	xl,a
1447  00a4 7b02          	ld	a,(OFST+0,sp)
1448  00a6 95            	ld	xh,a
1449  00a7 cd0000        	call	L3_TI1_Config
1451  00aa 84            	pop	a
1452                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1454  00ab 7b08          	ld	a,(OFST+6,sp)
1455  00ad cd0000        	call	_TIM2_SetIC1Prescaler
1457  00b0               L354:
1458                     ; 330 }
1461  00b0 5b04          	addw	sp,#4
1462  00b2 81            	ret	
1463  00b3               LC005:
1464  00b3 89            	pushw	x
1465  00b4 5f            	clrw	x
1466  00b5 89            	pushw	x
1467  00b6 ae0000        	ldw	x,#L302
1468  00b9 cd0000        	call	_assert_failed
1470  00bc 5b04          	addw	sp,#4
1471  00be 81            	ret	
1527                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1527                     ; 340 {
1528                     .text:	section	.text,new
1529  0000               _TIM2_Cmd:
1531  0000 88            	push	a
1532       00000000      OFST:	set	0
1535                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1537  0001 4d            	tnz	a
1538  0002 2711          	jreq	L203
1539  0004 4a            	dec	a
1540  0005 270e          	jreq	L203
1541  0007 ae0156        	ldw	x,#342
1542  000a 89            	pushw	x
1543  000b 5f            	clrw	x
1544  000c 89            	pushw	x
1545  000d ae0000        	ldw	x,#L302
1546  0010 cd0000        	call	_assert_failed
1548  0013 5b04          	addw	sp,#4
1549  0015               L203:
1550                     ; 345     if (NewState != DISABLE)
1552  0015 7b01          	ld	a,(OFST+1,sp)
1553  0017 2706          	jreq	L305
1554                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1556  0019 72105300      	bset	21248,#0
1558  001d 2004          	jra	L505
1559  001f               L305:
1560                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1562  001f 72115300      	bres	21248,#0
1563  0023               L505:
1564                     ; 353 }
1567  0023 84            	pop	a
1568  0024 81            	ret	
1648                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1648                     ; 370 {
1649                     .text:	section	.text,new
1650  0000               _TIM2_ITConfig:
1652  0000 89            	pushw	x
1653       00000000      OFST:	set	0
1656                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1658  0001 9e            	ld	a,xh
1659  0002 4d            	tnz	a
1660  0003 2705          	jreq	L013
1661  0005 9e            	ld	a,xh
1662  0006 a110          	cp	a,#16
1663  0008 2505          	jrult	L213
1664  000a               L013:
1665  000a ae0174        	ldw	x,#372
1666  000d ad22          	call	LC006
1667  000f               L213:
1668                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1670  000f 7b02          	ld	a,(OFST+2,sp)
1671  0011 2708          	jreq	L223
1672  0013 4a            	dec	a
1673  0014 2705          	jreq	L223
1674  0016 ae0175        	ldw	x,#373
1675  0019 ad16          	call	LC006
1676  001b               L223:
1677                     ; 375     if (NewState != DISABLE)
1679  001b 7b02          	ld	a,(OFST+2,sp)
1680  001d 2707          	jreq	L545
1681                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1683  001f c65301        	ld	a,21249
1684  0022 1a01          	or	a,(OFST+1,sp)
1686  0024 2006          	jra	L745
1687  0026               L545:
1688                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1690  0026 7b01          	ld	a,(OFST+1,sp)
1691  0028 43            	cpl	a
1692  0029 c45301        	and	a,21249
1693  002c               L745:
1694  002c c75301        	ld	21249,a
1695                     ; 385 }
1698  002f 85            	popw	x
1699  0030 81            	ret	
1700  0031               LC006:
1701  0031 89            	pushw	x
1702  0032 5f            	clrw	x
1703  0033 89            	pushw	x
1704  0034 ae0000        	ldw	x,#L302
1705  0037 cd0000        	call	_assert_failed
1707  003a 5b04          	addw	sp,#4
1708  003c 81            	ret	
1745                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1745                     ; 395 {
1746                     .text:	section	.text,new
1747  0000               _TIM2_UpdateDisableConfig:
1749  0000 88            	push	a
1750       00000000      OFST:	set	0
1753                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1755  0001 4d            	tnz	a
1756  0002 2711          	jreq	L433
1757  0004 4a            	dec	a
1758  0005 270e          	jreq	L433
1759  0007 ae018d        	ldw	x,#397
1760  000a 89            	pushw	x
1761  000b 5f            	clrw	x
1762  000c 89            	pushw	x
1763  000d ae0000        	ldw	x,#L302
1764  0010 cd0000        	call	_assert_failed
1766  0013 5b04          	addw	sp,#4
1767  0015               L433:
1768                     ; 400     if (NewState != DISABLE)
1770  0015 7b01          	ld	a,(OFST+1,sp)
1771  0017 2706          	jreq	L765
1772                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1774  0019 72125300      	bset	21248,#1
1776  001d 2004          	jra	L175
1777  001f               L765:
1778                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1780  001f 72135300      	bres	21248,#1
1781  0023               L175:
1782                     ; 408 }
1785  0023 84            	pop	a
1786  0024 81            	ret	
1845                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1845                     ; 419 {
1846                     .text:	section	.text,new
1847  0000               _TIM2_UpdateRequestConfig:
1849  0000 88            	push	a
1850       00000000      OFST:	set	0
1853                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1855  0001 4d            	tnz	a
1856  0002 2711          	jreq	L643
1857  0004 4a            	dec	a
1858  0005 270e          	jreq	L643
1859  0007 ae01a5        	ldw	x,#421
1860  000a 89            	pushw	x
1861  000b 5f            	clrw	x
1862  000c 89            	pushw	x
1863  000d ae0000        	ldw	x,#L302
1864  0010 cd0000        	call	_assert_failed
1866  0013 5b04          	addw	sp,#4
1867  0015               L643:
1868                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1870  0015 7b01          	ld	a,(OFST+1,sp)
1871  0017 2706          	jreq	L126
1872                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1874  0019 72145300      	bset	21248,#2
1876  001d 2004          	jra	L326
1877  001f               L126:
1878                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1880  001f 72155300      	bres	21248,#2
1881  0023               L326:
1882                     ; 432 }
1885  0023 84            	pop	a
1886  0024 81            	ret	
1944                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1944                     ; 444 {
1945                     .text:	section	.text,new
1946  0000               _TIM2_SelectOnePulseMode:
1948  0000 88            	push	a
1949       00000000      OFST:	set	0
1952                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1954  0001 a101          	cp	a,#1
1955  0003 2711          	jreq	L063
1956  0005 4d            	tnz	a
1957  0006 270e          	jreq	L063
1958  0008 ae01be        	ldw	x,#446
1959  000b 89            	pushw	x
1960  000c 5f            	clrw	x
1961  000d 89            	pushw	x
1962  000e ae0000        	ldw	x,#L302
1963  0011 cd0000        	call	_assert_failed
1965  0014 5b04          	addw	sp,#4
1966  0016               L063:
1967                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1969  0016 7b01          	ld	a,(OFST+1,sp)
1970  0018 2706          	jreq	L356
1971                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1973  001a 72165300      	bset	21248,#3
1975  001e 2004          	jra	L556
1976  0020               L356:
1977                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1979  0020 72175300      	bres	21248,#3
1980  0024               L556:
1981                     ; 458 }
1984  0024 84            	pop	a
1985  0025 81            	ret	
2054                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2054                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2054                     ; 491 {
2055                     .text:	section	.text,new
2056  0000               _TIM2_PrescalerConfig:
2058  0000 89            	pushw	x
2059       00000000      OFST:	set	0
2062                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2064  0001 9f            	ld	a,xl
2065  0002 4d            	tnz	a
2066  0003 2709          	jreq	L273
2067  0005 9f            	ld	a,xl
2068  0006 4a            	dec	a
2069  0007 2705          	jreq	L273
2070  0009 ae01ed        	ldw	x,#493
2071  000c ad51          	call	LC007
2072  000e               L273:
2073                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2075  000e 7b01          	ld	a,(OFST+1,sp)
2076  0010 2743          	jreq	L204
2077  0012 a101          	cp	a,#1
2078  0014 273f          	jreq	L204
2079  0016 a102          	cp	a,#2
2080  0018 273b          	jreq	L204
2081  001a a103          	cp	a,#3
2082  001c 2737          	jreq	L204
2083  001e a104          	cp	a,#4
2084  0020 2733          	jreq	L204
2085  0022 a105          	cp	a,#5
2086  0024 272f          	jreq	L204
2087  0026 a106          	cp	a,#6
2088  0028 272b          	jreq	L204
2089  002a a107          	cp	a,#7
2090  002c 2727          	jreq	L204
2091  002e a108          	cp	a,#8
2092  0030 2723          	jreq	L204
2093  0032 a109          	cp	a,#9
2094  0034 271f          	jreq	L204
2095  0036 a10a          	cp	a,#10
2096  0038 271b          	jreq	L204
2097  003a a10b          	cp	a,#11
2098  003c 2717          	jreq	L204
2099  003e a10c          	cp	a,#12
2100  0040 2713          	jreq	L204
2101  0042 a10d          	cp	a,#13
2102  0044 270f          	jreq	L204
2103  0046 a10e          	cp	a,#14
2104  0048 270b          	jreq	L204
2105  004a a10f          	cp	a,#15
2106  004c 2707          	jreq	L204
2107  004e ae01ee        	ldw	x,#494
2108  0051 ad0c          	call	LC007
2109  0053 7b01          	ld	a,(OFST+1,sp)
2110  0055               L204:
2111                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
2113  0055 c7530c        	ld	21260,a
2114                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2116  0058 7b02          	ld	a,(OFST+2,sp)
2117  005a c75304        	ld	21252,a
2118                     ; 501 }
2121  005d 85            	popw	x
2122  005e 81            	ret	
2123  005f               LC007:
2124  005f 89            	pushw	x
2125  0060 5f            	clrw	x
2126  0061 89            	pushw	x
2127  0062 ae0000        	ldw	x,#L302
2128  0065 cd0000        	call	_assert_failed
2130  0068 5b04          	addw	sp,#4
2131  006a 81            	ret	
2190                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2190                     ; 513 {
2191                     .text:	section	.text,new
2192  0000               _TIM2_ForcedOC1Config:
2194  0000 88            	push	a
2195       00000000      OFST:	set	0
2198                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2200  0001 a150          	cp	a,#80
2201  0003 2712          	jreq	L414
2202  0005 a140          	cp	a,#64
2203  0007 270e          	jreq	L414
2204  0009 ae0203        	ldw	x,#515
2205  000c 89            	pushw	x
2206  000d 5f            	clrw	x
2207  000e 89            	pushw	x
2208  000f ae0000        	ldw	x,#L302
2209  0012 cd0000        	call	_assert_failed
2211  0015 5b04          	addw	sp,#4
2212  0017               L414:
2213                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2213                     ; 519                               | (uint8_t)TIM2_ForcedAction);
2215  0017 c65305        	ld	a,21253
2216  001a a48f          	and	a,#143
2217  001c 1a01          	or	a,(OFST+1,sp)
2218  001e c75305        	ld	21253,a
2219                     ; 520 }
2222  0021 84            	pop	a
2223  0022 81            	ret	
2260                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2260                     ; 532 {
2261                     .text:	section	.text,new
2262  0000               _TIM2_ForcedOC2Config:
2264  0000 88            	push	a
2265       00000000      OFST:	set	0
2268                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2270  0001 a150          	cp	a,#80
2271  0003 2712          	jreq	L624
2272  0005 a140          	cp	a,#64
2273  0007 270e          	jreq	L624
2274  0009 ae0216        	ldw	x,#534
2275  000c 89            	pushw	x
2276  000d 5f            	clrw	x
2277  000e 89            	pushw	x
2278  000f ae0000        	ldw	x,#L302
2279  0012 cd0000        	call	_assert_failed
2281  0015 5b04          	addw	sp,#4
2282  0017               L624:
2283                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2283                     ; 538                             | (uint8_t)TIM2_ForcedAction);
2285  0017 c65306        	ld	a,21254
2286  001a a48f          	and	a,#143
2287  001c 1a01          	or	a,(OFST+1,sp)
2288  001e c75306        	ld	21254,a
2289                     ; 539 }
2292  0021 84            	pop	a
2293  0022 81            	ret	
2330                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2330                     ; 551 {
2331                     .text:	section	.text,new
2332  0000               _TIM2_ForcedOC3Config:
2334  0000 88            	push	a
2335       00000000      OFST:	set	0
2338                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2340  0001 a150          	cp	a,#80
2341  0003 2712          	jreq	L044
2342  0005 a140          	cp	a,#64
2343  0007 270e          	jreq	L044
2344  0009 ae0229        	ldw	x,#553
2345  000c 89            	pushw	x
2346  000d 5f            	clrw	x
2347  000e 89            	pushw	x
2348  000f ae0000        	ldw	x,#L302
2349  0012 cd0000        	call	_assert_failed
2351  0015 5b04          	addw	sp,#4
2352  0017               L044:
2353                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2353                     ; 557                               | (uint8_t)TIM2_ForcedAction);
2355  0017 c65307        	ld	a,21255
2356  001a a48f          	and	a,#143
2357  001c 1a01          	or	a,(OFST+1,sp)
2358  001e c75307        	ld	21255,a
2359                     ; 558 }
2362  0021 84            	pop	a
2363  0022 81            	ret	
2400                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2400                     ; 568 {
2401                     .text:	section	.text,new
2402  0000               _TIM2_ARRPreloadConfig:
2404  0000 88            	push	a
2405       00000000      OFST:	set	0
2408                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2410  0001 4d            	tnz	a
2411  0002 2711          	jreq	L254
2412  0004 4a            	dec	a
2413  0005 270e          	jreq	L254
2414  0007 ae023a        	ldw	x,#570
2415  000a 89            	pushw	x
2416  000b 5f            	clrw	x
2417  000c 89            	pushw	x
2418  000d ae0000        	ldw	x,#L302
2419  0010 cd0000        	call	_assert_failed
2421  0013 5b04          	addw	sp,#4
2422  0015               L254:
2423                     ; 573     if (NewState != DISABLE)
2425  0015 7b01          	ld	a,(OFST+1,sp)
2426  0017 2706          	jreq	L1101
2427                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2429  0019 721e5300      	bset	21248,#7
2431  001d 2004          	jra	L3101
2432  001f               L1101:
2433                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2435  001f 721f5300      	bres	21248,#7
2436  0023               L3101:
2437                     ; 581 }
2440  0023 84            	pop	a
2441  0024 81            	ret	
2478                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2478                     ; 591 {
2479                     .text:	section	.text,new
2480  0000               _TIM2_OC1PreloadConfig:
2482  0000 88            	push	a
2483       00000000      OFST:	set	0
2486                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2488  0001 4d            	tnz	a
2489  0002 2711          	jreq	L464
2490  0004 4a            	dec	a
2491  0005 270e          	jreq	L464
2492  0007 ae0251        	ldw	x,#593
2493  000a 89            	pushw	x
2494  000b 5f            	clrw	x
2495  000c 89            	pushw	x
2496  000d ae0000        	ldw	x,#L302
2497  0010 cd0000        	call	_assert_failed
2499  0013 5b04          	addw	sp,#4
2500  0015               L464:
2501                     ; 596     if (NewState != DISABLE)
2503  0015 7b01          	ld	a,(OFST+1,sp)
2504  0017 2706          	jreq	L3301
2505                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2507  0019 72165305      	bset	21253,#3
2509  001d 2004          	jra	L5301
2510  001f               L3301:
2511                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2513  001f 72175305      	bres	21253,#3
2514  0023               L5301:
2515                     ; 604 }
2518  0023 84            	pop	a
2519  0024 81            	ret	
2556                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2556                     ; 614 {
2557                     .text:	section	.text,new
2558  0000               _TIM2_OC2PreloadConfig:
2560  0000 88            	push	a
2561       00000000      OFST:	set	0
2564                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2566  0001 4d            	tnz	a
2567  0002 2711          	jreq	L674
2568  0004 4a            	dec	a
2569  0005 270e          	jreq	L674
2570  0007 ae0268        	ldw	x,#616
2571  000a 89            	pushw	x
2572  000b 5f            	clrw	x
2573  000c 89            	pushw	x
2574  000d ae0000        	ldw	x,#L302
2575  0010 cd0000        	call	_assert_failed
2577  0013 5b04          	addw	sp,#4
2578  0015               L674:
2579                     ; 619     if (NewState != DISABLE)
2581  0015 7b01          	ld	a,(OFST+1,sp)
2582  0017 2706          	jreq	L5501
2583                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2585  0019 72165306      	bset	21254,#3
2587  001d 2004          	jra	L7501
2588  001f               L5501:
2589                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2591  001f 72175306      	bres	21254,#3
2592  0023               L7501:
2593                     ; 627 }
2596  0023 84            	pop	a
2597  0024 81            	ret	
2634                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2634                     ; 637 {
2635                     .text:	section	.text,new
2636  0000               _TIM2_OC3PreloadConfig:
2638  0000 88            	push	a
2639       00000000      OFST:	set	0
2642                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2644  0001 4d            	tnz	a
2645  0002 2711          	jreq	L015
2646  0004 4a            	dec	a
2647  0005 270e          	jreq	L015
2648  0007 ae027f        	ldw	x,#639
2649  000a 89            	pushw	x
2650  000b 5f            	clrw	x
2651  000c 89            	pushw	x
2652  000d ae0000        	ldw	x,#L302
2653  0010 cd0000        	call	_assert_failed
2655  0013 5b04          	addw	sp,#4
2656  0015               L015:
2657                     ; 642     if (NewState != DISABLE)
2659  0015 7b01          	ld	a,(OFST+1,sp)
2660  0017 2706          	jreq	L7701
2661                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2663  0019 72165307      	bset	21255,#3
2665  001d 2004          	jra	L1011
2666  001f               L7701:
2667                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2669  001f 72175307      	bres	21255,#3
2670  0023               L1011:
2671                     ; 650 }
2674  0023 84            	pop	a
2675  0024 81            	ret	
2749                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2749                     ; 664 {
2750                     .text:	section	.text,new
2751  0000               _TIM2_GenerateEvent:
2753  0000 88            	push	a
2754       00000000      OFST:	set	0
2757                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2759  0001 4d            	tnz	a
2760  0002 260e          	jrne	L025
2761  0004 ae029a        	ldw	x,#666
2762  0007 89            	pushw	x
2763  0008 5f            	clrw	x
2764  0009 89            	pushw	x
2765  000a ae0000        	ldw	x,#L302
2766  000d cd0000        	call	_assert_failed
2768  0010 5b04          	addw	sp,#4
2769  0012               L025:
2770                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2772  0012 7b01          	ld	a,(OFST+1,sp)
2773  0014 c75304        	ld	21252,a
2774                     ; 670 }
2777  0017 84            	pop	a
2778  0018 81            	ret	
2815                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2815                     ; 682 {
2816                     .text:	section	.text,new
2817  0000               _TIM2_OC1PolarityConfig:
2819  0000 88            	push	a
2820       00000000      OFST:	set	0
2823                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2825  0001 4d            	tnz	a
2826  0002 2712          	jreq	L235
2827  0004 a122          	cp	a,#34
2828  0006 270e          	jreq	L235
2829  0008 ae02ac        	ldw	x,#684
2830  000b 89            	pushw	x
2831  000c 5f            	clrw	x
2832  000d 89            	pushw	x
2833  000e ae0000        	ldw	x,#L302
2834  0011 cd0000        	call	_assert_failed
2836  0014 5b04          	addw	sp,#4
2837  0016               L235:
2838                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2840  0016 7b01          	ld	a,(OFST+1,sp)
2841  0018 2706          	jreq	L3511
2842                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2844  001a 72125308      	bset	21256,#1
2846  001e 2004          	jra	L5511
2847  0020               L3511:
2848                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2850  0020 72135308      	bres	21256,#1
2851  0024               L5511:
2852                     ; 695 }
2855  0024 84            	pop	a
2856  0025 81            	ret	
2893                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2893                     ; 707 {
2894                     .text:	section	.text,new
2895  0000               _TIM2_OC2PolarityConfig:
2897  0000 88            	push	a
2898       00000000      OFST:	set	0
2901                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2903  0001 4d            	tnz	a
2904  0002 2712          	jreq	L445
2905  0004 a122          	cp	a,#34
2906  0006 270e          	jreq	L445
2907  0008 ae02c5        	ldw	x,#709
2908  000b 89            	pushw	x
2909  000c 5f            	clrw	x
2910  000d 89            	pushw	x
2911  000e ae0000        	ldw	x,#L302
2912  0011 cd0000        	call	_assert_failed
2914  0014 5b04          	addw	sp,#4
2915  0016               L445:
2916                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2918  0016 7b01          	ld	a,(OFST+1,sp)
2919  0018 2706          	jreq	L5711
2920                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2922  001a 721a5308      	bset	21256,#5
2924  001e 2004          	jra	L7711
2925  0020               L5711:
2926                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2928  0020 721b5308      	bres	21256,#5
2929  0024               L7711:
2930                     ; 720 }
2933  0024 84            	pop	a
2934  0025 81            	ret	
2971                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2971                     ; 732 {
2972                     .text:	section	.text,new
2973  0000               _TIM2_OC3PolarityConfig:
2975  0000 88            	push	a
2976       00000000      OFST:	set	0
2979                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2981  0001 4d            	tnz	a
2982  0002 2712          	jreq	L655
2983  0004 a122          	cp	a,#34
2984  0006 270e          	jreq	L655
2985  0008 ae02de        	ldw	x,#734
2986  000b 89            	pushw	x
2987  000c 5f            	clrw	x
2988  000d 89            	pushw	x
2989  000e ae0000        	ldw	x,#L302
2990  0011 cd0000        	call	_assert_failed
2992  0014 5b04          	addw	sp,#4
2993  0016               L655:
2994                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2996  0016 7b01          	ld	a,(OFST+1,sp)
2997  0018 2706          	jreq	L7121
2998                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3000  001a 72125309      	bset	21257,#1
3002  001e 2004          	jra	L1221
3003  0020               L7121:
3004                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3006  0020 72135309      	bres	21257,#1
3007  0024               L1221:
3008                     ; 745 }
3011  0024 84            	pop	a
3012  0025 81            	ret	
3058                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3058                     ; 760 {
3059                     .text:	section	.text,new
3060  0000               _TIM2_CCxCmd:
3062  0000 89            	pushw	x
3063       00000000      OFST:	set	0
3066                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3068  0001 9e            	ld	a,xh
3069  0002 4d            	tnz	a
3070  0003 270e          	jreq	L075
3071  0005 9e            	ld	a,xh
3072  0006 4a            	dec	a
3073  0007 270a          	jreq	L075
3074  0009 9e            	ld	a,xh
3075  000a a102          	cp	a,#2
3076  000c 2705          	jreq	L075
3077  000e ae02fa        	ldw	x,#762
3078  0011 ad43          	call	LC008
3079  0013               L075:
3080                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3082  0013 7b02          	ld	a,(OFST+2,sp)
3083  0015 2708          	jreq	L006
3084  0017 4a            	dec	a
3085  0018 2705          	jreq	L006
3086  001a ae02fb        	ldw	x,#763
3087  001d ad37          	call	LC008
3088  001f               L006:
3089                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
3091  001f 7b01          	ld	a,(OFST+1,sp)
3092  0021 2610          	jrne	L5421
3093                     ; 768         if (NewState != DISABLE)
3095  0023 7b02          	ld	a,(OFST+2,sp)
3096  0025 2706          	jreq	L7421
3097                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3099  0027 72105308      	bset	21256,#0
3101  002b 2027          	jra	L3521
3102  002d               L7421:
3103                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3105  002d 72115308      	bres	21256,#0
3106  0031 2021          	jra	L3521
3107  0033               L5421:
3108                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
3110  0033 4a            	dec	a
3111  0034 2610          	jrne	L5521
3112                     ; 781         if (NewState != DISABLE)
3114  0036 7b02          	ld	a,(OFST+2,sp)
3115  0038 2706          	jreq	L7521
3116                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3118  003a 72185308      	bset	21256,#4
3120  003e 2014          	jra	L3521
3121  0040               L7521:
3122                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3124  0040 72195308      	bres	21256,#4
3125  0044 200e          	jra	L3521
3126  0046               L5521:
3127                     ; 793         if (NewState != DISABLE)
3129  0046 7b02          	ld	a,(OFST+2,sp)
3130  0048 2706          	jreq	L5621
3131                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3133  004a 72105309      	bset	21257,#0
3135  004e 2004          	jra	L3521
3136  0050               L5621:
3137                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3139  0050 72115309      	bres	21257,#0
3140  0054               L3521:
3141                     ; 802 }
3144  0054 85            	popw	x
3145  0055 81            	ret	
3146  0056               LC008:
3147  0056 89            	pushw	x
3148  0057 5f            	clrw	x
3149  0058 89            	pushw	x
3150  0059 ae0000        	ldw	x,#L302
3151  005c cd0000        	call	_assert_failed
3153  005f 5b04          	addw	sp,#4
3154  0061 81            	ret	
3200                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3200                     ; 825 {
3201                     .text:	section	.text,new
3202  0000               _TIM2_SelectOCxM:
3204  0000 89            	pushw	x
3205       00000000      OFST:	set	0
3208                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3210  0001 9e            	ld	a,xh
3211  0002 4d            	tnz	a
3212  0003 270e          	jreq	L216
3213  0005 9e            	ld	a,xh
3214  0006 4a            	dec	a
3215  0007 270a          	jreq	L216
3216  0009 9e            	ld	a,xh
3217  000a a102          	cp	a,#2
3218  000c 2705          	jreq	L216
3219  000e ae033b        	ldw	x,#827
3220  0011 ad5c          	call	LC009
3221  0013               L216:
3222                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3224  0013 7b02          	ld	a,(OFST+2,sp)
3225  0015 2721          	jreq	L226
3226  0017 a110          	cp	a,#16
3227  0019 271d          	jreq	L226
3228  001b a120          	cp	a,#32
3229  001d 2719          	jreq	L226
3230  001f a130          	cp	a,#48
3231  0021 2715          	jreq	L226
3232  0023 a160          	cp	a,#96
3233  0025 2711          	jreq	L226
3234  0027 a170          	cp	a,#112
3235  0029 270d          	jreq	L226
3236  002b a150          	cp	a,#80
3237  002d 2709          	jreq	L226
3238  002f a140          	cp	a,#64
3239  0031 2705          	jreq	L226
3240  0033 ae033c        	ldw	x,#828
3241  0036 ad37          	call	LC009
3242  0038               L226:
3243                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
3245  0038 7b01          	ld	a,(OFST+1,sp)
3246  003a 2610          	jrne	L3131
3247                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3249  003c 72115308      	bres	21256,#0
3250                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3250                     ; 837                                | (uint8_t)TIM2_OCMode);
3252  0040 c65305        	ld	a,21253
3253  0043 a48f          	and	a,#143
3254  0045 1a02          	or	a,(OFST+2,sp)
3255  0047 c75305        	ld	21253,a
3257  004a 2021          	jra	L5131
3258  004c               L3131:
3259                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
3261  004c 4a            	dec	a
3262  004d 2610          	jrne	L7131
3263                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3265  004f 72195308      	bres	21256,#4
3266                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3266                     ; 846                                 | (uint8_t)TIM2_OCMode);
3268  0053 c65306        	ld	a,21254
3269  0056 a48f          	and	a,#143
3270  0058 1a02          	or	a,(OFST+2,sp)
3271  005a c75306        	ld	21254,a
3273  005d 200e          	jra	L5131
3274  005f               L7131:
3275                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3277  005f 72115309      	bres	21257,#0
3278                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3278                     ; 855                                 | (uint8_t)TIM2_OCMode);
3280  0063 c65307        	ld	a,21255
3281  0066 a48f          	and	a,#143
3282  0068 1a02          	or	a,(OFST+2,sp)
3283  006a c75307        	ld	21255,a
3284  006d               L5131:
3285                     ; 857 }
3288  006d 85            	popw	x
3289  006e 81            	ret	
3290  006f               LC009:
3291  006f 89            	pushw	x
3292  0070 5f            	clrw	x
3293  0071 89            	pushw	x
3294  0072 ae0000        	ldw	x,#L302
3295  0075 cd0000        	call	_assert_failed
3297  0078 5b04          	addw	sp,#4
3298  007a 81            	ret	
3330                     ; 866 void TIM2_SetCounter(uint16_t Counter)
3330                     ; 867 {
3331                     .text:	section	.text,new
3332  0000               _TIM2_SetCounter:
3336                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
3338  0000 9e            	ld	a,xh
3339  0001 c7530a        	ld	21258,a
3340                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
3342  0004 9f            	ld	a,xl
3343  0005 c7530b        	ld	21259,a
3344                     ; 872 }
3347  0008 81            	ret	
3379                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
3379                     ; 882 {
3380                     .text:	section	.text,new
3381  0000               _TIM2_SetAutoreload:
3385                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3387  0000 9e            	ld	a,xh
3388  0001 c7530d        	ld	21261,a
3389                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
3391  0004 9f            	ld	a,xl
3392  0005 c7530e        	ld	21262,a
3393                     ; 888 }
3396  0008 81            	ret	
3428                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
3428                     ; 898 {
3429                     .text:	section	.text,new
3430  0000               _TIM2_SetCompare1:
3434                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3436  0000 9e            	ld	a,xh
3437  0001 c7530f        	ld	21263,a
3438                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
3440  0004 9f            	ld	a,xl
3441  0005 c75310        	ld	21264,a
3442                     ; 903 }
3445  0008 81            	ret	
3477                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
3477                     ; 913 {
3478                     .text:	section	.text,new
3479  0000               _TIM2_SetCompare2:
3483                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3485  0000 9e            	ld	a,xh
3486  0001 c75311        	ld	21265,a
3487                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
3489  0004 9f            	ld	a,xl
3490  0005 c75312        	ld	21266,a
3491                     ; 918 }
3494  0008 81            	ret	
3526                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
3526                     ; 928 {
3527                     .text:	section	.text,new
3528  0000               _TIM2_SetCompare3:
3532                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3534  0000 9e            	ld	a,xh
3535  0001 c75313        	ld	21267,a
3536                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
3538  0004 9f            	ld	a,xl
3539  0005 c75314        	ld	21268,a
3540                     ; 933 }
3543  0008 81            	ret	
3580                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3580                     ; 947 {
3581                     .text:	section	.text,new
3582  0000               _TIM2_SetIC1Prescaler:
3584  0000 88            	push	a
3585       00000000      OFST:	set	0
3588                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3590  0001 4d            	tnz	a
3591  0002 271a          	jreq	L646
3592  0004 a104          	cp	a,#4
3593  0006 2716          	jreq	L646
3594  0008 a108          	cp	a,#8
3595  000a 2712          	jreq	L646
3596  000c a10c          	cp	a,#12
3597  000e 270e          	jreq	L646
3598  0010 ae03b5        	ldw	x,#949
3599  0013 89            	pushw	x
3600  0014 5f            	clrw	x
3601  0015 89            	pushw	x
3602  0016 ae0000        	ldw	x,#L302
3603  0019 cd0000        	call	_assert_failed
3605  001c 5b04          	addw	sp,#4
3606  001e               L646:
3607                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3607                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
3609  001e c65305        	ld	a,21253
3610  0021 a4f3          	and	a,#243
3611  0023 1a01          	or	a,(OFST+1,sp)
3612  0025 c75305        	ld	21253,a
3613                     ; 954 }
3616  0028 84            	pop	a
3617  0029 81            	ret	
3654                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3654                     ; 967 {
3655                     .text:	section	.text,new
3656  0000               _TIM2_SetIC2Prescaler:
3658  0000 88            	push	a
3659       00000000      OFST:	set	0
3662                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3664  0001 4d            	tnz	a
3665  0002 271a          	jreq	L066
3666  0004 a104          	cp	a,#4
3667  0006 2716          	jreq	L066
3668  0008 a108          	cp	a,#8
3669  000a 2712          	jreq	L066
3670  000c a10c          	cp	a,#12
3671  000e 270e          	jreq	L066
3672  0010 ae03c9        	ldw	x,#969
3673  0013 89            	pushw	x
3674  0014 5f            	clrw	x
3675  0015 89            	pushw	x
3676  0016 ae0000        	ldw	x,#L302
3677  0019 cd0000        	call	_assert_failed
3679  001c 5b04          	addw	sp,#4
3680  001e               L066:
3681                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3681                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3683  001e c65306        	ld	a,21254
3684  0021 a4f3          	and	a,#243
3685  0023 1a01          	or	a,(OFST+1,sp)
3686  0025 c75306        	ld	21254,a
3687                     ; 974 }
3690  0028 84            	pop	a
3691  0029 81            	ret	
3728                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3728                     ; 987 {
3729                     .text:	section	.text,new
3730  0000               _TIM2_SetIC3Prescaler:
3732  0000 88            	push	a
3733       00000000      OFST:	set	0
3736                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3738  0001 4d            	tnz	a
3739  0002 271a          	jreq	L276
3740  0004 a104          	cp	a,#4
3741  0006 2716          	jreq	L276
3742  0008 a108          	cp	a,#8
3743  000a 2712          	jreq	L276
3744  000c a10c          	cp	a,#12
3745  000e 270e          	jreq	L276
3746  0010 ae03de        	ldw	x,#990
3747  0013 89            	pushw	x
3748  0014 5f            	clrw	x
3749  0015 89            	pushw	x
3750  0016 ae0000        	ldw	x,#L302
3751  0019 cd0000        	call	_assert_failed
3753  001c 5b04          	addw	sp,#4
3754  001e               L276:
3755                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3755                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3757  001e c65307        	ld	a,21255
3758  0021 a4f3          	and	a,#243
3759  0023 1a01          	or	a,(OFST+1,sp)
3760  0025 c75307        	ld	21255,a
3761                     ; 994 }
3764  0028 84            	pop	a
3765  0029 81            	ret	
3811                     ; 1001 uint16_t TIM2_GetCapture1(void)
3811                     ; 1002 {
3812                     .text:	section	.text,new
3813  0000               _TIM2_GetCapture1:
3815  0000 5204          	subw	sp,#4
3816       00000004      OFST:	set	4
3819                     ; 1004     uint16_t tmpccr1 = 0;
3821                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3825                     ; 1007     tmpccr1h = TIM2->CCR1H;
3827  0002 c6530f        	ld	a,21263
3828  0005 6b02          	ld	(OFST-2,sp),a
3829                     ; 1008     tmpccr1l = TIM2->CCR1L;
3831  0007 c65310        	ld	a,21264
3832  000a 6b01          	ld	(OFST-3,sp),a
3833                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3835  000c 5f            	clrw	x
3836  000d 97            	ld	xl,a
3837  000e 1f03          	ldw	(OFST-1,sp),x
3838                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3840  0010 5f            	clrw	x
3841  0011 7b02          	ld	a,(OFST-2,sp)
3842  0013 97            	ld	xl,a
3843  0014 7b04          	ld	a,(OFST+0,sp)
3844  0016 01            	rrwa	x,a
3845  0017 1a03          	or	a,(OFST-1,sp)
3846  0019 01            	rrwa	x,a
3847                     ; 1013     return (uint16_t)tmpccr1;
3851  001a 5b04          	addw	sp,#4
3852  001c 81            	ret	
3898                     ; 1021 uint16_t TIM2_GetCapture2(void)
3898                     ; 1022 {
3899                     .text:	section	.text,new
3900  0000               _TIM2_GetCapture2:
3902  0000 5204          	subw	sp,#4
3903       00000004      OFST:	set	4
3906                     ; 1024     uint16_t tmpccr2 = 0;
3908                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3912                     ; 1027     tmpccr2h = TIM2->CCR2H;
3914  0002 c65311        	ld	a,21265
3915  0005 6b02          	ld	(OFST-2,sp),a
3916                     ; 1028     tmpccr2l = TIM2->CCR2L;
3918  0007 c65312        	ld	a,21266
3919  000a 6b01          	ld	(OFST-3,sp),a
3920                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3922  000c 5f            	clrw	x
3923  000d 97            	ld	xl,a
3924  000e 1f03          	ldw	(OFST-1,sp),x
3925                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3927  0010 5f            	clrw	x
3928  0011 7b02          	ld	a,(OFST-2,sp)
3929  0013 97            	ld	xl,a
3930  0014 7b04          	ld	a,(OFST+0,sp)
3931  0016 01            	rrwa	x,a
3932  0017 1a03          	or	a,(OFST-1,sp)
3933  0019 01            	rrwa	x,a
3934                     ; 1033     return (uint16_t)tmpccr2;
3938  001a 5b04          	addw	sp,#4
3939  001c 81            	ret	
3985                     ; 1041 uint16_t TIM2_GetCapture3(void)
3985                     ; 1042 {
3986                     .text:	section	.text,new
3987  0000               _TIM2_GetCapture3:
3989  0000 5204          	subw	sp,#4
3990       00000004      OFST:	set	4
3993                     ; 1044     uint16_t tmpccr3 = 0;
3995                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
3999                     ; 1047     tmpccr3h = TIM2->CCR3H;
4001  0002 c65313        	ld	a,21267
4002  0005 6b02          	ld	(OFST-2,sp),a
4003                     ; 1048     tmpccr3l = TIM2->CCR3L;
4005  0007 c65314        	ld	a,21268
4006  000a 6b01          	ld	(OFST-3,sp),a
4007                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
4009  000c 5f            	clrw	x
4010  000d 97            	ld	xl,a
4011  000e 1f03          	ldw	(OFST-1,sp),x
4012                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4014  0010 5f            	clrw	x
4015  0011 7b02          	ld	a,(OFST-2,sp)
4016  0013 97            	ld	xl,a
4017  0014 7b04          	ld	a,(OFST+0,sp)
4018  0016 01            	rrwa	x,a
4019  0017 1a03          	or	a,(OFST-1,sp)
4020  0019 01            	rrwa	x,a
4021                     ; 1053     return (uint16_t)tmpccr3;
4025  001a 5b04          	addw	sp,#4
4026  001c 81            	ret	
4058                     ; 1061 uint16_t TIM2_GetCounter(void)
4058                     ; 1062 {
4059                     .text:	section	.text,new
4060  0000               _TIM2_GetCounter:
4062  0000 89            	pushw	x
4063       00000002      OFST:	set	2
4066                     ; 1063      uint16_t tmpcntr = 0;
4068                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4070  0001 c6530a        	ld	a,21258
4071  0004 97            	ld	xl,a
4072  0005 4f            	clr	a
4073  0006 02            	rlwa	x,a
4074  0007 1f01          	ldw	(OFST-1,sp),x
4075                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4077  0009 5f            	clrw	x
4078  000a c6530b        	ld	a,21259
4079  000d 97            	ld	xl,a
4080  000e 01            	rrwa	x,a
4081  000f 1a02          	or	a,(OFST+0,sp)
4082  0011 01            	rrwa	x,a
4083  0012 1a01          	or	a,(OFST-1,sp)
4084  0014 01            	rrwa	x,a
4087  0015 5b02          	addw	sp,#2
4088  0017 81            	ret	
4112                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4112                     ; 1077 {
4113                     .text:	section	.text,new
4114  0000               _TIM2_GetPrescaler:
4118                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4120  0000 c6530c        	ld	a,21260
4123  0003 81            	ret	
4259                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4259                     ; 1097 {
4260                     .text:	section	.text,new
4261  0000               _TIM2_GetFlagStatus:
4263  0000 89            	pushw	x
4264  0001 89            	pushw	x
4265       00000002      OFST:	set	2
4268                     ; 1098     FlagStatus bitstatus = RESET;
4270                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4274                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4276  0002 a30001        	cpw	x,#1
4277  0005 272c          	jreq	L617
4278  0007 a30002        	cpw	x,#2
4279  000a 2727          	jreq	L617
4280  000c a30004        	cpw	x,#4
4281  000f 2722          	jreq	L617
4282  0011 a30008        	cpw	x,#8
4283  0014 271d          	jreq	L617
4284  0016 a30200        	cpw	x,#512
4285  0019 2718          	jreq	L617
4286  001b a30400        	cpw	x,#1024
4287  001e 2713          	jreq	L617
4288  0020 a30800        	cpw	x,#2048
4289  0023 270e          	jreq	L617
4290  0025 ae044e        	ldw	x,#1102
4291  0028 89            	pushw	x
4292  0029 5f            	clrw	x
4293  002a 89            	pushw	x
4294  002b ae0000        	ldw	x,#L302
4295  002e cd0000        	call	_assert_failed
4297  0031 5b04          	addw	sp,#4
4298  0033               L617:
4299                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4301  0033 c65302        	ld	a,21250
4302  0036 1404          	and	a,(OFST+2,sp)
4303  0038 6b01          	ld	(OFST-1,sp),a
4304                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4306  003a 7b03          	ld	a,(OFST+1,sp)
4307  003c 6b02          	ld	(OFST+0,sp),a
4308                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4310  003e c45303        	and	a,21251
4311  0041 1a01          	or	a,(OFST-1,sp)
4312  0043 2702          	jreq	L5561
4313                     ; 1109         bitstatus = SET;
4315  0045 a601          	ld	a,#1
4317  0047               L5561:
4318                     ; 1113         bitstatus = RESET;
4320                     ; 1115     return (FlagStatus)bitstatus;
4324  0047 5b04          	addw	sp,#4
4325  0049 81            	ret	
4361                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4361                     ; 1133 {
4362                     .text:	section	.text,new
4363  0000               _TIM2_ClearFlag:
4365  0000 89            	pushw	x
4366       00000000      OFST:	set	0
4369                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4371  0001 01            	rrwa	x,a
4372  0002 a4f0          	and	a,#240
4373  0004 01            	rrwa	x,a
4374  0005 a4f1          	and	a,#241
4375  0007 01            	rrwa	x,a
4376  0008 5d            	tnzw	x
4377  0009 2604          	jrne	L427
4378  000b 1e01          	ldw	x,(OFST+1,sp)
4379  000d 260e          	jrne	L627
4380  000f               L427:
4381  000f ae046f        	ldw	x,#1135
4382  0012 89            	pushw	x
4383  0013 5f            	clrw	x
4384  0014 89            	pushw	x
4385  0015 ae0000        	ldw	x,#L302
4386  0018 cd0000        	call	_assert_failed
4388  001b 5b04          	addw	sp,#4
4389  001d               L627:
4390                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4392  001d 7b02          	ld	a,(OFST+2,sp)
4393  001f 43            	cpl	a
4394  0020 c75302        	ld	21250,a
4395                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4397  0023 35ff5303      	mov	21251,#255
4398                     ; 1140 }
4401  0027 85            	popw	x
4402  0028 81            	ret	
4463                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4463                     ; 1155 {
4464                     .text:	section	.text,new
4465  0000               _TIM2_GetITStatus:
4467  0000 88            	push	a
4468  0001 89            	pushw	x
4469       00000002      OFST:	set	2
4472                     ; 1156     ITStatus bitstatus = RESET;
4474                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4478                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4480  0002 a101          	cp	a,#1
4481  0004 271a          	jreq	L047
4482  0006 a102          	cp	a,#2
4483  0008 2716          	jreq	L047
4484  000a a104          	cp	a,#4
4485  000c 2712          	jreq	L047
4486  000e a108          	cp	a,#8
4487  0010 270e          	jreq	L047
4488  0012 ae0488        	ldw	x,#1160
4489  0015 89            	pushw	x
4490  0016 5f            	clrw	x
4491  0017 89            	pushw	x
4492  0018 ae0000        	ldw	x,#L302
4493  001b cd0000        	call	_assert_failed
4495  001e 5b04          	addw	sp,#4
4496  0020               L047:
4497                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4499  0020 c65302        	ld	a,21250
4500  0023 1403          	and	a,(OFST+1,sp)
4501  0025 6b01          	ld	(OFST-1,sp),a
4502                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4504  0027 c65301        	ld	a,21249
4505  002a 1403          	and	a,(OFST+1,sp)
4506  002c 6b02          	ld	(OFST+0,sp),a
4507                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4509  002e 7b01          	ld	a,(OFST-1,sp)
4510  0030 2708          	jreq	L5271
4512  0032 7b02          	ld	a,(OFST+0,sp)
4513  0034 2704          	jreq	L5271
4514                     ; 1168         bitstatus = SET;
4516  0036 a601          	ld	a,#1
4518  0038 2001          	jra	L7271
4519  003a               L5271:
4520                     ; 1172         bitstatus = RESET;
4522  003a 4f            	clr	a
4523  003b               L7271:
4524                     ; 1174     return (ITStatus)(bitstatus);
4528  003b 5b03          	addw	sp,#3
4529  003d 81            	ret	
4566                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4566                     ; 1189 {
4567                     .text:	section	.text,new
4568  0000               _TIM2_ClearITPendingBit:
4570  0000 88            	push	a
4571       00000000      OFST:	set	0
4574                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
4576  0001 4d            	tnz	a
4577  0002 2704          	jreq	L647
4578  0004 a110          	cp	a,#16
4579  0006 250e          	jrult	L057
4580  0008               L647:
4581  0008 ae04a7        	ldw	x,#1191
4582  000b 89            	pushw	x
4583  000c 5f            	clrw	x
4584  000d 89            	pushw	x
4585  000e ae0000        	ldw	x,#L302
4586  0011 cd0000        	call	_assert_failed
4588  0014 5b04          	addw	sp,#4
4589  0016               L057:
4590                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
4592  0016 7b01          	ld	a,(OFST+1,sp)
4593  0018 43            	cpl	a
4594  0019 c75302        	ld	21250,a
4595                     ; 1195 }
4598  001c 84            	pop	a
4599  001d 81            	ret	
4645                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
4645                     ; 1215                        uint8_t TIM2_ICSelection,
4645                     ; 1216                        uint8_t TIM2_ICFilter)
4645                     ; 1217 {
4646                     .text:	section	.text,new
4647  0000               L3_TI1_Config:
4649  0000 89            	pushw	x
4650       00000001      OFST:	set	1
4653                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4655  0001 72115308      	bres	21256,#0
4656  0005 88            	push	a
4657                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4657                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4659  0006 7b06          	ld	a,(OFST+5,sp)
4660  0008 97            	ld	xl,a
4661  0009 a610          	ld	a,#16
4662  000b 42            	mul	x,a
4663  000c 9f            	ld	a,xl
4664  000d 1a03          	or	a,(OFST+2,sp)
4665  000f 6b01          	ld	(OFST+0,sp),a
4666  0011 c65305        	ld	a,21253
4667  0014 a40c          	and	a,#12
4668  0016 1a01          	or	a,(OFST+0,sp)
4669  0018 c75305        	ld	21253,a
4670                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4672  001b 7b02          	ld	a,(OFST+1,sp)
4673  001d 2706          	jreq	L7671
4674                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
4676  001f 72125308      	bset	21256,#1
4678  0023 2004          	jra	L1771
4679  0025               L7671:
4680                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4682  0025 72135308      	bres	21256,#1
4683  0029               L1771:
4684                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
4686  0029 72105308      	bset	21256,#0
4687                     ; 1236 }
4690  002d 5b03          	addw	sp,#3
4691  002f 81            	ret	
4737                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
4737                     ; 1256                        uint8_t TIM2_ICSelection,
4737                     ; 1257                        uint8_t TIM2_ICFilter)
4737                     ; 1258 {
4738                     .text:	section	.text,new
4739  0000               L5_TI2_Config:
4741  0000 89            	pushw	x
4742       00000001      OFST:	set	1
4745                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4747  0001 72195308      	bres	21256,#4
4748  0005 88            	push	a
4749                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4749                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4751  0006 7b06          	ld	a,(OFST+5,sp)
4752  0008 97            	ld	xl,a
4753  0009 a610          	ld	a,#16
4754  000b 42            	mul	x,a
4755  000c 9f            	ld	a,xl
4756  000d 1a03          	or	a,(OFST+2,sp)
4757  000f 6b01          	ld	(OFST+0,sp),a
4758  0011 c65306        	ld	a,21254
4759  0014 a40c          	and	a,#12
4760  0016 1a01          	or	a,(OFST+0,sp)
4761  0018 c75306        	ld	21254,a
4762                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4764  001b 7b02          	ld	a,(OFST+1,sp)
4765  001d 2706          	jreq	L3102
4766                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4768  001f 721a5308      	bset	21256,#5
4770  0023 2004          	jra	L5102
4771  0025               L3102:
4772                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4774  0025 721b5308      	bres	21256,#5
4775  0029               L5102:
4776                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4778  0029 72185308      	bset	21256,#4
4779                     ; 1280 }
4782  002d 5b03          	addw	sp,#3
4783  002f 81            	ret	
4829                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4829                     ; 1297                        uint8_t TIM2_ICFilter)
4829                     ; 1298 {
4830                     .text:	section	.text,new
4831  0000               L7_TI3_Config:
4833  0000 89            	pushw	x
4834       00000001      OFST:	set	1
4837                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4839  0001 72115309      	bres	21257,#0
4840  0005 88            	push	a
4841                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4841                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4843  0006 7b06          	ld	a,(OFST+5,sp)
4844  0008 97            	ld	xl,a
4845  0009 a610          	ld	a,#16
4846  000b 42            	mul	x,a
4847  000c 9f            	ld	a,xl
4848  000d 1a03          	or	a,(OFST+2,sp)
4849  000f 6b01          	ld	(OFST+0,sp),a
4850  0011 c65307        	ld	a,21255
4851  0014 a40c          	and	a,#12
4852  0016 1a01          	or	a,(OFST+0,sp)
4853  0018 c75307        	ld	21255,a
4854                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4856  001b 7b02          	ld	a,(OFST+1,sp)
4857  001d 2706          	jreq	L7302
4858                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4860  001f 72125309      	bset	21257,#1
4862  0023 2004          	jra	L1402
4863  0025               L7302:
4864                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4866  0025 72135309      	bres	21257,#1
4867  0029               L1402:
4868                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4870  0029 72105309      	bset	21257,#0
4871                     ; 1318 }
4874  002d 5b03          	addw	sp,#3
4875  002f 81            	ret	
4888                     	xdef	_TIM2_ClearITPendingBit
4889                     	xdef	_TIM2_GetITStatus
4890                     	xdef	_TIM2_ClearFlag
4891                     	xdef	_TIM2_GetFlagStatus
4892                     	xdef	_TIM2_GetPrescaler
4893                     	xdef	_TIM2_GetCounter
4894                     	xdef	_TIM2_GetCapture3
4895                     	xdef	_TIM2_GetCapture2
4896                     	xdef	_TIM2_GetCapture1
4897                     	xdef	_TIM2_SetIC3Prescaler
4898                     	xdef	_TIM2_SetIC2Prescaler
4899                     	xdef	_TIM2_SetIC1Prescaler
4900                     	xdef	_TIM2_SetCompare3
4901                     	xdef	_TIM2_SetCompare2
4902                     	xdef	_TIM2_SetCompare1
4903                     	xdef	_TIM2_SetAutoreload
4904                     	xdef	_TIM2_SetCounter
4905                     	xdef	_TIM2_SelectOCxM
4906                     	xdef	_TIM2_CCxCmd
4907                     	xdef	_TIM2_OC3PolarityConfig
4908                     	xdef	_TIM2_OC2PolarityConfig
4909                     	xdef	_TIM2_OC1PolarityConfig
4910                     	xdef	_TIM2_GenerateEvent
4911                     	xdef	_TIM2_OC3PreloadConfig
4912                     	xdef	_TIM2_OC2PreloadConfig
4913                     	xdef	_TIM2_OC1PreloadConfig
4914                     	xdef	_TIM2_ARRPreloadConfig
4915                     	xdef	_TIM2_ForcedOC3Config
4916                     	xdef	_TIM2_ForcedOC2Config
4917                     	xdef	_TIM2_ForcedOC1Config
4918                     	xdef	_TIM2_PrescalerConfig
4919                     	xdef	_TIM2_SelectOnePulseMode
4920                     	xdef	_TIM2_UpdateRequestConfig
4921                     	xdef	_TIM2_UpdateDisableConfig
4922                     	xdef	_TIM2_ITConfig
4923                     	xdef	_TIM2_Cmd
4924                     	xdef	_TIM2_PWMIConfig
4925                     	xdef	_TIM2_ICInit
4926                     	xdef	_TIM2_OC3Init
4927                     	xdef	_TIM2_OC2Init
4928                     	xdef	_TIM2_OC1Init
4929                     	xdef	_TIM2_TimeBaseInit
4930                     	xdef	_TIM2_DeInit
4931                     	xref	_assert_failed
4932                     .const:	section	.text
4933  0000               L302:
4934  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4935  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4936  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4937  0036 5f74696d322e  	dc.b	"_tim2.c",0
4957                     	end
