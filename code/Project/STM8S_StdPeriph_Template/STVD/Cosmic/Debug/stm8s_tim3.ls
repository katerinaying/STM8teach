   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 45 void TIM3_DeInit(void)
  50                     ; 46 {
  52                     .text:	section	.text,new
  53  0000               _TIM3_DeInit:
  57                     ; 48     TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
  59  0000 725f5320      	clr	21280
  60                     ; 49     TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
  62  0004 725f5321      	clr	21281
  63                     ; 50     TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
  65  0008 725f5323      	clr	21283
  66                     ; 53     TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  68  000c 725f5327      	clr	21287
  69                     ; 56     TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  71  0010 725f5327      	clr	21287
  72                     ; 57     TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
  74  0014 725f5325      	clr	21285
  75                     ; 58     TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
  77  0018 725f5326      	clr	21286
  78                     ; 59     TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
  80  001c 725f5328      	clr	21288
  81                     ; 60     TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
  83  0020 725f5329      	clr	21289
  84                     ; 61     TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
  86  0024 725f532a      	clr	21290
  87                     ; 62     TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
  89  0028 35ff532b      	mov	21291,#255
  90                     ; 63     TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
  92  002c 35ff532c      	mov	21292,#255
  93                     ; 64     TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
  95  0030 725f532d      	clr	21293
  96                     ; 65     TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
  98  0034 725f532e      	clr	21294
  99                     ; 66     TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
 101  0038 725f532f      	clr	21295
 102                     ; 67     TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
 104  003c 725f5330      	clr	21296
 105                     ; 68     TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
 107  0040 725f5322      	clr	21282
 108                     ; 69 }
 111  0044 81            	ret	
 277                     ; 78 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 277                     ; 79                         uint16_t TIM3_Period)
 277                     ; 80 {
 278                     .text:	section	.text,new
 279  0000               _TIM3_TimeBaseInit:
 281       00000000      OFST:	set	0
 284                     ; 82     TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 286  0000 c7532a        	ld	21290,a
 287  0003 88            	push	a
 288                     ; 84     TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
 290  0004 7b04          	ld	a,(OFST+4,sp)
 291  0006 c7532b        	ld	21291,a
 292                     ; 85     TIM3->ARRL = (uint8_t)(TIM3_Period);
 294  0009 7b05          	ld	a,(OFST+5,sp)
 295  000b c7532c        	ld	21292,a
 296                     ; 86 }
 299  000e 84            	pop	a
 300  000f 81            	ret	
 456                     ; 96 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 456                     ; 97                   TIM3_OutputState_TypeDef TIM3_OutputState,
 456                     ; 98                   uint16_t TIM3_Pulse,
 456                     ; 99                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 456                     ; 100 {
 457                     .text:	section	.text,new
 458  0000               _TIM3_OC1Init:
 460  0000 89            	pushw	x
 461  0001 88            	push	a
 462       00000001      OFST:	set	1
 465                     ; 102     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 467  0002 9e            	ld	a,xh
 468  0003 4d            	tnz	a
 469  0004 271e          	jreq	L61
 470  0006 9e            	ld	a,xh
 471  0007 a110          	cp	a,#16
 472  0009 2719          	jreq	L61
 473  000b 9e            	ld	a,xh
 474  000c a120          	cp	a,#32
 475  000e 2714          	jreq	L61
 476  0010 9e            	ld	a,xh
 477  0011 a130          	cp	a,#48
 478  0013 270f          	jreq	L61
 479  0015 9e            	ld	a,xh
 480  0016 a160          	cp	a,#96
 481  0018 270a          	jreq	L61
 482  001a 9e            	ld	a,xh
 483  001b a170          	cp	a,#112
 484  001d 2705          	jreq	L61
 485  001f ae0066        	ldw	x,#102
 486  0022 ad4b          	call	LC001
 487  0024               L61:
 488                     ; 103     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 490  0024 7b03          	ld	a,(OFST+2,sp)
 491  0026 2709          	jreq	L62
 492  0028 a111          	cp	a,#17
 493  002a 2705          	jreq	L62
 494  002c ae0067        	ldw	x,#103
 495  002f ad3e          	call	LC001
 496  0031               L62:
 497                     ; 104     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 499  0031 7b08          	ld	a,(OFST+7,sp)
 500  0033 2709          	jreq	L63
 501  0035 a122          	cp	a,#34
 502  0037 2705          	jreq	L63
 503  0039 ae0068        	ldw	x,#104
 504  003c ad31          	call	LC001
 505  003e               L63:
 506                     ; 107     TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 508  003e c65327        	ld	a,21287
 509  0041 a4fc          	and	a,#252
 510  0043 c75327        	ld	21287,a
 511                     ; 109     TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 513  0046 7b08          	ld	a,(OFST+7,sp)
 514  0048 a402          	and	a,#2
 515  004a 6b01          	ld	(OFST+0,sp),a
 516  004c 7b03          	ld	a,(OFST+2,sp)
 517  004e a401          	and	a,#1
 518  0050 1a01          	or	a,(OFST+0,sp)
 519  0052 ca5327        	or	a,21287
 520  0055 c75327        	ld	21287,a
 521                     ; 112     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 523  0058 c65325        	ld	a,21285
 524  005b a48f          	and	a,#143
 525  005d 1a02          	or	a,(OFST+1,sp)
 526  005f c75325        	ld	21285,a
 527                     ; 115     TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 529  0062 7b06          	ld	a,(OFST+5,sp)
 530  0064 c7532d        	ld	21293,a
 531                     ; 116     TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 533  0067 7b07          	ld	a,(OFST+6,sp)
 534  0069 c7532e        	ld	21294,a
 535                     ; 117 }
 538  006c 5b03          	addw	sp,#3
 539  006e 81            	ret	
 540  006f               LC001:
 541  006f 89            	pushw	x
 542  0070 5f            	clrw	x
 543  0071 89            	pushw	x
 544  0072 ae0000        	ldw	x,#L102
 545  0075 cd0000        	call	_assert_failed
 547  0078 5b04          	addw	sp,#4
 548  007a 81            	ret	
 611                     ; 128 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 611                     ; 129                   TIM3_OutputState_TypeDef TIM3_OutputState,
 611                     ; 130                   uint16_t TIM3_Pulse,
 611                     ; 131                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 611                     ; 132 {
 612                     .text:	section	.text,new
 613  0000               _TIM3_OC2Init:
 615  0000 89            	pushw	x
 616  0001 88            	push	a
 617       00000001      OFST:	set	1
 620                     ; 134     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 622  0002 9e            	ld	a,xh
 623  0003 4d            	tnz	a
 624  0004 271e          	jreq	L05
 625  0006 9e            	ld	a,xh
 626  0007 a110          	cp	a,#16
 627  0009 2719          	jreq	L05
 628  000b 9e            	ld	a,xh
 629  000c a120          	cp	a,#32
 630  000e 2714          	jreq	L05
 631  0010 9e            	ld	a,xh
 632  0011 a130          	cp	a,#48
 633  0013 270f          	jreq	L05
 634  0015 9e            	ld	a,xh
 635  0016 a160          	cp	a,#96
 636  0018 270a          	jreq	L05
 637  001a 9e            	ld	a,xh
 638  001b a170          	cp	a,#112
 639  001d 2705          	jreq	L05
 640  001f ae0086        	ldw	x,#134
 641  0022 ad4b          	call	LC002
 642  0024               L05:
 643                     ; 135     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 645  0024 7b03          	ld	a,(OFST+2,sp)
 646  0026 2709          	jreq	L06
 647  0028 a111          	cp	a,#17
 648  002a 2705          	jreq	L06
 649  002c ae0087        	ldw	x,#135
 650  002f ad3e          	call	LC002
 651  0031               L06:
 652                     ; 136     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 654  0031 7b08          	ld	a,(OFST+7,sp)
 655  0033 2709          	jreq	L07
 656  0035 a122          	cp	a,#34
 657  0037 2705          	jreq	L07
 658  0039 ae0088        	ldw	x,#136
 659  003c ad31          	call	LC002
 660  003e               L07:
 661                     ; 140     TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 663  003e c65327        	ld	a,21287
 664  0041 a4cf          	and	a,#207
 665  0043 c75327        	ld	21287,a
 666                     ; 142     TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 668  0046 7b08          	ld	a,(OFST+7,sp)
 669  0048 a420          	and	a,#32
 670  004a 6b01          	ld	(OFST+0,sp),a
 671  004c 7b03          	ld	a,(OFST+2,sp)
 672  004e a410          	and	a,#16
 673  0050 1a01          	or	a,(OFST+0,sp)
 674  0052 ca5327        	or	a,21287
 675  0055 c75327        	ld	21287,a
 676                     ; 146     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 678  0058 c65326        	ld	a,21286
 679  005b a48f          	and	a,#143
 680  005d 1a02          	or	a,(OFST+1,sp)
 681  005f c75326        	ld	21286,a
 682                     ; 150     TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 684  0062 7b06          	ld	a,(OFST+5,sp)
 685  0064 c7532f        	ld	21295,a
 686                     ; 151     TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 688  0067 7b07          	ld	a,(OFST+6,sp)
 689  0069 c75330        	ld	21296,a
 690                     ; 152 }
 693  006c 5b03          	addw	sp,#3
 694  006e 81            	ret	
 695  006f               LC002:
 696  006f 89            	pushw	x
 697  0070 5f            	clrw	x
 698  0071 89            	pushw	x
 699  0072 ae0000        	ldw	x,#L102
 700  0075 cd0000        	call	_assert_failed
 702  0078 5b04          	addw	sp,#4
 703  007a 81            	ret	
 886                     ; 163 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 886                     ; 164                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 886                     ; 165                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 886                     ; 166                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 886                     ; 167                  uint8_t TIM3_ICFilter)
 886                     ; 168 {
 887                     .text:	section	.text,new
 888  0000               _TIM3_ICInit:
 890  0000 89            	pushw	x
 891       00000000      OFST:	set	0
 894                     ; 170     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 896  0001 9e            	ld	a,xh
 897  0002 4d            	tnz	a
 898  0003 2709          	jreq	L201
 899  0005 9e            	ld	a,xh
 900  0006 4a            	dec	a
 901  0007 2705          	jreq	L201
 902  0009 ae00aa        	ldw	x,#170
 903  000c ad6d          	call	LC003
 904  000e               L201:
 905                     ; 171     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 907  000e 7b02          	ld	a,(OFST+2,sp)
 908  0010 2709          	jreq	L211
 909  0012 a144          	cp	a,#68
 910  0014 2705          	jreq	L211
 911  0016 ae00ab        	ldw	x,#171
 912  0019 ad60          	call	LC003
 913  001b               L211:
 914                     ; 172     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 916  001b 7b05          	ld	a,(OFST+5,sp)
 917  001d a101          	cp	a,#1
 918  001f 270d          	jreq	L221
 919  0021 a102          	cp	a,#2
 920  0023 2709          	jreq	L221
 921  0025 a103          	cp	a,#3
 922  0027 2705          	jreq	L221
 923  0029 ae00ac        	ldw	x,#172
 924  002c ad4d          	call	LC003
 925  002e               L221:
 926                     ; 173     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 928  002e 7b06          	ld	a,(OFST+6,sp)
 929  0030 2711          	jreq	L231
 930  0032 a104          	cp	a,#4
 931  0034 270d          	jreq	L231
 932  0036 a108          	cp	a,#8
 933  0038 2709          	jreq	L231
 934  003a a10c          	cp	a,#12
 935  003c 2705          	jreq	L231
 936  003e ae00ad        	ldw	x,#173
 937  0041 ad38          	call	LC003
 938  0043               L231:
 939                     ; 174     assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
 941  0043 7b07          	ld	a,(OFST+7,sp)
 942  0045 a110          	cp	a,#16
 943  0047 2505          	jrult	L041
 944  0049 ae00ae        	ldw	x,#174
 945  004c ad2d          	call	LC003
 946  004e               L041:
 947                     ; 176     if (TIM3_Channel != TIM3_CHANNEL_2)
 949  004e 7b01          	ld	a,(OFST+1,sp)
 950  0050 4a            	dec	a
 951  0051 2714          	jreq	L533
 952                     ; 179         TI1_Config((uint8_t)TIM3_ICPolarity,
 952                     ; 180                    (uint8_t)TIM3_ICSelection,
 952                     ; 181                    (uint8_t)TIM3_ICFilter);
 954  0053 7b07          	ld	a,(OFST+7,sp)
 955  0055 88            	push	a
 956  0056 7b06          	ld	a,(OFST+6,sp)
 957  0058 97            	ld	xl,a
 958  0059 7b03          	ld	a,(OFST+3,sp)
 959  005b 95            	ld	xh,a
 960  005c cd0000        	call	L3_TI1_Config
 962  005f 84            	pop	a
 963                     ; 184         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
 965  0060 7b06          	ld	a,(OFST+6,sp)
 966  0062 cd0000        	call	_TIM3_SetIC1Prescaler
 969  0065 2012          	jra	L733
 970  0067               L533:
 971                     ; 189         TI2_Config((uint8_t)TIM3_ICPolarity,
 971                     ; 190                    (uint8_t)TIM3_ICSelection,
 971                     ; 191                    (uint8_t)TIM3_ICFilter);
 973  0067 7b07          	ld	a,(OFST+7,sp)
 974  0069 88            	push	a
 975  006a 7b06          	ld	a,(OFST+6,sp)
 976  006c 97            	ld	xl,a
 977  006d 7b03          	ld	a,(OFST+3,sp)
 978  006f 95            	ld	xh,a
 979  0070 cd0000        	call	L5_TI2_Config
 981  0073 84            	pop	a
 982                     ; 194         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
 984  0074 7b06          	ld	a,(OFST+6,sp)
 985  0076 cd0000        	call	_TIM3_SetIC2Prescaler
 987  0079               L733:
 988                     ; 196 }
 991  0079 85            	popw	x
 992  007a 81            	ret	
 993  007b               LC003:
 994  007b 89            	pushw	x
 995  007c 5f            	clrw	x
 996  007d 89            	pushw	x
 997  007e ae0000        	ldw	x,#L102
 998  0081 cd0000        	call	_assert_failed
1000  0084 5b04          	addw	sp,#4
1001  0086 81            	ret	
1092                     ; 206 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1092                     ; 207                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1092                     ; 208                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1092                     ; 209                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1092                     ; 210                      uint8_t TIM3_ICFilter)
1092                     ; 211 {
1093                     .text:	section	.text,new
1094  0000               _TIM3_PWMIConfig:
1096  0000 89            	pushw	x
1097  0001 89            	pushw	x
1098       00000002      OFST:	set	2
1101                     ; 212     uint8_t icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1103                     ; 213     uint8_t icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1105                     ; 216     assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
1107  0002 9e            	ld	a,xh
1108  0003 4d            	tnz	a
1109  0004 270a          	jreq	L261
1110  0006 9e            	ld	a,xh
1111  0007 4a            	dec	a
1112  0008 2706          	jreq	L261
1113  000a ae00d8        	ldw	x,#216
1114  000d cd00b4        	call	LC004
1115  0010               L261:
1116                     ; 217     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
1118  0010 7b04          	ld	a,(OFST+2,sp)
1119  0012 270a          	jreq	L271
1120  0014 a144          	cp	a,#68
1121  0016 2706          	jreq	L271
1122  0018 ae00d9        	ldw	x,#217
1123  001b cd00b4        	call	LC004
1124  001e               L271:
1125                     ; 218     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
1127  001e 7b07          	ld	a,(OFST+5,sp)
1128  0020 a101          	cp	a,#1
1129  0022 270e          	jreq	L202
1130  0024 a102          	cp	a,#2
1131  0026 270a          	jreq	L202
1132  0028 a103          	cp	a,#3
1133  002a 2706          	jreq	L202
1134  002c ae00da        	ldw	x,#218
1135  002f cd00b4        	call	LC004
1136  0032               L202:
1137                     ; 219     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1139  0032 7b08          	ld	a,(OFST+6,sp)
1140  0034 2711          	jreq	L212
1141  0036 a104          	cp	a,#4
1142  0038 270d          	jreq	L212
1143  003a a108          	cp	a,#8
1144  003c 2709          	jreq	L212
1145  003e a10c          	cp	a,#12
1146  0040 2705          	jreq	L212
1147  0042 ae00db        	ldw	x,#219
1148  0045 ad6d          	call	LC004
1149  0047               L212:
1150                     ; 222     if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
1152  0047 7b04          	ld	a,(OFST+2,sp)
1153  0049 a144          	cp	a,#68
1154  004b 2706          	jreq	L104
1155                     ; 224         icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
1157  004d a644          	ld	a,#68
1158  004f 6b01          	ld	(OFST-1,sp),a
1160  0051 2002          	jra	L304
1161  0053               L104:
1162                     ; 228         icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1164  0053 0f01          	clr	(OFST-1,sp)
1165  0055               L304:
1166                     ; 232     if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
1168  0055 7b07          	ld	a,(OFST+5,sp)
1169  0057 4a            	dec	a
1170  0058 2604          	jrne	L504
1171                     ; 234         icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
1173  005a a602          	ld	a,#2
1175  005c 2002          	jra	L704
1176  005e               L504:
1177                     ; 238         icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1179  005e a601          	ld	a,#1
1180  0060               L704:
1181  0060 6b02          	ld	(OFST+0,sp),a
1182                     ; 241     if (TIM3_Channel != TIM3_CHANNEL_2)
1184  0062 7b03          	ld	a,(OFST+1,sp)
1185  0064 4a            	dec	a
1186  0065 2726          	jreq	L114
1187                     ; 244         TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1187                     ; 245                    (uint8_t)TIM3_ICFilter);
1189  0067 7b09          	ld	a,(OFST+7,sp)
1190  0069 88            	push	a
1191  006a 7b08          	ld	a,(OFST+6,sp)
1192  006c 97            	ld	xl,a
1193  006d 7b05          	ld	a,(OFST+3,sp)
1194  006f 95            	ld	xh,a
1195  0070 cd0000        	call	L3_TI1_Config
1197  0073 84            	pop	a
1198                     ; 248         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1200  0074 7b08          	ld	a,(OFST+6,sp)
1201  0076 cd0000        	call	_TIM3_SetIC1Prescaler
1203                     ; 251         TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1205  0079 7b09          	ld	a,(OFST+7,sp)
1206  007b 88            	push	a
1207  007c 7b03          	ld	a,(OFST+1,sp)
1208  007e 97            	ld	xl,a
1209  007f 7b02          	ld	a,(OFST+0,sp)
1210  0081 95            	ld	xh,a
1211  0082 cd0000        	call	L5_TI2_Config
1213  0085 84            	pop	a
1214                     ; 254         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1216  0086 7b08          	ld	a,(OFST+6,sp)
1217  0088 cd0000        	call	_TIM3_SetIC2Prescaler
1220  008b 2024          	jra	L314
1221  008d               L114:
1222                     ; 259         TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1222                     ; 260                    (uint8_t)TIM3_ICFilter);
1224  008d 7b09          	ld	a,(OFST+7,sp)
1225  008f 88            	push	a
1226  0090 7b08          	ld	a,(OFST+6,sp)
1227  0092 97            	ld	xl,a
1228  0093 7b05          	ld	a,(OFST+3,sp)
1229  0095 95            	ld	xh,a
1230  0096 cd0000        	call	L5_TI2_Config
1232  0099 84            	pop	a
1233                     ; 263         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1235  009a 7b08          	ld	a,(OFST+6,sp)
1236  009c cd0000        	call	_TIM3_SetIC2Prescaler
1238                     ; 266         TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1240  009f 7b09          	ld	a,(OFST+7,sp)
1241  00a1 88            	push	a
1242  00a2 7b03          	ld	a,(OFST+1,sp)
1243  00a4 97            	ld	xl,a
1244  00a5 7b02          	ld	a,(OFST+0,sp)
1245  00a7 95            	ld	xh,a
1246  00a8 cd0000        	call	L3_TI1_Config
1248  00ab 84            	pop	a
1249                     ; 269         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1251  00ac 7b08          	ld	a,(OFST+6,sp)
1252  00ae cd0000        	call	_TIM3_SetIC1Prescaler
1254  00b1               L314:
1255                     ; 271 }
1258  00b1 5b04          	addw	sp,#4
1259  00b3 81            	ret	
1260  00b4               LC004:
1261  00b4 89            	pushw	x
1262  00b5 5f            	clrw	x
1263  00b6 89            	pushw	x
1264  00b7 ae0000        	ldw	x,#L102
1265  00ba cd0000        	call	_assert_failed
1267  00bd 5b04          	addw	sp,#4
1268  00bf 81            	ret	
1324                     ; 280 void TIM3_Cmd(FunctionalState NewState)
1324                     ; 281 {
1325                     .text:	section	.text,new
1326  0000               _TIM3_Cmd:
1328  0000 88            	push	a
1329       00000000      OFST:	set	0
1332                     ; 283     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1334  0001 4d            	tnz	a
1335  0002 2711          	jreq	L442
1336  0004 4a            	dec	a
1337  0005 270e          	jreq	L442
1338  0007 ae011b        	ldw	x,#283
1339  000a 89            	pushw	x
1340  000b 5f            	clrw	x
1341  000c 89            	pushw	x
1342  000d ae0000        	ldw	x,#L102
1343  0010 cd0000        	call	_assert_failed
1345  0013 5b04          	addw	sp,#4
1346  0015               L442:
1347                     ; 286     if (NewState != DISABLE)
1349  0015 7b01          	ld	a,(OFST+1,sp)
1350  0017 2706          	jreq	L344
1351                     ; 288         TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
1353  0019 72105320      	bset	21280,#0
1355  001d 2004          	jra	L544
1356  001f               L344:
1357                     ; 292         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
1359  001f 72115320      	bres	21280,#0
1360  0023               L544:
1361                     ; 294 }
1364  0023 84            	pop	a
1365  0024 81            	ret	
1438                     ; 309 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1438                     ; 310 {
1439                     .text:	section	.text,new
1440  0000               _TIM3_ITConfig:
1442  0000 89            	pushw	x
1443       00000000      OFST:	set	0
1446                     ; 312     assert_param(IS_TIM3_IT_OK(TIM3_IT));
1448  0001 9e            	ld	a,xh
1449  0002 4d            	tnz	a
1450  0003 2705          	jreq	L252
1451  0005 9e            	ld	a,xh
1452  0006 a108          	cp	a,#8
1453  0008 2505          	jrult	L452
1454  000a               L252:
1455  000a ae0138        	ldw	x,#312
1456  000d ad22          	call	LC005
1457  000f               L452:
1458                     ; 313     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1460  000f 7b02          	ld	a,(OFST+2,sp)
1461  0011 2708          	jreq	L462
1462  0013 4a            	dec	a
1463  0014 2705          	jreq	L462
1464  0016 ae0139        	ldw	x,#313
1465  0019 ad16          	call	LC005
1466  001b               L462:
1467                     ; 315     if (NewState != DISABLE)
1469  001b 7b02          	ld	a,(OFST+2,sp)
1470  001d 2707          	jreq	L305
1471                     ; 318         TIM3->IER |= (uint8_t)TIM3_IT;
1473  001f c65321        	ld	a,21281
1474  0022 1a01          	or	a,(OFST+1,sp)
1476  0024 2006          	jra	L505
1477  0026               L305:
1478                     ; 323         TIM3->IER &= (uint8_t)(~TIM3_IT);
1480  0026 7b01          	ld	a,(OFST+1,sp)
1481  0028 43            	cpl	a
1482  0029 c45321        	and	a,21281
1483  002c               L505:
1484  002c c75321        	ld	21281,a
1485                     ; 325 }
1488  002f 85            	popw	x
1489  0030 81            	ret	
1490  0031               LC005:
1491  0031 89            	pushw	x
1492  0032 5f            	clrw	x
1493  0033 89            	pushw	x
1494  0034 ae0000        	ldw	x,#L102
1495  0037 cd0000        	call	_assert_failed
1497  003a 5b04          	addw	sp,#4
1498  003c 81            	ret	
1535                     ; 334 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1535                     ; 335 {
1536                     .text:	section	.text,new
1537  0000               _TIM3_UpdateDisableConfig:
1539  0000 88            	push	a
1540       00000000      OFST:	set	0
1543                     ; 337     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1545  0001 4d            	tnz	a
1546  0002 2711          	jreq	L672
1547  0004 4a            	dec	a
1548  0005 270e          	jreq	L672
1549  0007 ae0151        	ldw	x,#337
1550  000a 89            	pushw	x
1551  000b 5f            	clrw	x
1552  000c 89            	pushw	x
1553  000d ae0000        	ldw	x,#L102
1554  0010 cd0000        	call	_assert_failed
1556  0013 5b04          	addw	sp,#4
1557  0015               L672:
1558                     ; 340     if (NewState != DISABLE)
1560  0015 7b01          	ld	a,(OFST+1,sp)
1561  0017 2706          	jreq	L525
1562                     ; 342         TIM3->CR1 |= TIM3_CR1_UDIS;
1564  0019 72125320      	bset	21280,#1
1566  001d 2004          	jra	L725
1567  001f               L525:
1568                     ; 346         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
1570  001f 72135320      	bres	21280,#1
1571  0023               L725:
1572                     ; 348 }
1575  0023 84            	pop	a
1576  0024 81            	ret	
1635                     ; 358 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1635                     ; 359 {
1636                     .text:	section	.text,new
1637  0000               _TIM3_UpdateRequestConfig:
1639  0000 88            	push	a
1640       00000000      OFST:	set	0
1643                     ; 361     assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1645  0001 4d            	tnz	a
1646  0002 2711          	jreq	L013
1647  0004 4a            	dec	a
1648  0005 270e          	jreq	L013
1649  0007 ae0169        	ldw	x,#361
1650  000a 89            	pushw	x
1651  000b 5f            	clrw	x
1652  000c 89            	pushw	x
1653  000d ae0000        	ldw	x,#L102
1654  0010 cd0000        	call	_assert_failed
1656  0013 5b04          	addw	sp,#4
1657  0015               L013:
1658                     ; 364     if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1660  0015 7b01          	ld	a,(OFST+1,sp)
1661  0017 2706          	jreq	L755
1662                     ; 366         TIM3->CR1 |= TIM3_CR1_URS;
1664  0019 72145320      	bset	21280,#2
1666  001d 2004          	jra	L165
1667  001f               L755:
1668                     ; 370         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
1670  001f 72155320      	bres	21280,#2
1671  0023               L165:
1672                     ; 372 }
1675  0023 84            	pop	a
1676  0024 81            	ret	
1734                     ; 383 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1734                     ; 384 {
1735                     .text:	section	.text,new
1736  0000               _TIM3_SelectOnePulseMode:
1738  0000 88            	push	a
1739       00000000      OFST:	set	0
1742                     ; 386     assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1744  0001 a101          	cp	a,#1
1745  0003 2711          	jreq	L223
1746  0005 4d            	tnz	a
1747  0006 270e          	jreq	L223
1748  0008 ae0182        	ldw	x,#386
1749  000b 89            	pushw	x
1750  000c 5f            	clrw	x
1751  000d 89            	pushw	x
1752  000e ae0000        	ldw	x,#L102
1753  0011 cd0000        	call	_assert_failed
1755  0014 5b04          	addw	sp,#4
1756  0016               L223:
1757                     ; 389     if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1759  0016 7b01          	ld	a,(OFST+1,sp)
1760  0018 2706          	jreq	L116
1761                     ; 391         TIM3->CR1 |= TIM3_CR1_OPM;
1763  001a 72165320      	bset	21280,#3
1765  001e 2004          	jra	L316
1766  0020               L116:
1767                     ; 395         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
1769  0020 72175320      	bres	21280,#3
1770  0024               L316:
1771                     ; 398 }
1774  0024 84            	pop	a
1775  0025 81            	ret	
1844                     ; 429 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
1844                     ; 430                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
1844                     ; 431 {
1845                     .text:	section	.text,new
1846  0000               _TIM3_PrescalerConfig:
1848  0000 89            	pushw	x
1849       00000000      OFST:	set	0
1852                     ; 433     assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
1854  0001 9f            	ld	a,xl
1855  0002 4d            	tnz	a
1856  0003 2709          	jreq	L433
1857  0005 9f            	ld	a,xl
1858  0006 4a            	dec	a
1859  0007 2705          	jreq	L433
1860  0009 ae01b1        	ldw	x,#433
1861  000c ad51          	call	LC006
1862  000e               L433:
1863                     ; 434     assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
1865  000e 7b01          	ld	a,(OFST+1,sp)
1866  0010 2743          	jreq	L443
1867  0012 a101          	cp	a,#1
1868  0014 273f          	jreq	L443
1869  0016 a102          	cp	a,#2
1870  0018 273b          	jreq	L443
1871  001a a103          	cp	a,#3
1872  001c 2737          	jreq	L443
1873  001e a104          	cp	a,#4
1874  0020 2733          	jreq	L443
1875  0022 a105          	cp	a,#5
1876  0024 272f          	jreq	L443
1877  0026 a106          	cp	a,#6
1878  0028 272b          	jreq	L443
1879  002a a107          	cp	a,#7
1880  002c 2727          	jreq	L443
1881  002e a108          	cp	a,#8
1882  0030 2723          	jreq	L443
1883  0032 a109          	cp	a,#9
1884  0034 271f          	jreq	L443
1885  0036 a10a          	cp	a,#10
1886  0038 271b          	jreq	L443
1887  003a a10b          	cp	a,#11
1888  003c 2717          	jreq	L443
1889  003e a10c          	cp	a,#12
1890  0040 2713          	jreq	L443
1891  0042 a10d          	cp	a,#13
1892  0044 270f          	jreq	L443
1893  0046 a10e          	cp	a,#14
1894  0048 270b          	jreq	L443
1895  004a a10f          	cp	a,#15
1896  004c 2707          	jreq	L443
1897  004e ae01b2        	ldw	x,#434
1898  0051 ad0c          	call	LC006
1899  0053 7b01          	ld	a,(OFST+1,sp)
1900  0055               L443:
1901                     ; 437     TIM3->PSCR = (uint8_t)Prescaler;
1903  0055 c7532a        	ld	21290,a
1904                     ; 440     TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
1906  0058 7b02          	ld	a,(OFST+2,sp)
1907  005a c75324        	ld	21284,a
1908                     ; 441 }
1911  005d 85            	popw	x
1912  005e 81            	ret	
1913  005f               LC006:
1914  005f 89            	pushw	x
1915  0060 5f            	clrw	x
1916  0061 89            	pushw	x
1917  0062 ae0000        	ldw	x,#L102
1918  0065 cd0000        	call	_assert_failed
1920  0068 5b04          	addw	sp,#4
1921  006a 81            	ret	
1980                     ; 452 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1980                     ; 453 {
1981                     .text:	section	.text,new
1982  0000               _TIM3_ForcedOC1Config:
1984  0000 88            	push	a
1985       00000000      OFST:	set	0
1988                     ; 455     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1990  0001 a150          	cp	a,#80
1991  0003 2712          	jreq	L653
1992  0005 a140          	cp	a,#64
1993  0007 270e          	jreq	L653
1994  0009 ae01c7        	ldw	x,#455
1995  000c 89            	pushw	x
1996  000d 5f            	clrw	x
1997  000e 89            	pushw	x
1998  000f ae0000        	ldw	x,#L102
1999  0012 cd0000        	call	_assert_failed
2001  0015 5b04          	addw	sp,#4
2002  0017               L653:
2003                     ; 458     TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
2005  0017 c65325        	ld	a,21285
2006  001a a48f          	and	a,#143
2007  001c 1a01          	or	a,(OFST+1,sp)
2008  001e c75325        	ld	21285,a
2009                     ; 459 }
2012  0021 84            	pop	a
2013  0022 81            	ret	
2050                     ; 470 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2050                     ; 471 {
2051                     .text:	section	.text,new
2052  0000               _TIM3_ForcedOC2Config:
2054  0000 88            	push	a
2055       00000000      OFST:	set	0
2058                     ; 473     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2060  0001 a150          	cp	a,#80
2061  0003 2712          	jreq	L073
2062  0005 a140          	cp	a,#64
2063  0007 270e          	jreq	L073
2064  0009 ae01d9        	ldw	x,#473
2065  000c 89            	pushw	x
2066  000d 5f            	clrw	x
2067  000e 89            	pushw	x
2068  000f ae0000        	ldw	x,#L102
2069  0012 cd0000        	call	_assert_failed
2071  0015 5b04          	addw	sp,#4
2072  0017               L073:
2073                     ; 476     TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
2075  0017 c65326        	ld	a,21286
2076  001a a48f          	and	a,#143
2077  001c 1a01          	or	a,(OFST+1,sp)
2078  001e c75326        	ld	21286,a
2079                     ; 477 }
2082  0021 84            	pop	a
2083  0022 81            	ret	
2120                     ; 486 void TIM3_ARRPreloadConfig(FunctionalState NewState)
2120                     ; 487 {
2121                     .text:	section	.text,new
2122  0000               _TIM3_ARRPreloadConfig:
2124  0000 88            	push	a
2125       00000000      OFST:	set	0
2128                     ; 489     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2130  0001 4d            	tnz	a
2131  0002 2711          	jreq	L204
2132  0004 4a            	dec	a
2133  0005 270e          	jreq	L204
2134  0007 ae01e9        	ldw	x,#489
2135  000a 89            	pushw	x
2136  000b 5f            	clrw	x
2137  000c 89            	pushw	x
2138  000d ae0000        	ldw	x,#L102
2139  0010 cd0000        	call	_assert_failed
2141  0013 5b04          	addw	sp,#4
2142  0015               L204:
2143                     ; 492     if (NewState != DISABLE)
2145  0015 7b01          	ld	a,(OFST+1,sp)
2146  0017 2706          	jreq	L137
2147                     ; 494         TIM3->CR1 |= TIM3_CR1_ARPE;
2149  0019 721e5320      	bset	21280,#7
2151  001d 2004          	jra	L337
2152  001f               L137:
2153                     ; 498         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
2155  001f 721f5320      	bres	21280,#7
2156  0023               L337:
2157                     ; 500 }
2160  0023 84            	pop	a
2161  0024 81            	ret	
2198                     ; 509 void TIM3_OC1PreloadConfig(FunctionalState NewState)
2198                     ; 510 {
2199                     .text:	section	.text,new
2200  0000               _TIM3_OC1PreloadConfig:
2202  0000 88            	push	a
2203       00000000      OFST:	set	0
2206                     ; 512     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2208  0001 4d            	tnz	a
2209  0002 2711          	jreq	L414
2210  0004 4a            	dec	a
2211  0005 270e          	jreq	L414
2212  0007 ae0200        	ldw	x,#512
2213  000a 89            	pushw	x
2214  000b 5f            	clrw	x
2215  000c 89            	pushw	x
2216  000d ae0000        	ldw	x,#L102
2217  0010 cd0000        	call	_assert_failed
2219  0013 5b04          	addw	sp,#4
2220  0015               L414:
2221                     ; 515     if (NewState != DISABLE)
2223  0015 7b01          	ld	a,(OFST+1,sp)
2224  0017 2706          	jreq	L357
2225                     ; 517         TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
2227  0019 72165325      	bset	21285,#3
2229  001d 2004          	jra	L557
2230  001f               L357:
2231                     ; 521         TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2233  001f 72175325      	bres	21285,#3
2234  0023               L557:
2235                     ; 523 }
2238  0023 84            	pop	a
2239  0024 81            	ret	
2276                     ; 532 void TIM3_OC2PreloadConfig(FunctionalState NewState)
2276                     ; 533 {
2277                     .text:	section	.text,new
2278  0000               _TIM3_OC2PreloadConfig:
2280  0000 88            	push	a
2281       00000000      OFST:	set	0
2284                     ; 535     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2286  0001 4d            	tnz	a
2287  0002 2711          	jreq	L624
2288  0004 4a            	dec	a
2289  0005 270e          	jreq	L624
2290  0007 ae0217        	ldw	x,#535
2291  000a 89            	pushw	x
2292  000b 5f            	clrw	x
2293  000c 89            	pushw	x
2294  000d ae0000        	ldw	x,#L102
2295  0010 cd0000        	call	_assert_failed
2297  0013 5b04          	addw	sp,#4
2298  0015               L624:
2299                     ; 538     if (NewState != DISABLE)
2301  0015 7b01          	ld	a,(OFST+1,sp)
2302  0017 2706          	jreq	L577
2303                     ; 540         TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
2305  0019 72165326      	bset	21286,#3
2307  001d 2004          	jra	L777
2308  001f               L577:
2309                     ; 544         TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2311  001f 72175326      	bres	21286,#3
2312  0023               L777:
2313                     ; 546 }
2316  0023 84            	pop	a
2317  0024 81            	ret	
2383                     ; 557 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
2383                     ; 558 {
2384                     .text:	section	.text,new
2385  0000               _TIM3_GenerateEvent:
2387  0000 88            	push	a
2388       00000000      OFST:	set	0
2391                     ; 560     assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
2393  0001 4d            	tnz	a
2394  0002 260e          	jrne	L634
2395  0004 ae0230        	ldw	x,#560
2396  0007 89            	pushw	x
2397  0008 5f            	clrw	x
2398  0009 89            	pushw	x
2399  000a ae0000        	ldw	x,#L102
2400  000d cd0000        	call	_assert_failed
2402  0010 5b04          	addw	sp,#4
2403  0012               L634:
2404                     ; 563     TIM3->EGR = (uint8_t)TIM3_EventSource;
2406  0012 7b01          	ld	a,(OFST+1,sp)
2407  0014 c75324        	ld	21284,a
2408                     ; 564 }
2411  0017 84            	pop	a
2412  0018 81            	ret	
2449                     ; 575 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2449                     ; 576 {
2450                     .text:	section	.text,new
2451  0000               _TIM3_OC1PolarityConfig:
2453  0000 88            	push	a
2454       00000000      OFST:	set	0
2457                     ; 578     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2459  0001 4d            	tnz	a
2460  0002 2712          	jreq	L054
2461  0004 a122          	cp	a,#34
2462  0006 270e          	jreq	L054
2463  0008 ae0242        	ldw	x,#578
2464  000b 89            	pushw	x
2465  000c 5f            	clrw	x
2466  000d 89            	pushw	x
2467  000e ae0000        	ldw	x,#L102
2468  0011 cd0000        	call	_assert_failed
2470  0014 5b04          	addw	sp,#4
2471  0016               L054:
2472                     ; 581     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2474  0016 7b01          	ld	a,(OFST+1,sp)
2475  0018 2706          	jreq	L7401
2476                     ; 583         TIM3->CCER1 |= TIM3_CCER1_CC1P;
2478  001a 72125327      	bset	21287,#1
2480  001e 2004          	jra	L1501
2481  0020               L7401:
2482                     ; 587         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
2484  0020 72135327      	bres	21287,#1
2485  0024               L1501:
2486                     ; 589 }
2489  0024 84            	pop	a
2490  0025 81            	ret	
2527                     ; 600 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2527                     ; 601 {
2528                     .text:	section	.text,new
2529  0000               _TIM3_OC2PolarityConfig:
2531  0000 88            	push	a
2532       00000000      OFST:	set	0
2535                     ; 603     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2537  0001 4d            	tnz	a
2538  0002 2712          	jreq	L264
2539  0004 a122          	cp	a,#34
2540  0006 270e          	jreq	L264
2541  0008 ae025b        	ldw	x,#603
2542  000b 89            	pushw	x
2543  000c 5f            	clrw	x
2544  000d 89            	pushw	x
2545  000e ae0000        	ldw	x,#L102
2546  0011 cd0000        	call	_assert_failed
2548  0014 5b04          	addw	sp,#4
2549  0016               L264:
2550                     ; 606     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2552  0016 7b01          	ld	a,(OFST+1,sp)
2553  0018 2706          	jreq	L1701
2554                     ; 608         TIM3->CCER1 |= TIM3_CCER1_CC2P;
2556  001a 721a5327      	bset	21287,#5
2558  001e 2004          	jra	L3701
2559  0020               L1701:
2560                     ; 612         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
2562  0020 721b5327      	bres	21287,#5
2563  0024               L3701:
2564                     ; 614 }
2567  0024 84            	pop	a
2568  0025 81            	ret	
2614                     ; 627 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2614                     ; 628 {
2615                     .text:	section	.text,new
2616  0000               _TIM3_CCxCmd:
2618  0000 89            	pushw	x
2619       00000000      OFST:	set	0
2622                     ; 630     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2624  0001 9e            	ld	a,xh
2625  0002 4d            	tnz	a
2626  0003 2709          	jreq	L474
2627  0005 9e            	ld	a,xh
2628  0006 4a            	dec	a
2629  0007 2705          	jreq	L474
2630  0009 ae0276        	ldw	x,#630
2631  000c ad30          	call	LC007
2632  000e               L474:
2633                     ; 631     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2635  000e 7b02          	ld	a,(OFST+2,sp)
2636  0010 2708          	jreq	L405
2637  0012 4a            	dec	a
2638  0013 2705          	jreq	L405
2639  0015 ae0277        	ldw	x,#631
2640  0018 ad24          	call	LC007
2641  001a               L405:
2642                     ; 633     if (TIM3_Channel == TIM3_CHANNEL_1)
2644  001a 7b01          	ld	a,(OFST+1,sp)
2645  001c 2610          	jrne	L7111
2646                     ; 636         if (NewState != DISABLE)
2648  001e 7b02          	ld	a,(OFST+2,sp)
2649  0020 2706          	jreq	L1211
2650                     ; 638             TIM3->CCER1 |= TIM3_CCER1_CC1E;
2652  0022 72105327      	bset	21287,#0
2654  0026 2014          	jra	L5211
2655  0028               L1211:
2656                     ; 642             TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2658  0028 72115327      	bres	21287,#0
2659  002c 200e          	jra	L5211
2660  002e               L7111:
2661                     ; 649         if (NewState != DISABLE)
2663  002e 7b02          	ld	a,(OFST+2,sp)
2664  0030 2706          	jreq	L7211
2665                     ; 651             TIM3->CCER1 |= TIM3_CCER1_CC2E;
2667  0032 72185327      	bset	21287,#4
2669  0036 2004          	jra	L5211
2670  0038               L7211:
2671                     ; 655             TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2673  0038 72195327      	bres	21287,#4
2674  003c               L5211:
2675                     ; 659 }
2678  003c 85            	popw	x
2679  003d 81            	ret	
2680  003e               LC007:
2681  003e 89            	pushw	x
2682  003f 5f            	clrw	x
2683  0040 89            	pushw	x
2684  0041 ae0000        	ldw	x,#L102
2685  0044 cd0000        	call	_assert_failed
2687  0047 5b04          	addw	sp,#4
2688  0049 81            	ret	
2734                     ; 680 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2734                     ; 681 {
2735                     .text:	section	.text,new
2736  0000               _TIM3_SelectOCxM:
2738  0000 89            	pushw	x
2739       00000000      OFST:	set	0
2742                     ; 683     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2744  0001 9e            	ld	a,xh
2745  0002 4d            	tnz	a
2746  0003 2709          	jreq	L615
2747  0005 9e            	ld	a,xh
2748  0006 4a            	dec	a
2749  0007 2705          	jreq	L615
2750  0009 ae02ab        	ldw	x,#683
2751  000c ad49          	call	LC008
2752  000e               L615:
2753                     ; 684     assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2755  000e 7b02          	ld	a,(OFST+2,sp)
2756  0010 2721          	jreq	L625
2757  0012 a110          	cp	a,#16
2758  0014 271d          	jreq	L625
2759  0016 a120          	cp	a,#32
2760  0018 2719          	jreq	L625
2761  001a a130          	cp	a,#48
2762  001c 2715          	jreq	L625
2763  001e a160          	cp	a,#96
2764  0020 2711          	jreq	L625
2765  0022 a170          	cp	a,#112
2766  0024 270d          	jreq	L625
2767  0026 a150          	cp	a,#80
2768  0028 2709          	jreq	L625
2769  002a a140          	cp	a,#64
2770  002c 2705          	jreq	L625
2771  002e ae02ac        	ldw	x,#684
2772  0031 ad24          	call	LC008
2773  0033               L625:
2774                     ; 686     if (TIM3_Channel == TIM3_CHANNEL_1)
2776  0033 7b01          	ld	a,(OFST+1,sp)
2777  0035 2610          	jrne	L5511
2778                     ; 689         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2780  0037 72115327      	bres	21287,#0
2781                     ; 692         TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2783  003b c65325        	ld	a,21285
2784  003e a48f          	and	a,#143
2785  0040 1a02          	or	a,(OFST+2,sp)
2786  0042 c75325        	ld	21285,a
2788  0045 200e          	jra	L7511
2789  0047               L5511:
2790                     ; 697         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2792  0047 72195327      	bres	21287,#4
2793                     ; 700         TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2795  004b c65326        	ld	a,21286
2796  004e a48f          	and	a,#143
2797  0050 1a02          	or	a,(OFST+2,sp)
2798  0052 c75326        	ld	21286,a
2799  0055               L7511:
2800                     ; 702 }
2803  0055 85            	popw	x
2804  0056 81            	ret	
2805  0057               LC008:
2806  0057 89            	pushw	x
2807  0058 5f            	clrw	x
2808  0059 89            	pushw	x
2809  005a ae0000        	ldw	x,#L102
2810  005d cd0000        	call	_assert_failed
2812  0060 5b04          	addw	sp,#4
2813  0062 81            	ret	
2845                     ; 711 void TIM3_SetCounter(uint16_t Counter)
2845                     ; 712 {
2846                     .text:	section	.text,new
2847  0000               _TIM3_SetCounter:
2851                     ; 714     TIM3->CNTRH = (uint8_t)(Counter >> 8);
2853  0000 9e            	ld	a,xh
2854  0001 c75328        	ld	21288,a
2855                     ; 715     TIM3->CNTRL = (uint8_t)(Counter);
2857  0004 9f            	ld	a,xl
2858  0005 c75329        	ld	21289,a
2859                     ; 717 }
2862  0008 81            	ret	
2894                     ; 726 void TIM3_SetAutoreload(uint16_t Autoreload)
2894                     ; 727 {
2895                     .text:	section	.text,new
2896  0000               _TIM3_SetAutoreload:
2900                     ; 729     TIM3->ARRH = (uint8_t)(Autoreload >> 8);
2902  0000 9e            	ld	a,xh
2903  0001 c7532b        	ld	21291,a
2904                     ; 730     TIM3->ARRL = (uint8_t)(Autoreload);
2906  0004 9f            	ld	a,xl
2907  0005 c7532c        	ld	21292,a
2908                     ; 731 }
2911  0008 81            	ret	
2943                     ; 740 void TIM3_SetCompare1(uint16_t Compare1)
2943                     ; 741 {
2944                     .text:	section	.text,new
2945  0000               _TIM3_SetCompare1:
2949                     ; 743     TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
2951  0000 9e            	ld	a,xh
2952  0001 c7532d        	ld	21293,a
2953                     ; 744     TIM3->CCR1L = (uint8_t)(Compare1);
2955  0004 9f            	ld	a,xl
2956  0005 c7532e        	ld	21294,a
2957                     ; 745 }
2960  0008 81            	ret	
2992                     ; 754 void TIM3_SetCompare2(uint16_t Compare2)
2992                     ; 755 {
2993                     .text:	section	.text,new
2994  0000               _TIM3_SetCompare2:
2998                     ; 757     TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
3000  0000 9e            	ld	a,xh
3001  0001 c7532f        	ld	21295,a
3002                     ; 758     TIM3->CCR2L = (uint8_t)(Compare2);
3004  0004 9f            	ld	a,xl
3005  0005 c75330        	ld	21296,a
3006                     ; 759 }
3009  0008 81            	ret	
3046                     ; 772 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
3046                     ; 773 {
3047                     .text:	section	.text,new
3048  0000               _TIM3_SetIC1Prescaler:
3050  0000 88            	push	a
3051       00000000      OFST:	set	0
3054                     ; 775     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
3056  0001 4d            	tnz	a
3057  0002 271a          	jreq	L055
3058  0004 a104          	cp	a,#4
3059  0006 2716          	jreq	L055
3060  0008 a108          	cp	a,#8
3061  000a 2712          	jreq	L055
3062  000c a10c          	cp	a,#12
3063  000e 270e          	jreq	L055
3064  0010 ae0307        	ldw	x,#775
3065  0013 89            	pushw	x
3066  0014 5f            	clrw	x
3067  0015 89            	pushw	x
3068  0016 ae0000        	ldw	x,#L102
3069  0019 cd0000        	call	_assert_failed
3071  001c 5b04          	addw	sp,#4
3072  001e               L055:
3073                     ; 778     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
3075  001e c65325        	ld	a,21285
3076  0021 a4f3          	and	a,#243
3077  0023 1a01          	or	a,(OFST+1,sp)
3078  0025 c75325        	ld	21285,a
3079                     ; 779 }
3082  0028 84            	pop	a
3083  0029 81            	ret	
3120                     ; 791 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
3120                     ; 792 {
3121                     .text:	section	.text,new
3122  0000               _TIM3_SetIC2Prescaler:
3124  0000 88            	push	a
3125       00000000      OFST:	set	0
3128                     ; 794     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
3130  0001 4d            	tnz	a
3131  0002 271a          	jreq	L265
3132  0004 a104          	cp	a,#4
3133  0006 2716          	jreq	L265
3134  0008 a108          	cp	a,#8
3135  000a 2712          	jreq	L265
3136  000c a10c          	cp	a,#12
3137  000e 270e          	jreq	L265
3138  0010 ae031a        	ldw	x,#794
3139  0013 89            	pushw	x
3140  0014 5f            	clrw	x
3141  0015 89            	pushw	x
3142  0016 ae0000        	ldw	x,#L102
3143  0019 cd0000        	call	_assert_failed
3145  001c 5b04          	addw	sp,#4
3146  001e               L265:
3147                     ; 797     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
3149  001e c65326        	ld	a,21286
3150  0021 a4f3          	and	a,#243
3151  0023 1a01          	or	a,(OFST+1,sp)
3152  0025 c75326        	ld	21286,a
3153                     ; 798 }
3156  0028 84            	pop	a
3157  0029 81            	ret	
3203                     ; 804 uint16_t TIM3_GetCapture1(void)
3203                     ; 805 {
3204                     .text:	section	.text,new
3205  0000               _TIM3_GetCapture1:
3207  0000 5204          	subw	sp,#4
3208       00000004      OFST:	set	4
3211                     ; 807     uint16_t tmpccr1 = 0;
3213                     ; 808     uint8_t tmpccr1l=0, tmpccr1h=0;
3217                     ; 810     tmpccr1h = TIM3->CCR1H;
3219  0002 c6532d        	ld	a,21293
3220  0005 6b02          	ld	(OFST-2,sp),a
3221                     ; 811     tmpccr1l = TIM3->CCR1L;
3223  0007 c6532e        	ld	a,21294
3224  000a 6b01          	ld	(OFST-3,sp),a
3225                     ; 813     tmpccr1 = (uint16_t)(tmpccr1l);
3227  000c 5f            	clrw	x
3228  000d 97            	ld	xl,a
3229  000e 1f03          	ldw	(OFST-1,sp),x
3230                     ; 814     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3232  0010 5f            	clrw	x
3233  0011 7b02          	ld	a,(OFST-2,sp)
3234  0013 97            	ld	xl,a
3235  0014 7b04          	ld	a,(OFST+0,sp)
3236  0016 01            	rrwa	x,a
3237  0017 1a03          	or	a,(OFST-1,sp)
3238  0019 01            	rrwa	x,a
3239                     ; 816     return (uint16_t)tmpccr1;
3243  001a 5b04          	addw	sp,#4
3244  001c 81            	ret	
3290                     ; 824 uint16_t TIM3_GetCapture2(void)
3290                     ; 825 {
3291                     .text:	section	.text,new
3292  0000               _TIM3_GetCapture2:
3294  0000 5204          	subw	sp,#4
3295       00000004      OFST:	set	4
3298                     ; 827     uint16_t tmpccr2 = 0;
3300                     ; 828     uint8_t tmpccr2l=0, tmpccr2h=0;
3304                     ; 830     tmpccr2h = TIM3->CCR2H;
3306  0002 c6532f        	ld	a,21295
3307  0005 6b02          	ld	(OFST-2,sp),a
3308                     ; 831     tmpccr2l = TIM3->CCR2L;
3310  0007 c65330        	ld	a,21296
3311  000a 6b01          	ld	(OFST-3,sp),a
3312                     ; 833     tmpccr2 = (uint16_t)(tmpccr2l);
3314  000c 5f            	clrw	x
3315  000d 97            	ld	xl,a
3316  000e 1f03          	ldw	(OFST-1,sp),x
3317                     ; 834     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3319  0010 5f            	clrw	x
3320  0011 7b02          	ld	a,(OFST-2,sp)
3321  0013 97            	ld	xl,a
3322  0014 7b04          	ld	a,(OFST+0,sp)
3323  0016 01            	rrwa	x,a
3324  0017 1a03          	or	a,(OFST-1,sp)
3325  0019 01            	rrwa	x,a
3326                     ; 836     return (uint16_t)tmpccr2;
3330  001a 5b04          	addw	sp,#4
3331  001c 81            	ret	
3363                     ; 844 uint16_t TIM3_GetCounter(void)
3363                     ; 845 {
3364                     .text:	section	.text,new
3365  0000               _TIM3_GetCounter:
3367  0000 89            	pushw	x
3368       00000002      OFST:	set	2
3371                     ; 846    uint16_t tmpcntr = 0;
3373                     ; 848    tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
3375  0001 c65328        	ld	a,21288
3376  0004 97            	ld	xl,a
3377  0005 4f            	clr	a
3378  0006 02            	rlwa	x,a
3379  0007 1f01          	ldw	(OFST-1,sp),x
3380                     ; 850     return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
3382  0009 5f            	clrw	x
3383  000a c65329        	ld	a,21289
3384  000d 97            	ld	xl,a
3385  000e 01            	rrwa	x,a
3386  000f 1a02          	or	a,(OFST+0,sp)
3387  0011 01            	rrwa	x,a
3388  0012 1a01          	or	a,(OFST-1,sp)
3389  0014 01            	rrwa	x,a
3392  0015 5b02          	addw	sp,#2
3393  0017 81            	ret	
3417                     ; 859 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
3417                     ; 860 {
3418                     .text:	section	.text,new
3419  0000               _TIM3_GetPrescaler:
3423                     ; 862     return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
3425  0000 c6532a        	ld	a,21290
3428  0003 81            	ret	
3550                     ; 877 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3550                     ; 878 {
3551                     .text:	section	.text,new
3552  0000               _TIM3_GetFlagStatus:
3554  0000 89            	pushw	x
3555  0001 89            	pushw	x
3556       00000002      OFST:	set	2
3559                     ; 879    FlagStatus bitstatus = RESET;
3561                     ; 880    uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
3565                     ; 883     assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3567  0002 a30001        	cpw	x,#1
3568  0005 2722          	jreq	L406
3569  0007 a30002        	cpw	x,#2
3570  000a 271d          	jreq	L406
3571  000c a30004        	cpw	x,#4
3572  000f 2718          	jreq	L406
3573  0011 a30200        	cpw	x,#512
3574  0014 2713          	jreq	L406
3575  0016 a30400        	cpw	x,#1024
3576  0019 270e          	jreq	L406
3577  001b ae0373        	ldw	x,#883
3578  001e 89            	pushw	x
3579  001f 5f            	clrw	x
3580  0020 89            	pushw	x
3581  0021 ae0000        	ldw	x,#L102
3582  0024 cd0000        	call	_assert_failed
3584  0027 5b04          	addw	sp,#4
3585  0029               L406:
3586                     ; 885     tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
3588  0029 c65322        	ld	a,21282
3589  002c 1404          	and	a,(OFST+2,sp)
3590  002e 6b01          	ld	(OFST-1,sp),a
3591                     ; 886     tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
3593  0030 7b03          	ld	a,(OFST+1,sp)
3594  0032 6b02          	ld	(OFST+0,sp),a
3595                     ; 888     if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
3597  0034 c45323        	and	a,21283
3598  0037 1a01          	or	a,(OFST-1,sp)
3599  0039 2702          	jreq	L5341
3600                     ; 890         bitstatus = SET;
3602  003b a601          	ld	a,#1
3604  003d               L5341:
3605                     ; 894         bitstatus = RESET;
3607                     ; 896     return (FlagStatus)bitstatus;
3611  003d 5b04          	addw	sp,#4
3612  003f 81            	ret	
3648                     ; 911 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3648                     ; 912 {
3649                     .text:	section	.text,new
3650  0000               _TIM3_ClearFlag:
3652  0000 89            	pushw	x
3653       00000000      OFST:	set	0
3656                     ; 914     assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3658  0001 01            	rrwa	x,a
3659  0002 a4f8          	and	a,#248
3660  0004 01            	rrwa	x,a
3661  0005 a4f9          	and	a,#249
3662  0007 01            	rrwa	x,a
3663  0008 5d            	tnzw	x
3664  0009 2604          	jrne	L216
3665  000b 1e01          	ldw	x,(OFST+1,sp)
3666  000d 260e          	jrne	L416
3667  000f               L216:
3668  000f ae0392        	ldw	x,#914
3669  0012 89            	pushw	x
3670  0013 5f            	clrw	x
3671  0014 89            	pushw	x
3672  0015 ae0000        	ldw	x,#L102
3673  0018 cd0000        	call	_assert_failed
3675  001b 5b04          	addw	sp,#4
3676  001d               L416:
3677                     ; 917     TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
3679  001d 7b02          	ld	a,(OFST+2,sp)
3680  001f 43            	cpl	a
3681  0020 c75322        	ld	21282,a
3682                     ; 918     TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
3684  0023 7b01          	ld	a,(OFST+1,sp)
3685  0025 43            	cpl	a
3686  0026 c75323        	ld	21283,a
3687                     ; 919 }
3690  0029 85            	popw	x
3691  002a 81            	ret	
3752                     ; 932 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
3752                     ; 933 {
3753                     .text:	section	.text,new
3754  0000               _TIM3_GetITStatus:
3756  0000 88            	push	a
3757  0001 89            	pushw	x
3758       00000002      OFST:	set	2
3761                     ; 934     ITStatus bitstatus = RESET;
3763                     ; 935     uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
3767                     ; 938     assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
3769  0002 a101          	cp	a,#1
3770  0004 2716          	jreq	L626
3771  0006 a102          	cp	a,#2
3772  0008 2712          	jreq	L626
3773  000a a104          	cp	a,#4
3774  000c 270e          	jreq	L626
3775  000e ae03aa        	ldw	x,#938
3776  0011 89            	pushw	x
3777  0012 5f            	clrw	x
3778  0013 89            	pushw	x
3779  0014 ae0000        	ldw	x,#L102
3780  0017 cd0000        	call	_assert_failed
3782  001a 5b04          	addw	sp,#4
3783  001c               L626:
3784                     ; 940     TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
3786  001c c65322        	ld	a,21282
3787  001f 1403          	and	a,(OFST+1,sp)
3788  0021 6b01          	ld	(OFST-1,sp),a
3789                     ; 942     TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
3791  0023 c65321        	ld	a,21281
3792  0026 1403          	and	a,(OFST+1,sp)
3793  0028 6b02          	ld	(OFST+0,sp),a
3794                     ; 944     if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
3796  002a 7b01          	ld	a,(OFST-1,sp)
3797  002c 2708          	jreq	L5051
3799  002e 7b02          	ld	a,(OFST+0,sp)
3800  0030 2704          	jreq	L5051
3801                     ; 946         bitstatus = SET;
3803  0032 a601          	ld	a,#1
3805  0034 2001          	jra	L7051
3806  0036               L5051:
3807                     ; 950         bitstatus = RESET;
3809  0036 4f            	clr	a
3810  0037               L7051:
3811                     ; 952     return (ITStatus)(bitstatus);
3815  0037 5b03          	addw	sp,#3
3816  0039 81            	ret	
3853                     ; 965 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
3853                     ; 966 {
3854                     .text:	section	.text,new
3855  0000               _TIM3_ClearITPendingBit:
3857  0000 88            	push	a
3858       00000000      OFST:	set	0
3861                     ; 968     assert_param(IS_TIM3_IT_OK(TIM3_IT));
3863  0001 4d            	tnz	a
3864  0002 2704          	jreq	L436
3865  0004 a108          	cp	a,#8
3866  0006 250e          	jrult	L636
3867  0008               L436:
3868  0008 ae03c8        	ldw	x,#968
3869  000b 89            	pushw	x
3870  000c 5f            	clrw	x
3871  000d 89            	pushw	x
3872  000e ae0000        	ldw	x,#L102
3873  0011 cd0000        	call	_assert_failed
3875  0014 5b04          	addw	sp,#4
3876  0016               L636:
3877                     ; 971     TIM3->SR1 = (uint8_t)(~TIM3_IT);
3879  0016 7b01          	ld	a,(OFST+1,sp)
3880  0018 43            	cpl	a
3881  0019 c75322        	ld	21282,a
3882                     ; 972 }
3885  001c 84            	pop	a
3886  001d 81            	ret	
3932                     ; 991 static void TI1_Config(uint8_t TIM3_ICPolarity,
3932                     ; 992                        uint8_t TIM3_ICSelection,
3932                     ; 993                        uint8_t TIM3_ICFilter)
3932                     ; 994 {
3933                     .text:	section	.text,new
3934  0000               L3_TI1_Config:
3936  0000 89            	pushw	x
3937       00000001      OFST:	set	1
3940                     ; 996     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
3942  0001 72115327      	bres	21287,#0
3943  0005 88            	push	a
3944                     ; 999     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
3946  0006 7b06          	ld	a,(OFST+5,sp)
3947  0008 97            	ld	xl,a
3948  0009 a610          	ld	a,#16
3949  000b 42            	mul	x,a
3950  000c 9f            	ld	a,xl
3951  000d 1a03          	or	a,(OFST+2,sp)
3952  000f 6b01          	ld	(OFST+0,sp),a
3953  0011 c65325        	ld	a,21285
3954  0014 a40c          	and	a,#12
3955  0016 1a01          	or	a,(OFST+0,sp)
3956  0018 c75325        	ld	21285,a
3957                     ; 1002     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3959  001b 7b02          	ld	a,(OFST+1,sp)
3960  001d 2706          	jreq	L7451
3961                     ; 1004         TIM3->CCER1 |= TIM3_CCER1_CC1P;
3963  001f 72125327      	bset	21287,#1
3965  0023 2004          	jra	L1551
3966  0025               L7451:
3967                     ; 1008         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
3969  0025 72135327      	bres	21287,#1
3970  0029               L1551:
3971                     ; 1011     TIM3->CCER1 |= TIM3_CCER1_CC1E;
3973  0029 72105327      	bset	21287,#0
3974                     ; 1012 }
3977  002d 5b03          	addw	sp,#3
3978  002f 81            	ret	
4024                     ; 1031 static void TI2_Config(uint8_t TIM3_ICPolarity,
4024                     ; 1032                        uint8_t TIM3_ICSelection,
4024                     ; 1033                        uint8_t TIM3_ICFilter)
4024                     ; 1034 {
4025                     .text:	section	.text,new
4026  0000               L5_TI2_Config:
4028  0000 89            	pushw	x
4029       00000001      OFST:	set	1
4032                     ; 1036     TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
4034  0001 72195327      	bres	21287,#4
4035  0005 88            	push	a
4036                     ; 1039     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
4036                     ; 1040                   TIM3_CCMR_ICxF    ))) | (uint8_t)(( (TIM3_ICSelection)) | 
4036                     ; 1041                   ((uint8_t)( TIM3_ICFilter << 4))));
4038  0006 7b06          	ld	a,(OFST+5,sp)
4039  0008 97            	ld	xl,a
4040  0009 a610          	ld	a,#16
4041  000b 42            	mul	x,a
4042  000c 9f            	ld	a,xl
4043  000d 1a03          	or	a,(OFST+2,sp)
4044  000f 6b01          	ld	(OFST+0,sp),a
4045  0011 c65326        	ld	a,21286
4046  0014 a40c          	and	a,#12
4047  0016 1a01          	or	a,(OFST+0,sp)
4048  0018 c75326        	ld	21286,a
4049                     ; 1044     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4051  001b 7b02          	ld	a,(OFST+1,sp)
4052  001d 2706          	jreq	L3751
4053                     ; 1046         TIM3->CCER1 |= TIM3_CCER1_CC2P;
4055  001f 721a5327      	bset	21287,#5
4057  0023 2004          	jra	L5751
4058  0025               L3751:
4059                     ; 1050         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
4061  0025 721b5327      	bres	21287,#5
4062  0029               L5751:
4063                     ; 1054     TIM3->CCER1 |= TIM3_CCER1_CC2E;
4065  0029 72185327      	bset	21287,#4
4066                     ; 1056 }
4069  002d 5b03          	addw	sp,#3
4070  002f 81            	ret	
4083                     	xdef	_TIM3_ClearITPendingBit
4084                     	xdef	_TIM3_GetITStatus
4085                     	xdef	_TIM3_ClearFlag
4086                     	xdef	_TIM3_GetFlagStatus
4087                     	xdef	_TIM3_GetPrescaler
4088                     	xdef	_TIM3_GetCounter
4089                     	xdef	_TIM3_GetCapture2
4090                     	xdef	_TIM3_GetCapture1
4091                     	xdef	_TIM3_SetIC2Prescaler
4092                     	xdef	_TIM3_SetIC1Prescaler
4093                     	xdef	_TIM3_SetCompare2
4094                     	xdef	_TIM3_SetCompare1
4095                     	xdef	_TIM3_SetAutoreload
4096                     	xdef	_TIM3_SetCounter
4097                     	xdef	_TIM3_SelectOCxM
4098                     	xdef	_TIM3_CCxCmd
4099                     	xdef	_TIM3_OC2PolarityConfig
4100                     	xdef	_TIM3_OC1PolarityConfig
4101                     	xdef	_TIM3_GenerateEvent
4102                     	xdef	_TIM3_OC2PreloadConfig
4103                     	xdef	_TIM3_OC1PreloadConfig
4104                     	xdef	_TIM3_ARRPreloadConfig
4105                     	xdef	_TIM3_ForcedOC2Config
4106                     	xdef	_TIM3_ForcedOC1Config
4107                     	xdef	_TIM3_PrescalerConfig
4108                     	xdef	_TIM3_SelectOnePulseMode
4109                     	xdef	_TIM3_UpdateRequestConfig
4110                     	xdef	_TIM3_UpdateDisableConfig
4111                     	xdef	_TIM3_ITConfig
4112                     	xdef	_TIM3_Cmd
4113                     	xdef	_TIM3_PWMIConfig
4114                     	xdef	_TIM3_ICInit
4115                     	xdef	_TIM3_OC2Init
4116                     	xdef	_TIM3_OC1Init
4117                     	xdef	_TIM3_TimeBaseInit
4118                     	xdef	_TIM3_DeInit
4119                     	xref	_assert_failed
4120                     .const:	section	.text
4121  0000               L102:
4122  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4123  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4124  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4125  0036 5f74696d332e  	dc.b	"_tim3.c",0
4145                     	end
