   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 52 void TIM1_DeInit(void)
  50                     ; 53 {
  52                     .text:	section	.text,new
  53  0000               _TIM1_DeInit:
  57                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  59  0000 725f5250      	clr	21072
  60                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  62  0004 725f5251      	clr	21073
  63                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  65  0008 725f5252      	clr	21074
  66                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  68  000c 725f5253      	clr	21075
  69                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  71  0010 725f5254      	clr	21076
  72                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  74  0014 725f5256      	clr	21078
  75                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  77  0018 725f525c      	clr	21084
  78                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  80  001c 725f525d      	clr	21085
  81                     ; 64     TIM1->CCMR1 = 0x01;
  83  0020 35015258      	mov	21080,#1
  84                     ; 65     TIM1->CCMR2 = 0x01;
  86  0024 35015259      	mov	21081,#1
  87                     ; 66     TIM1->CCMR3 = 0x01;
  89  0028 3501525a      	mov	21082,#1
  90                     ; 67     TIM1->CCMR4 = 0x01;
  92  002c 3501525b      	mov	21083,#1
  93                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  95  0030 725f525c      	clr	21084
  96                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  98  0034 725f525d      	clr	21085
  99                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
 101  0038 725f5258      	clr	21080
 102                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 104  003c 725f5259      	clr	21081
 105                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 107  0040 725f525a      	clr	21082
 108                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 110  0044 725f525b      	clr	21083
 111                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 113  0048 725f525e      	clr	21086
 114                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 116  004c 725f525f      	clr	21087
 117                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 119  0050 725f5260      	clr	21088
 120                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 122  0054 725f5261      	clr	21089
 123                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 125  0058 35ff5262      	mov	21090,#255
 126                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 128  005c 35ff5263      	mov	21091,#255
 129                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 131  0060 725f5265      	clr	21093
 132                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 134  0064 725f5266      	clr	21094
 135                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 137  0068 725f5267      	clr	21095
 138                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 140  006c 725f5268      	clr	21096
 141                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 143  0070 725f5269      	clr	21097
 144                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 146  0074 725f526a      	clr	21098
 147                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 149  0078 725f526b      	clr	21099
 150                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 152  007c 725f526c      	clr	21100
 153                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 155  0080 725f526f      	clr	21103
 156                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 158  0084 35015257      	mov	21079,#1
 159                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 161  0088 725f526e      	clr	21102
 162                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 164  008c 725f526d      	clr	21101
 165                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 167  0090 725f5264      	clr	21092
 168                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 170  0094 725f5255      	clr	21077
 171                     ; 95 }
 174  0098 81            	ret	
 278                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 278                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 278                     ; 107                        uint16_t TIM1_Period,
 278                     ; 108                        uint8_t TIM1_RepetitionCounter)
 278                     ; 109 {
 279                     .text:	section	.text,new
 280  0000               _TIM1_TimeBaseInit:
 282  0000 89            	pushw	x
 283       00000000      OFST:	set	0
 286                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 288  0001 7b05          	ld	a,(OFST+5,sp)
 289  0003 271e          	jreq	L41
 290  0005 a110          	cp	a,#16
 291  0007 271a          	jreq	L41
 292  0009 a120          	cp	a,#32
 293  000b 2716          	jreq	L41
 294  000d a140          	cp	a,#64
 295  000f 2712          	jreq	L41
 296  0011 a160          	cp	a,#96
 297  0013 270e          	jreq	L41
 298  0015 ae0070        	ldw	x,#112
 299  0018 89            	pushw	x
 300  0019 5f            	clrw	x
 301  001a 89            	pushw	x
 302  001b ae0000        	ldw	x,#L37
 303  001e cd0000        	call	_assert_failed
 305  0021 5b04          	addw	sp,#4
 306  0023               L41:
 307                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 309  0023 7b06          	ld	a,(OFST+6,sp)
 310  0025 c75262        	ld	21090,a
 311                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 313  0028 7b07          	ld	a,(OFST+7,sp)
 314  002a c75263        	ld	21091,a
 315                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 317  002d 7b01          	ld	a,(OFST+1,sp)
 318  002f c75260        	ld	21088,a
 319                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 321  0032 7b02          	ld	a,(OFST+2,sp)
 322  0034 c75261        	ld	21089,a
 323                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 323                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 325  0037 c65250        	ld	a,21072
 326  003a a48f          	and	a,#143
 327  003c 1a05          	or	a,(OFST+5,sp)
 328  003e c75250        	ld	21072,a
 329                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 331  0041 7b08          	ld	a,(OFST+8,sp)
 332  0043 c75264        	ld	21092,a
 333                     ; 129 }
 336  0046 85            	popw	x
 337  0047 81            	ret	
 621                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 621                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 621                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 621                     ; 153                   uint16_t TIM1_Pulse,
 621                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 621                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 621                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 621                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 621                     ; 158 {
 622                     .text:	section	.text,new
 623  0000               _TIM1_OC1Init:
 625  0000 89            	pushw	x
 626  0001 5203          	subw	sp,#3
 627       00000003      OFST:	set	3
 630                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 632  0003 9e            	ld	a,xh
 633  0004 4d            	tnz	a
 634  0005 271f          	jreq	L62
 635  0007 9e            	ld	a,xh
 636  0008 a110          	cp	a,#16
 637  000a 271a          	jreq	L62
 638  000c 9e            	ld	a,xh
 639  000d a120          	cp	a,#32
 640  000f 2715          	jreq	L62
 641  0011 9e            	ld	a,xh
 642  0012 a130          	cp	a,#48
 643  0014 2710          	jreq	L62
 644  0016 9e            	ld	a,xh
 645  0017 a160          	cp	a,#96
 646  0019 270b          	jreq	L62
 647  001b 9e            	ld	a,xh
 648  001c a170          	cp	a,#112
 649  001e 2706          	jreq	L62
 650  0020 ae00a0        	ldw	x,#160
 651  0023 cd00d6        	call	LC001
 652  0026               L62:
 653                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 655  0026 7b05          	ld	a,(OFST+2,sp)
 656  0028 270a          	jreq	L63
 657  002a a111          	cp	a,#17
 658  002c 2706          	jreq	L63
 659  002e ae00a1        	ldw	x,#161
 660  0031 cd00d6        	call	LC001
 661  0034               L63:
 662                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 664  0034 7b08          	ld	a,(OFST+5,sp)
 665  0036 270a          	jreq	L64
 666  0038 a144          	cp	a,#68
 667  003a 2706          	jreq	L64
 668  003c ae00a2        	ldw	x,#162
 669  003f cd00d6        	call	LC001
 670  0042               L64:
 671                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 673  0042 7b0b          	ld	a,(OFST+8,sp)
 674  0044 270a          	jreq	L65
 675  0046 a122          	cp	a,#34
 676  0048 2706          	jreq	L65
 677  004a ae00a3        	ldw	x,#163
 678  004d cd00d6        	call	LC001
 679  0050               L65:
 680                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 682  0050 7b0c          	ld	a,(OFST+9,sp)
 683  0052 2709          	jreq	L66
 684  0054 a188          	cp	a,#136
 685  0056 2705          	jreq	L66
 686  0058 ae00a4        	ldw	x,#164
 687  005b ad79          	call	LC001
 688  005d               L66:
 689                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 691  005d 7b0d          	ld	a,(OFST+10,sp)
 692  005f a155          	cp	a,#85
 693  0061 2709          	jreq	L67
 694  0063 7b0d          	ld	a,(OFST+10,sp)
 695  0065 2705          	jreq	L67
 696  0067 ae00a5        	ldw	x,#165
 697  006a ad6a          	call	LC001
 698  006c               L67:
 699                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 701  006c 7b0e          	ld	a,(OFST+11,sp)
 702  006e a12a          	cp	a,#42
 703  0070 2709          	jreq	L601
 704  0072 7b0e          	ld	a,(OFST+11,sp)
 705  0074 2705          	jreq	L601
 706  0076 ae00a6        	ldw	x,#166
 707  0079 ad5b          	call	LC001
 708  007b               L601:
 709                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 709                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 711  007b c6525c        	ld	a,21084
 712  007e a4f0          	and	a,#240
 713  0080 c7525c        	ld	21084,a
 714                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 714                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 714                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 714                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 716  0083 7b0c          	ld	a,(OFST+9,sp)
 717  0085 a408          	and	a,#8
 718  0087 6b03          	ld	(OFST+0,sp),a
 719  0089 7b0b          	ld	a,(OFST+8,sp)
 720  008b a402          	and	a,#2
 721  008d 1a03          	or	a,(OFST+0,sp)
 722  008f 6b02          	ld	(OFST-1,sp),a
 723  0091 7b08          	ld	a,(OFST+5,sp)
 724  0093 a404          	and	a,#4
 725  0095 6b01          	ld	(OFST-2,sp),a
 726  0097 7b05          	ld	a,(OFST+2,sp)
 727  0099 a401          	and	a,#1
 728  009b 1a01          	or	a,(OFST-2,sp)
 729  009d 1a02          	or	a,(OFST-1,sp)
 730  009f ca525c        	or	a,21084
 731  00a2 c7525c        	ld	21084,a
 732                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 732                     ; 181                             (uint8_t)TIM1_OCMode);
 734  00a5 c65258        	ld	a,21080
 735  00a8 a48f          	and	a,#143
 736  00aa 1a04          	or	a,(OFST+1,sp)
 737  00ac c75258        	ld	21080,a
 738                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 740  00af c6526f        	ld	a,21103
 741  00b2 a4fc          	and	a,#252
 742  00b4 c7526f        	ld	21103,a
 743                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 743                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 745  00b7 7b0e          	ld	a,(OFST+11,sp)
 746  00b9 a402          	and	a,#2
 747  00bb 6b03          	ld	(OFST+0,sp),a
 748  00bd 7b0d          	ld	a,(OFST+10,sp)
 749  00bf a401          	and	a,#1
 750  00c1 1a03          	or	a,(OFST+0,sp)
 751  00c3 ca526f        	or	a,21103
 752  00c6 c7526f        	ld	21103,a
 753                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 755  00c9 7b09          	ld	a,(OFST+6,sp)
 756  00cb c75265        	ld	21093,a
 757                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 759  00ce 7b0a          	ld	a,(OFST+7,sp)
 760  00d0 c75266        	ld	21094,a
 761                     ; 192 }
 764  00d3 5b05          	addw	sp,#5
 765  00d5 81            	ret	
 766  00d6               LC001:
 767  00d6 89            	pushw	x
 768  00d7 5f            	clrw	x
 769  00d8 89            	pushw	x
 770  00d9 ae0000        	ldw	x,#L37
 771  00dc cd0000        	call	_assert_failed
 773  00df 5b04          	addw	sp,#4
 774  00e1 81            	ret	
 877                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 877                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 877                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 877                     ; 216                   uint16_t TIM1_Pulse,
 877                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 877                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 877                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 877                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 877                     ; 221 {
 878                     .text:	section	.text,new
 879  0000               _TIM1_OC2Init:
 881  0000 89            	pushw	x
 882  0001 5203          	subw	sp,#3
 883       00000003      OFST:	set	3
 886                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 888  0003 9e            	ld	a,xh
 889  0004 4d            	tnz	a
 890  0005 271f          	jreq	L021
 891  0007 9e            	ld	a,xh
 892  0008 a110          	cp	a,#16
 893  000a 271a          	jreq	L021
 894  000c 9e            	ld	a,xh
 895  000d a120          	cp	a,#32
 896  000f 2715          	jreq	L021
 897  0011 9e            	ld	a,xh
 898  0012 a130          	cp	a,#48
 899  0014 2710          	jreq	L021
 900  0016 9e            	ld	a,xh
 901  0017 a160          	cp	a,#96
 902  0019 270b          	jreq	L021
 903  001b 9e            	ld	a,xh
 904  001c a170          	cp	a,#112
 905  001e 2706          	jreq	L021
 906  0020 ae00df        	ldw	x,#223
 907  0023 cd00d6        	call	LC002
 908  0026               L021:
 909                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 911  0026 7b05          	ld	a,(OFST+2,sp)
 912  0028 270a          	jreq	L031
 913  002a a111          	cp	a,#17
 914  002c 2706          	jreq	L031
 915  002e ae00e0        	ldw	x,#224
 916  0031 cd00d6        	call	LC002
 917  0034               L031:
 918                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 920  0034 7b08          	ld	a,(OFST+5,sp)
 921  0036 270a          	jreq	L041
 922  0038 a144          	cp	a,#68
 923  003a 2706          	jreq	L041
 924  003c ae00e1        	ldw	x,#225
 925  003f cd00d6        	call	LC002
 926  0042               L041:
 927                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 929  0042 7b0b          	ld	a,(OFST+8,sp)
 930  0044 270a          	jreq	L051
 931  0046 a122          	cp	a,#34
 932  0048 2706          	jreq	L051
 933  004a ae00e2        	ldw	x,#226
 934  004d cd00d6        	call	LC002
 935  0050               L051:
 936                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 938  0050 7b0c          	ld	a,(OFST+9,sp)
 939  0052 2709          	jreq	L061
 940  0054 a188          	cp	a,#136
 941  0056 2705          	jreq	L061
 942  0058 ae00e3        	ldw	x,#227
 943  005b ad79          	call	LC002
 944  005d               L061:
 945                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 947  005d 7b0d          	ld	a,(OFST+10,sp)
 948  005f a155          	cp	a,#85
 949  0061 2709          	jreq	L071
 950  0063 7b0d          	ld	a,(OFST+10,sp)
 951  0065 2705          	jreq	L071
 952  0067 ae00e4        	ldw	x,#228
 953  006a ad6a          	call	LC002
 954  006c               L071:
 955                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 957  006c 7b0e          	ld	a,(OFST+11,sp)
 958  006e a12a          	cp	a,#42
 959  0070 2709          	jreq	L002
 960  0072 7b0e          	ld	a,(OFST+11,sp)
 961  0074 2705          	jreq	L002
 962  0076 ae00e5        	ldw	x,#229
 963  0079 ad5b          	call	LC002
 964  007b               L002:
 965                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 965                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 967  007b c6525c        	ld	a,21084
 968  007e a40f          	and	a,#15
 969  0080 c7525c        	ld	21084,a
 970                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 970                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 970                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 970                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 972  0083 7b0c          	ld	a,(OFST+9,sp)
 973  0085 a480          	and	a,#128
 974  0087 6b03          	ld	(OFST+0,sp),a
 975  0089 7b0b          	ld	a,(OFST+8,sp)
 976  008b a420          	and	a,#32
 977  008d 1a03          	or	a,(OFST+0,sp)
 978  008f 6b02          	ld	(OFST-1,sp),a
 979  0091 7b08          	ld	a,(OFST+5,sp)
 980  0093 a440          	and	a,#64
 981  0095 6b01          	ld	(OFST-2,sp),a
 982  0097 7b05          	ld	a,(OFST+2,sp)
 983  0099 a410          	and	a,#16
 984  009b 1a01          	or	a,(OFST-2,sp)
 985  009d 1a02          	or	a,(OFST-1,sp)
 986  009f ca525c        	or	a,21084
 987  00a2 c7525c        	ld	21084,a
 988                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 988                     ; 245                              (uint8_t)TIM1_OCMode);
 990  00a5 c65259        	ld	a,21081
 991  00a8 a48f          	and	a,#143
 992  00aa 1a04          	or	a,(OFST+1,sp)
 993  00ac c75259        	ld	21081,a
 994                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 996  00af c6526f        	ld	a,21103
 997  00b2 a4f3          	and	a,#243
 998  00b4 c7526f        	ld	21103,a
 999                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 999                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1001  00b7 7b0e          	ld	a,(OFST+11,sp)
1002  00b9 a408          	and	a,#8
1003  00bb 6b03          	ld	(OFST+0,sp),a
1004  00bd 7b0d          	ld	a,(OFST+10,sp)
1005  00bf a404          	and	a,#4
1006  00c1 1a03          	or	a,(OFST+0,sp)
1007  00c3 ca526f        	or	a,21103
1008  00c6 c7526f        	ld	21103,a
1009                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1011  00c9 7b09          	ld	a,(OFST+6,sp)
1012  00cb c75267        	ld	21095,a
1013                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1015  00ce 7b0a          	ld	a,(OFST+7,sp)
1016  00d0 c75268        	ld	21096,a
1017                     ; 257 }
1020  00d3 5b05          	addw	sp,#5
1021  00d5 81            	ret	
1022  00d6               LC002:
1023  00d6 89            	pushw	x
1024  00d7 5f            	clrw	x
1025  00d8 89            	pushw	x
1026  00d9 ae0000        	ldw	x,#L37
1027  00dc cd0000        	call	_assert_failed
1029  00df 5b04          	addw	sp,#4
1030  00e1 81            	ret	
1133                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1133                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
1133                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1133                     ; 281                   uint16_t TIM1_Pulse,
1133                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1133                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1133                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1133                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1133                     ; 286 {
1134                     .text:	section	.text,new
1135  0000               _TIM1_OC3Init:
1137  0000 89            	pushw	x
1138  0001 5203          	subw	sp,#3
1139       00000003      OFST:	set	3
1142                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1144  0003 9e            	ld	a,xh
1145  0004 4d            	tnz	a
1146  0005 271f          	jreq	L212
1147  0007 9e            	ld	a,xh
1148  0008 a110          	cp	a,#16
1149  000a 271a          	jreq	L212
1150  000c 9e            	ld	a,xh
1151  000d a120          	cp	a,#32
1152  000f 2715          	jreq	L212
1153  0011 9e            	ld	a,xh
1154  0012 a130          	cp	a,#48
1155  0014 2710          	jreq	L212
1156  0016 9e            	ld	a,xh
1157  0017 a160          	cp	a,#96
1158  0019 270b          	jreq	L212
1159  001b 9e            	ld	a,xh
1160  001c a170          	cp	a,#112
1161  001e 2706          	jreq	L212
1162  0020 ae0120        	ldw	x,#288
1163  0023 cd00d6        	call	LC003
1164  0026               L212:
1165                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1167  0026 7b05          	ld	a,(OFST+2,sp)
1168  0028 270a          	jreq	L222
1169  002a a111          	cp	a,#17
1170  002c 2706          	jreq	L222
1171  002e ae0121        	ldw	x,#289
1172  0031 cd00d6        	call	LC003
1173  0034               L222:
1174                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1176  0034 7b08          	ld	a,(OFST+5,sp)
1177  0036 270a          	jreq	L232
1178  0038 a144          	cp	a,#68
1179  003a 2706          	jreq	L232
1180  003c ae0122        	ldw	x,#290
1181  003f cd00d6        	call	LC003
1182  0042               L232:
1183                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1185  0042 7b0b          	ld	a,(OFST+8,sp)
1186  0044 270a          	jreq	L242
1187  0046 a122          	cp	a,#34
1188  0048 2706          	jreq	L242
1189  004a ae0123        	ldw	x,#291
1190  004d cd00d6        	call	LC003
1191  0050               L242:
1192                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1194  0050 7b0c          	ld	a,(OFST+9,sp)
1195  0052 2709          	jreq	L252
1196  0054 a188          	cp	a,#136
1197  0056 2705          	jreq	L252
1198  0058 ae0124        	ldw	x,#292
1199  005b ad79          	call	LC003
1200  005d               L252:
1201                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1203  005d 7b0d          	ld	a,(OFST+10,sp)
1204  005f a155          	cp	a,#85
1205  0061 2709          	jreq	L262
1206  0063 7b0d          	ld	a,(OFST+10,sp)
1207  0065 2705          	jreq	L262
1208  0067 ae0125        	ldw	x,#293
1209  006a ad6a          	call	LC003
1210  006c               L262:
1211                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1213  006c 7b0e          	ld	a,(OFST+11,sp)
1214  006e a12a          	cp	a,#42
1215  0070 2709          	jreq	L272
1216  0072 7b0e          	ld	a,(OFST+11,sp)
1217  0074 2705          	jreq	L272
1218  0076 ae0126        	ldw	x,#294
1219  0079 ad5b          	call	LC003
1220  007b               L272:
1221                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1221                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1223  007b c6525d        	ld	a,21085
1224  007e a4f0          	and	a,#240
1225  0080 c7525d        	ld	21085,a
1226                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1226                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1226                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1226                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1228  0083 7b0c          	ld	a,(OFST+9,sp)
1229  0085 a408          	and	a,#8
1230  0087 6b03          	ld	(OFST+0,sp),a
1231  0089 7b0b          	ld	a,(OFST+8,sp)
1232  008b a402          	and	a,#2
1233  008d 1a03          	or	a,(OFST+0,sp)
1234  008f 6b02          	ld	(OFST-1,sp),a
1235  0091 7b08          	ld	a,(OFST+5,sp)
1236  0093 a404          	and	a,#4
1237  0095 6b01          	ld	(OFST-2,sp),a
1238  0097 7b05          	ld	a,(OFST+2,sp)
1239  0099 a401          	and	a,#1
1240  009b 1a01          	or	a,(OFST-2,sp)
1241  009d 1a02          	or	a,(OFST-1,sp)
1242  009f ca525d        	or	a,21085
1243  00a2 c7525d        	ld	21085,a
1244                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1244                     ; 309                              (uint8_t)TIM1_OCMode);
1246  00a5 c6525a        	ld	a,21082
1247  00a8 a48f          	and	a,#143
1248  00aa 1a04          	or	a,(OFST+1,sp)
1249  00ac c7525a        	ld	21082,a
1250                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1252  00af c6526f        	ld	a,21103
1253  00b2 a4cf          	and	a,#207
1254  00b4 c7526f        	ld	21103,a
1255                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1255                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1257  00b7 7b0e          	ld	a,(OFST+11,sp)
1258  00b9 a420          	and	a,#32
1259  00bb 6b03          	ld	(OFST+0,sp),a
1260  00bd 7b0d          	ld	a,(OFST+10,sp)
1261  00bf a410          	and	a,#16
1262  00c1 1a03          	or	a,(OFST+0,sp)
1263  00c3 ca526f        	or	a,21103
1264  00c6 c7526f        	ld	21103,a
1265                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1267  00c9 7b09          	ld	a,(OFST+6,sp)
1268  00cb c75269        	ld	21097,a
1269                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1271  00ce 7b0a          	ld	a,(OFST+7,sp)
1272  00d0 c7526a        	ld	21098,a
1273                     ; 321 }
1276  00d3 5b05          	addw	sp,#5
1277  00d5 81            	ret	
1278  00d6               LC003:
1279  00d6 89            	pushw	x
1280  00d7 5f            	clrw	x
1281  00d8 89            	pushw	x
1282  00d9 ae0000        	ldw	x,#L37
1283  00dc cd0000        	call	_assert_failed
1285  00df 5b04          	addw	sp,#4
1286  00e1 81            	ret	
1359                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1359                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1359                     ; 338                   uint16_t TIM1_Pulse,
1359                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1359                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1359                     ; 341 {
1360                     .text:	section	.text,new
1361  0000               _TIM1_OC4Init:
1363  0000 89            	pushw	x
1364  0001 88            	push	a
1365       00000001      OFST:	set	1
1368                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1370  0002 9e            	ld	a,xh
1371  0003 4d            	tnz	a
1372  0004 271e          	jreq	L403
1373  0006 9e            	ld	a,xh
1374  0007 a110          	cp	a,#16
1375  0009 2719          	jreq	L403
1376  000b 9e            	ld	a,xh
1377  000c a120          	cp	a,#32
1378  000e 2714          	jreq	L403
1379  0010 9e            	ld	a,xh
1380  0011 a130          	cp	a,#48
1381  0013 270f          	jreq	L403
1382  0015 9e            	ld	a,xh
1383  0016 a160          	cp	a,#96
1384  0018 270a          	jreq	L403
1385  001a 9e            	ld	a,xh
1386  001b a170          	cp	a,#112
1387  001d 2705          	jreq	L403
1388  001f ae0157        	ldw	x,#343
1389  0022 ad6c          	call	LC004
1390  0024               L403:
1391                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1393  0024 7b03          	ld	a,(OFST+2,sp)
1394  0026 2709          	jreq	L413
1395  0028 a111          	cp	a,#17
1396  002a 2705          	jreq	L413
1397  002c ae0158        	ldw	x,#344
1398  002f ad5f          	call	LC004
1399  0031               L413:
1400                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1402  0031 7b08          	ld	a,(OFST+7,sp)
1403  0033 2709          	jreq	L423
1404  0035 a122          	cp	a,#34
1405  0037 2705          	jreq	L423
1406  0039 ae0159        	ldw	x,#345
1407  003c ad52          	call	LC004
1408  003e               L423:
1409                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1411  003e 7b09          	ld	a,(OFST+8,sp)
1412  0040 a155          	cp	a,#85
1413  0042 2709          	jreq	L433
1414  0044 7b09          	ld	a,(OFST+8,sp)
1415  0046 2705          	jreq	L433
1416  0048 ae015a        	ldw	x,#346
1417  004b ad43          	call	LC004
1418  004d               L433:
1419                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1421  004d c6525d        	ld	a,21085
1422  0050 a4cf          	and	a,#207
1423  0052 c7525d        	ld	21085,a
1424                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1424                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1426  0055 7b08          	ld	a,(OFST+7,sp)
1427  0057 a420          	and	a,#32
1428  0059 6b01          	ld	(OFST+0,sp),a
1429  005b 7b03          	ld	a,(OFST+2,sp)
1430  005d a410          	and	a,#16
1431  005f 1a01          	or	a,(OFST+0,sp)
1432  0061 ca525d        	or	a,21085
1433  0064 c7525d        	ld	21085,a
1434                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1434                     ; 356                             TIM1_OCMode);
1436  0067 c6525b        	ld	a,21083
1437  006a a48f          	and	a,#143
1438  006c 1a02          	or	a,(OFST+1,sp)
1439  006e c7525b        	ld	21083,a
1440                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1442  0071 7b09          	ld	a,(OFST+8,sp)
1443  0073 270a          	jreq	L124
1444                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1446  0075 c6526f        	ld	a,21103
1447  0078 aadf          	or	a,#223
1448  007a c7526f        	ld	21103,a
1450  007d 2004          	jra	L324
1451  007f               L124:
1452                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1454  007f 721d526f      	bres	21103,#6
1455  0083               L324:
1456                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1458  0083 7b06          	ld	a,(OFST+5,sp)
1459  0085 c7526b        	ld	21099,a
1460                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1462  0088 7b07          	ld	a,(OFST+6,sp)
1463  008a c7526c        	ld	21100,a
1464                     ; 372 }
1467  008d 5b03          	addw	sp,#3
1468  008f 81            	ret	
1469  0090               LC004:
1470  0090 89            	pushw	x
1471  0091 5f            	clrw	x
1472  0092 89            	pushw	x
1473  0093 ae0000        	ldw	x,#L37
1474  0096 cd0000        	call	_assert_failed
1476  0099 5b04          	addw	sp,#4
1477  009b 81            	ret	
1681                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1681                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1681                     ; 389                      uint8_t TIM1_DeadTime,
1681                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1681                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1681                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1681                     ; 393 {
1682                     .text:	section	.text,new
1683  0000               _TIM1_BDTRConfig:
1685  0000 89            	pushw	x
1686  0001 88            	push	a
1687       00000001      OFST:	set	1
1690                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1692  0002 9e            	ld	a,xh
1693  0003 a104          	cp	a,#4
1694  0005 2709          	jreq	L643
1695  0007 9e            	ld	a,xh
1696  0008 4d            	tnz	a
1697  0009 2705          	jreq	L643
1698  000b ae018b        	ldw	x,#395
1699  000e ad59          	call	LC005
1700  0010               L643:
1701                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1703  0010 7b03          	ld	a,(OFST+2,sp)
1704  0012 2711          	jreq	L653
1705  0014 a101          	cp	a,#1
1706  0016 270d          	jreq	L653
1707  0018 a102          	cp	a,#2
1708  001a 2709          	jreq	L653
1709  001c a103          	cp	a,#3
1710  001e 2705          	jreq	L653
1711  0020 ae018c        	ldw	x,#396
1712  0023 ad44          	call	LC005
1713  0025               L653:
1714                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1716  0025 7b07          	ld	a,(OFST+6,sp)
1717  0027 a110          	cp	a,#16
1718  0029 2709          	jreq	L663
1719  002b 7b07          	ld	a,(OFST+6,sp)
1720  002d 2705          	jreq	L663
1721  002f ae018d        	ldw	x,#397
1722  0032 ad35          	call	LC005
1723  0034               L663:
1724                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1726  0034 7b08          	ld	a,(OFST+7,sp)
1727  0036 2709          	jreq	L673
1728  0038 a120          	cp	a,#32
1729  003a 2705          	jreq	L673
1730  003c ae018e        	ldw	x,#398
1731  003f ad28          	call	LC005
1732  0041               L673:
1733                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1735  0041 7b09          	ld	a,(OFST+8,sp)
1736  0043 a140          	cp	a,#64
1737  0045 2709          	jreq	L604
1738  0047 7b09          	ld	a,(OFST+8,sp)
1739  0049 2705          	jreq	L604
1740  004b ae018f        	ldw	x,#399
1741  004e ad19          	call	LC005
1742  0050               L604:
1743                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1745  0050 7b06          	ld	a,(OFST+5,sp)
1746  0052 c7526e        	ld	21102,a
1747                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1747                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1747                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
1749  0055 7b07          	ld	a,(OFST+6,sp)
1750  0057 1a08          	or	a,(OFST+7,sp)
1751  0059 1a09          	or	a,(OFST+8,sp)
1752  005b 6b01          	ld	(OFST+0,sp),a
1753  005d 7b02          	ld	a,(OFST+1,sp)
1754  005f 1a03          	or	a,(OFST+2,sp)
1755  0061 1a01          	or	a,(OFST+0,sp)
1756  0063 c7526d        	ld	21101,a
1757                     ; 409 }
1760  0066 5b03          	addw	sp,#3
1761  0068 81            	ret	
1762  0069               LC005:
1763  0069 89            	pushw	x
1764  006a 5f            	clrw	x
1765  006b 89            	pushw	x
1766  006c ae0000        	ldw	x,#L37
1767  006f cd0000        	call	_assert_failed
1769  0072 5b04          	addw	sp,#4
1770  0074 81            	ret	
1971                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1971                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1971                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1971                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1971                     ; 427                  uint8_t TIM1_ICFilter)
1971                     ; 428 {
1972                     .text:	section	.text,new
1973  0000               _TIM1_ICInit:
1975  0000 89            	pushw	x
1976       00000000      OFST:	set	0
1979                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1981  0001 9e            	ld	a,xh
1982  0002 4d            	tnz	a
1983  0003 2714          	jreq	L024
1984  0005 9e            	ld	a,xh
1985  0006 4a            	dec	a
1986  0007 2710          	jreq	L024
1987  0009 9e            	ld	a,xh
1988  000a a102          	cp	a,#2
1989  000c 270b          	jreq	L024
1990  000e 9e            	ld	a,xh
1991  000f a103          	cp	a,#3
1992  0011 2706          	jreq	L024
1993  0013 ae01af        	ldw	x,#431
1994  0016 cd00b5        	call	LC006
1995  0019               L024:
1996                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1998  0019 7b02          	ld	a,(OFST+2,sp)
1999  001b 2709          	jreq	L034
2000  001d 4a            	dec	a
2001  001e 2706          	jreq	L034
2002  0020 ae01b0        	ldw	x,#432
2003  0023 cd00b5        	call	LC006
2004  0026               L034:
2005                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2007  0026 7b05          	ld	a,(OFST+5,sp)
2008  0028 a101          	cp	a,#1
2009  002a 270d          	jreq	L044
2010  002c a102          	cp	a,#2
2011  002e 2709          	jreq	L044
2012  0030 a103          	cp	a,#3
2013  0032 2705          	jreq	L044
2014  0034 ae01b1        	ldw	x,#433
2015  0037 ad7c          	call	LC006
2016  0039               L044:
2017                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2019  0039 7b06          	ld	a,(OFST+6,sp)
2020  003b 2711          	jreq	L054
2021  003d a104          	cp	a,#4
2022  003f 270d          	jreq	L054
2023  0041 a108          	cp	a,#8
2024  0043 2709          	jreq	L054
2025  0045 a10c          	cp	a,#12
2026  0047 2705          	jreq	L054
2027  0049 ae01b2        	ldw	x,#434
2028  004c ad67          	call	LC006
2029  004e               L054:
2030                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2032  004e 7b07          	ld	a,(OFST+7,sp)
2033  0050 a110          	cp	a,#16
2034  0052 2505          	jrult	L654
2035  0054 ae01b3        	ldw	x,#435
2036  0057 ad5c          	call	LC006
2037  0059               L654:
2038                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
2040  0059 7b01          	ld	a,(OFST+1,sp)
2041  005b 2614          	jrne	L746
2042                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
2042                     ; 441                    (uint8_t)TIM1_ICSelection,
2042                     ; 442                    (uint8_t)TIM1_ICFilter);
2044  005d 7b07          	ld	a,(OFST+7,sp)
2045  005f 88            	push	a
2046  0060 7b06          	ld	a,(OFST+6,sp)
2047  0062 97            	ld	xl,a
2048  0063 7b03          	ld	a,(OFST+3,sp)
2049  0065 95            	ld	xh,a
2050  0066 cd0000        	call	L3_TI1_Config
2052  0069 84            	pop	a
2053                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2055  006a 7b06          	ld	a,(OFST+6,sp)
2056  006c cd0000        	call	_TIM1_SetIC1Prescaler
2059  006f 2042          	jra	L156
2060  0071               L746:
2061                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
2063  0071 a101          	cp	a,#1
2064  0073 2614          	jrne	L356
2065                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
2065                     ; 450                    (uint8_t)TIM1_ICSelection,
2065                     ; 451                    (uint8_t)TIM1_ICFilter);
2067  0075 7b07          	ld	a,(OFST+7,sp)
2068  0077 88            	push	a
2069  0078 7b06          	ld	a,(OFST+6,sp)
2070  007a 97            	ld	xl,a
2071  007b 7b03          	ld	a,(OFST+3,sp)
2072  007d 95            	ld	xh,a
2073  007e cd0000        	call	L5_TI2_Config
2075  0081 84            	pop	a
2076                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2078  0082 7b06          	ld	a,(OFST+6,sp)
2079  0084 cd0000        	call	_TIM1_SetIC2Prescaler
2082  0087 202a          	jra	L156
2083  0089               L356:
2084                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
2086  0089 a102          	cp	a,#2
2087  008b 2614          	jrne	L756
2088                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
2088                     ; 459                    (uint8_t)TIM1_ICSelection,
2088                     ; 460                    (uint8_t)TIM1_ICFilter);
2090  008d 7b07          	ld	a,(OFST+7,sp)
2091  008f 88            	push	a
2092  0090 7b06          	ld	a,(OFST+6,sp)
2093  0092 97            	ld	xl,a
2094  0093 7b03          	ld	a,(OFST+3,sp)
2095  0095 95            	ld	xh,a
2096  0096 cd0000        	call	L7_TI3_Config
2098  0099 84            	pop	a
2099                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2101  009a 7b06          	ld	a,(OFST+6,sp)
2102  009c cd0000        	call	_TIM1_SetIC3Prescaler
2105  009f 2012          	jra	L156
2106  00a1               L756:
2107                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
2107                     ; 468                    (uint8_t)TIM1_ICSelection,
2107                     ; 469                    (uint8_t)TIM1_ICFilter);
2109  00a1 7b07          	ld	a,(OFST+7,sp)
2110  00a3 88            	push	a
2111  00a4 7b06          	ld	a,(OFST+6,sp)
2112  00a6 97            	ld	xl,a
2113  00a7 7b03          	ld	a,(OFST+3,sp)
2114  00a9 95            	ld	xh,a
2115  00aa cd0000        	call	L11_TI4_Config
2117  00ad 84            	pop	a
2118                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2120  00ae 7b06          	ld	a,(OFST+6,sp)
2121  00b0 cd0000        	call	_TIM1_SetIC4Prescaler
2123  00b3               L156:
2124                     ; 474 }
2127  00b3 85            	popw	x
2128  00b4 81            	ret	
2129  00b5               LC006:
2130  00b5 89            	pushw	x
2131  00b6 5f            	clrw	x
2132  00b7 89            	pushw	x
2133  00b8 ae0000        	ldw	x,#L37
2134  00bb cd0000        	call	_assert_failed
2136  00be 5b04          	addw	sp,#4
2137  00c0 81            	ret	
2228                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2228                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2228                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2228                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2228                     ; 494                      uint8_t TIM1_ICFilter)
2228                     ; 495 {
2229                     .text:	section	.text,new
2230  0000               _TIM1_PWMIConfig:
2232  0000 89            	pushw	x
2233  0001 89            	pushw	x
2234       00000002      OFST:	set	2
2237                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2239                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2241                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2243  0002 9e            	ld	a,xh
2244  0003 4d            	tnz	a
2245  0004 270a          	jreq	L015
2246  0006 9e            	ld	a,xh
2247  0007 4a            	dec	a
2248  0008 2706          	jreq	L015
2249  000a ae01f4        	ldw	x,#500
2250  000d cd00ac        	call	LC007
2251  0010               L015:
2252                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2254  0010 7b04          	ld	a,(OFST+2,sp)
2255  0012 2709          	jreq	L025
2256  0014 4a            	dec	a
2257  0015 2706          	jreq	L025
2258  0017 ae01f5        	ldw	x,#501
2259  001a cd00ac        	call	LC007
2260  001d               L025:
2261                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2263  001d 7b07          	ld	a,(OFST+5,sp)
2264  001f a101          	cp	a,#1
2265  0021 270d          	jreq	L035
2266  0023 a102          	cp	a,#2
2267  0025 2709          	jreq	L035
2268  0027 a103          	cp	a,#3
2269  0029 2705          	jreq	L035
2270  002b ae01f6        	ldw	x,#502
2271  002e ad7c          	call	LC007
2272  0030               L035:
2273                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2275  0030 7b08          	ld	a,(OFST+6,sp)
2276  0032 2711          	jreq	L045
2277  0034 a104          	cp	a,#4
2278  0036 270d          	jreq	L045
2279  0038 a108          	cp	a,#8
2280  003a 2709          	jreq	L045
2281  003c a10c          	cp	a,#12
2282  003e 2705          	jreq	L045
2283  0040 ae01f7        	ldw	x,#503
2284  0043 ad67          	call	LC007
2285  0045               L045:
2286                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2288  0045 7b04          	ld	a,(OFST+2,sp)
2289  0047 4a            	dec	a
2290  0048 2702          	jreq	L327
2291                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
2293  004a a601          	ld	a,#1
2295  004c               L327:
2296                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
2298  004c 6b01          	ld	(OFST-1,sp),a
2299                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2301  004e 7b07          	ld	a,(OFST+5,sp)
2302  0050 4a            	dec	a
2303  0051 2604          	jrne	L727
2304                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
2306  0053 a602          	ld	a,#2
2308  0055 2002          	jra	L137
2309  0057               L727:
2310                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
2312  0057 a601          	ld	a,#1
2313  0059               L137:
2314  0059 6b02          	ld	(OFST+0,sp),a
2315                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
2317  005b 7b03          	ld	a,(OFST+1,sp)
2318  005d 2626          	jrne	L337
2319                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2319                     ; 529                    (uint8_t)TIM1_ICFilter);
2321  005f 7b09          	ld	a,(OFST+7,sp)
2322  0061 88            	push	a
2323  0062 7b08          	ld	a,(OFST+6,sp)
2324  0064 97            	ld	xl,a
2325  0065 7b05          	ld	a,(OFST+3,sp)
2326  0067 95            	ld	xh,a
2327  0068 cd0000        	call	L3_TI1_Config
2329  006b 84            	pop	a
2330                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2332  006c 7b08          	ld	a,(OFST+6,sp)
2333  006e cd0000        	call	_TIM1_SetIC1Prescaler
2335                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2337  0071 7b09          	ld	a,(OFST+7,sp)
2338  0073 88            	push	a
2339  0074 7b03          	ld	a,(OFST+1,sp)
2340  0076 97            	ld	xl,a
2341  0077 7b02          	ld	a,(OFST+0,sp)
2342  0079 95            	ld	xh,a
2343  007a cd0000        	call	L5_TI2_Config
2345  007d 84            	pop	a
2346                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2348  007e 7b08          	ld	a,(OFST+6,sp)
2349  0080 cd0000        	call	_TIM1_SetIC2Prescaler
2352  0083 2024          	jra	L537
2353  0085               L337:
2354                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2354                     ; 544                    (uint8_t)TIM1_ICFilter);
2356  0085 7b09          	ld	a,(OFST+7,sp)
2357  0087 88            	push	a
2358  0088 7b08          	ld	a,(OFST+6,sp)
2359  008a 97            	ld	xl,a
2360  008b 7b05          	ld	a,(OFST+3,sp)
2361  008d 95            	ld	xh,a
2362  008e cd0000        	call	L5_TI2_Config
2364  0091 84            	pop	a
2365                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2367  0092 7b08          	ld	a,(OFST+6,sp)
2368  0094 cd0000        	call	_TIM1_SetIC2Prescaler
2370                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2372  0097 7b09          	ld	a,(OFST+7,sp)
2373  0099 88            	push	a
2374  009a 7b03          	ld	a,(OFST+1,sp)
2375  009c 97            	ld	xl,a
2376  009d 7b02          	ld	a,(OFST+0,sp)
2377  009f 95            	ld	xh,a
2378  00a0 cd0000        	call	L3_TI1_Config
2380  00a3 84            	pop	a
2381                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2383  00a4 7b08          	ld	a,(OFST+6,sp)
2384  00a6 cd0000        	call	_TIM1_SetIC1Prescaler
2386  00a9               L537:
2387                     ; 555 }
2390  00a9 5b04          	addw	sp,#4
2391  00ab 81            	ret	
2392  00ac               LC007:
2393  00ac 89            	pushw	x
2394  00ad 5f            	clrw	x
2395  00ae 89            	pushw	x
2396  00af ae0000        	ldw	x,#L37
2397  00b2 cd0000        	call	_assert_failed
2399  00b5 5b04          	addw	sp,#4
2400  00b7 81            	ret	
2456                     ; 563 void TIM1_Cmd(FunctionalState NewState)
2456                     ; 564 {
2457                     .text:	section	.text,new
2458  0000               _TIM1_Cmd:
2460  0000 88            	push	a
2461       00000000      OFST:	set	0
2464                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2466  0001 4d            	tnz	a
2467  0002 2711          	jreq	L275
2468  0004 4a            	dec	a
2469  0005 270e          	jreq	L275
2470  0007 ae0236        	ldw	x,#566
2471  000a 89            	pushw	x
2472  000b 5f            	clrw	x
2473  000c 89            	pushw	x
2474  000d ae0000        	ldw	x,#L37
2475  0010 cd0000        	call	_assert_failed
2477  0013 5b04          	addw	sp,#4
2478  0015               L275:
2479                     ; 569     if (NewState != DISABLE)
2481  0015 7b01          	ld	a,(OFST+1,sp)
2482  0017 2706          	jreq	L567
2483                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2485  0019 72105250      	bset	21072,#0
2487  001d 2004          	jra	L767
2488  001f               L567:
2489                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2491  001f 72115250      	bres	21072,#0
2492  0023               L767:
2493                     ; 577 }
2496  0023 84            	pop	a
2497  0024 81            	ret	
2534                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2534                     ; 586 {
2535                     .text:	section	.text,new
2536  0000               _TIM1_CtrlPWMOutputs:
2538  0000 88            	push	a
2539       00000000      OFST:	set	0
2542                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2544  0001 4d            	tnz	a
2545  0002 2711          	jreq	L406
2546  0004 4a            	dec	a
2547  0005 270e          	jreq	L406
2548  0007 ae024c        	ldw	x,#588
2549  000a 89            	pushw	x
2550  000b 5f            	clrw	x
2551  000c 89            	pushw	x
2552  000d ae0000        	ldw	x,#L37
2553  0010 cd0000        	call	_assert_failed
2555  0013 5b04          	addw	sp,#4
2556  0015               L406:
2557                     ; 592     if (NewState != DISABLE)
2559  0015 7b01          	ld	a,(OFST+1,sp)
2560  0017 2706          	jreq	L7001
2561                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2563  0019 721e526d      	bset	21101,#7
2565  001d 2004          	jra	L1101
2566  001f               L7001:
2567                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2569  001f 721f526d      	bres	21101,#7
2570  0023               L1101:
2571                     ; 600 }
2574  0023 84            	pop	a
2575  0024 81            	ret	
2683                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2683                     ; 620 {
2684                     .text:	section	.text,new
2685  0000               _TIM1_ITConfig:
2687  0000 89            	pushw	x
2688       00000000      OFST:	set	0
2691                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2693  0001 9e            	ld	a,xh
2694  0002 4d            	tnz	a
2695  0003 2605          	jrne	L416
2696  0005 ae026e        	ldw	x,#622
2697  0008 ad22          	call	LC008
2698  000a               L416:
2699                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2701  000a 7b02          	ld	a,(OFST+2,sp)
2702  000c 2708          	jreq	L426
2703  000e 4a            	dec	a
2704  000f 2705          	jreq	L426
2705  0011 ae026f        	ldw	x,#623
2706  0014 ad16          	call	LC008
2707  0016               L426:
2708                     ; 625     if (NewState != DISABLE)
2710  0016 7b02          	ld	a,(OFST+2,sp)
2711  0018 2707          	jreq	L1601
2712                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
2714  001a c65254        	ld	a,21076
2715  001d 1a01          	or	a,(OFST+1,sp)
2717  001f 2006          	jra	L3601
2718  0021               L1601:
2719                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2721  0021 7b01          	ld	a,(OFST+1,sp)
2722  0023 43            	cpl	a
2723  0024 c45254        	and	a,21076
2724  0027               L3601:
2725  0027 c75254        	ld	21076,a
2726                     ; 635 }
2729  002a 85            	popw	x
2730  002b 81            	ret	
2731  002c               LC008:
2732  002c 89            	pushw	x
2733  002d 5f            	clrw	x
2734  002e 89            	pushw	x
2735  002f ae0000        	ldw	x,#L37
2736  0032 cd0000        	call	_assert_failed
2738  0035 5b04          	addw	sp,#4
2739  0037 81            	ret	
2763                     ; 642 void TIM1_InternalClockConfig(void)
2763                     ; 643 {
2764                     .text:	section	.text,new
2765  0000               _TIM1_InternalClockConfig:
2769                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2771  0000 c65252        	ld	a,21074
2772  0003 a4f8          	and	a,#248
2773  0005 c75252        	ld	21074,a
2774                     ; 646 }
2777  0008 81            	ret	
2893                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2893                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2893                     ; 666                               uint8_t ExtTRGFilter)
2893                     ; 667 {
2894                     .text:	section	.text,new
2895  0000               _TIM1_ETRClockMode1Config:
2897  0000 89            	pushw	x
2898       00000000      OFST:	set	0
2901                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2903  0001 9e            	ld	a,xh
2904  0002 4d            	tnz	a
2905  0003 2714          	jreq	L046
2906  0005 9e            	ld	a,xh
2907  0006 a110          	cp	a,#16
2908  0008 270f          	jreq	L046
2909  000a 9e            	ld	a,xh
2910  000b a120          	cp	a,#32
2911  000d 270a          	jreq	L046
2912  000f 9e            	ld	a,xh
2913  0010 a130          	cp	a,#48
2914  0012 2705          	jreq	L046
2915  0014 ae029d        	ldw	x,#669
2916  0017 ad26          	call	LC009
2917  0019               L046:
2918                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2920  0019 7b02          	ld	a,(OFST+2,sp)
2921  001b a180          	cp	a,#128
2922  001d 2709          	jreq	L056
2923  001f 7b02          	ld	a,(OFST+2,sp)
2924  0021 2705          	jreq	L056
2925  0023 ae029e        	ldw	x,#670
2926  0026 ad17          	call	LC009
2927  0028               L056:
2928                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2930  0028 7b05          	ld	a,(OFST+5,sp)
2931  002a 88            	push	a
2932  002b 7b03          	ld	a,(OFST+3,sp)
2933  002d 97            	ld	xl,a
2934  002e 7b02          	ld	a,(OFST+2,sp)
2935  0030 95            	ld	xh,a
2936  0031 cd0000        	call	_TIM1_ETRConfig
2938  0034 84            	pop	a
2939                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2939                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2941  0035 c65252        	ld	a,21074
2942  0038 aa77          	or	a,#119
2943  003a c75252        	ld	21074,a
2944                     ; 678 }
2947  003d 85            	popw	x
2948  003e 81            	ret	
2949  003f               LC009:
2950  003f 89            	pushw	x
2951  0040 5f            	clrw	x
2952  0041 89            	pushw	x
2953  0042 ae0000        	ldw	x,#L37
2954  0045 cd0000        	call	_assert_failed
2956  0048 5b04          	addw	sp,#4
2957  004a 81            	ret	
3014                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3014                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3014                     ; 698                               uint8_t ExtTRGFilter)
3014                     ; 699 {
3015                     .text:	section	.text,new
3016  0000               _TIM1_ETRClockMode2Config:
3018  0000 89            	pushw	x
3019       00000000      OFST:	set	0
3022                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3024  0001 9e            	ld	a,xh
3025  0002 4d            	tnz	a
3026  0003 2714          	jreq	L466
3027  0005 9e            	ld	a,xh
3028  0006 a110          	cp	a,#16
3029  0008 270f          	jreq	L466
3030  000a 9e            	ld	a,xh
3031  000b a120          	cp	a,#32
3032  000d 270a          	jreq	L466
3033  000f 9e            	ld	a,xh
3034  0010 a130          	cp	a,#48
3035  0012 2705          	jreq	L466
3036  0014 ae02bd        	ldw	x,#701
3037  0017 ad22          	call	LC010
3038  0019               L466:
3039                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3041  0019 7b02          	ld	a,(OFST+2,sp)
3042  001b a180          	cp	a,#128
3043  001d 2709          	jreq	L476
3044  001f 7b02          	ld	a,(OFST+2,sp)
3045  0021 2705          	jreq	L476
3046  0023 ae02be        	ldw	x,#702
3047  0026 ad13          	call	LC010
3048  0028               L476:
3049                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3051  0028 7b05          	ld	a,(OFST+5,sp)
3052  002a 88            	push	a
3053  002b 7b03          	ld	a,(OFST+3,sp)
3054  002d 97            	ld	xl,a
3055  002e 7b02          	ld	a,(OFST+2,sp)
3056  0030 95            	ld	xh,a
3057  0031 cd0000        	call	_TIM1_ETRConfig
3059  0034 721c5253      	bset	21075,#6
3060  0038 84            	pop	a
3061                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
3063                     ; 709 }
3066  0039 85            	popw	x
3067  003a 81            	ret	
3068  003b               LC010:
3069  003b 89            	pushw	x
3070  003c 5f            	clrw	x
3071  003d 89            	pushw	x
3072  003e ae0000        	ldw	x,#L37
3073  0041 cd0000        	call	_assert_failed
3075  0044 5b04          	addw	sp,#4
3076  0046 81            	ret	
3131                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3131                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3131                     ; 729                     uint8_t ExtTRGFilter)
3131                     ; 730 {
3132                     .text:	section	.text,new
3133  0000               _TIM1_ETRConfig:
3135  0000 89            	pushw	x
3136       00000000      OFST:	set	0
3139                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3141  0001 7b05          	ld	a,(OFST+5,sp)
3142  0003 a110          	cp	a,#16
3143  0005 250e          	jrult	L607
3144  0007 ae02dc        	ldw	x,#732
3145  000a 89            	pushw	x
3146  000b 5f            	clrw	x
3147  000c 89            	pushw	x
3148  000d ae0000        	ldw	x,#L37
3149  0010 cd0000        	call	_assert_failed
3151  0013 5b04          	addw	sp,#4
3152  0015               L607:
3153                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3153                     ; 735                       (uint8_t)ExtTRGFilter );
3155  0015 7b01          	ld	a,(OFST+1,sp)
3156  0017 1a02          	or	a,(OFST+2,sp)
3157  0019 1a05          	or	a,(OFST+5,sp)
3158  001b ca5253        	or	a,21075
3159  001e c75253        	ld	21075,a
3160                     ; 736 }
3163  0021 85            	popw	x
3164  0022 81            	ret	
3252                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3252                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3252                     ; 755                                  uint8_t ICFilter)
3252                     ; 756 {
3253                     .text:	section	.text,new
3254  0000               _TIM1_TIxExternalClockConfig:
3256  0000 89            	pushw	x
3257       00000000      OFST:	set	0
3260                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3262  0001 9e            	ld	a,xh
3263  0002 a140          	cp	a,#64
3264  0004 270f          	jreq	L027
3265  0006 9e            	ld	a,xh
3266  0007 a160          	cp	a,#96
3267  0009 270a          	jreq	L027
3268  000b 9e            	ld	a,xh
3269  000c a150          	cp	a,#80
3270  000e 2705          	jreq	L027
3271  0010 ae02f6        	ldw	x,#758
3272  0013 ad47          	call	LC011
3273  0015               L027:
3274                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3276  0015 7b02          	ld	a,(OFST+2,sp)
3277  0017 2708          	jreq	L037
3278  0019 4a            	dec	a
3279  001a 2705          	jreq	L037
3280  001c ae02f7        	ldw	x,#759
3281  001f ad3b          	call	LC011
3282  0021               L037:
3283                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3285  0021 7b05          	ld	a,(OFST+5,sp)
3286  0023 a110          	cp	a,#16
3287  0025 2505          	jrult	L637
3288  0027 ae02f8        	ldw	x,#760
3289  002a ad30          	call	LC011
3290  002c               L637:
3291                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3293  002c 7b01          	ld	a,(OFST+1,sp)
3294  002e a160          	cp	a,#96
3295  0030 260e          	jrne	L3521
3296                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3298  0032 7b05          	ld	a,(OFST+5,sp)
3299  0034 88            	push	a
3300  0035 ae0001        	ldw	x,#1
3301  0038 7b03          	ld	a,(OFST+3,sp)
3302  003a 95            	ld	xh,a
3303  003b cd0000        	call	L5_TI2_Config
3306  003e 200c          	jra	L5521
3307  0040               L3521:
3308                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3310  0040 7b05          	ld	a,(OFST+5,sp)
3311  0042 88            	push	a
3312  0043 ae0001        	ldw	x,#1
3313  0046 7b03          	ld	a,(OFST+3,sp)
3314  0048 95            	ld	xh,a
3315  0049 cd0000        	call	L3_TI1_Config
3317  004c               L5521:
3318  004c 84            	pop	a
3319                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3321  004d 7b01          	ld	a,(OFST+1,sp)
3322  004f cd0000        	call	_TIM1_SelectInputTrigger
3324                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3326  0052 c65252        	ld	a,21074
3327  0055 aa07          	or	a,#7
3328  0057 c75252        	ld	21074,a
3329                     ; 777 }
3332  005a 85            	popw	x
3333  005b 81            	ret	
3334  005c               LC011:
3335  005c 89            	pushw	x
3336  005d 5f            	clrw	x
3337  005e 89            	pushw	x
3338  005f ae0000        	ldw	x,#L37
3339  0062 cd0000        	call	_assert_failed
3341  0065 5b04          	addw	sp,#4
3342  0067 81            	ret	
3428                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3428                     ; 790 {
3429                     .text:	section	.text,new
3430  0000               _TIM1_SelectInputTrigger:
3432  0000 88            	push	a
3433       00000000      OFST:	set	0
3436                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3438  0001 a140          	cp	a,#64
3439  0003 2721          	jreq	L657
3440  0005 a150          	cp	a,#80
3441  0007 271d          	jreq	L657
3442  0009 a160          	cp	a,#96
3443  000b 2719          	jreq	L657
3444  000d a170          	cp	a,#112
3445  000f 2715          	jreq	L657
3446  0011 a130          	cp	a,#48
3447  0013 2711          	jreq	L657
3448  0015 4d            	tnz	a
3449  0016 270e          	jreq	L657
3450  0018 ae0318        	ldw	x,#792
3451  001b 89            	pushw	x
3452  001c 5f            	clrw	x
3453  001d 89            	pushw	x
3454  001e ae0000        	ldw	x,#L37
3455  0021 cd0000        	call	_assert_failed
3457  0024 5b04          	addw	sp,#4
3458  0026               L657:
3459                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3461  0026 c65252        	ld	a,21074
3462  0029 a48f          	and	a,#143
3463  002b 1a01          	or	a,(OFST+1,sp)
3464  002d c75252        	ld	21074,a
3465                     ; 796 }
3468  0030 84            	pop	a
3469  0031 81            	ret	
3506                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3506                     ; 807 {
3507                     .text:	section	.text,new
3508  0000               _TIM1_UpdateDisableConfig:
3510  0000 88            	push	a
3511       00000000      OFST:	set	0
3514                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3516  0001 4d            	tnz	a
3517  0002 2711          	jreq	L077
3518  0004 4a            	dec	a
3519  0005 270e          	jreq	L077
3520  0007 ae0329        	ldw	x,#809
3521  000a 89            	pushw	x
3522  000b 5f            	clrw	x
3523  000c 89            	pushw	x
3524  000d ae0000        	ldw	x,#L37
3525  0010 cd0000        	call	_assert_failed
3527  0013 5b04          	addw	sp,#4
3528  0015               L077:
3529                     ; 812     if (NewState != DISABLE)
3531  0015 7b01          	ld	a,(OFST+1,sp)
3532  0017 2706          	jreq	L3331
3533                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
3535  0019 72125250      	bset	21072,#1
3537  001d 2004          	jra	L5331
3538  001f               L3331:
3539                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3541  001f 72135250      	bres	21072,#1
3542  0023               L5331:
3543                     ; 820 }
3546  0023 84            	pop	a
3547  0024 81            	ret	
3606                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3606                     ; 831 {
3607                     .text:	section	.text,new
3608  0000               _TIM1_UpdateRequestConfig:
3610  0000 88            	push	a
3611       00000000      OFST:	set	0
3614                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3616  0001 4d            	tnz	a
3617  0002 2711          	jreq	L2001
3618  0004 4a            	dec	a
3619  0005 270e          	jreq	L2001
3620  0007 ae0341        	ldw	x,#833
3621  000a 89            	pushw	x
3622  000b 5f            	clrw	x
3623  000c 89            	pushw	x
3624  000d ae0000        	ldw	x,#L37
3625  0010 cd0000        	call	_assert_failed
3627  0013 5b04          	addw	sp,#4
3628  0015               L2001:
3629                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3631  0015 7b01          	ld	a,(OFST+1,sp)
3632  0017 2706          	jreq	L5631
3633                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
3635  0019 72145250      	bset	21072,#2
3637  001d 2004          	jra	L7631
3638  001f               L5631:
3639                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3641  001f 72155250      	bres	21072,#2
3642  0023               L7631:
3643                     ; 844 }
3646  0023 84            	pop	a
3647  0024 81            	ret	
3684                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
3684                     ; 854 {
3685                     .text:	section	.text,new
3686  0000               _TIM1_SelectHallSensor:
3688  0000 88            	push	a
3689       00000000      OFST:	set	0
3692                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3694  0001 4d            	tnz	a
3695  0002 2711          	jreq	L4101
3696  0004 4a            	dec	a
3697  0005 270e          	jreq	L4101
3698  0007 ae0358        	ldw	x,#856
3699  000a 89            	pushw	x
3700  000b 5f            	clrw	x
3701  000c 89            	pushw	x
3702  000d ae0000        	ldw	x,#L37
3703  0010 cd0000        	call	_assert_failed
3705  0013 5b04          	addw	sp,#4
3706  0015               L4101:
3707                     ; 859     if (NewState != DISABLE)
3709  0015 7b01          	ld	a,(OFST+1,sp)
3710  0017 2706          	jreq	L7041
3711                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
3713  0019 721e5251      	bset	21073,#7
3715  001d 2004          	jra	L1141
3716  001f               L7041:
3717                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3719  001f 721f5251      	bres	21073,#7
3720  0023               L1141:
3721                     ; 867 }
3724  0023 84            	pop	a
3725  0024 81            	ret	
3783                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3783                     ; 879 {
3784                     .text:	section	.text,new
3785  0000               _TIM1_SelectOnePulseMode:
3787  0000 88            	push	a
3788       00000000      OFST:	set	0
3791                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3793  0001 a101          	cp	a,#1
3794  0003 2711          	jreq	L6201
3795  0005 4d            	tnz	a
3796  0006 270e          	jreq	L6201
3797  0008 ae0371        	ldw	x,#881
3798  000b 89            	pushw	x
3799  000c 5f            	clrw	x
3800  000d 89            	pushw	x
3801  000e ae0000        	ldw	x,#L37
3802  0011 cd0000        	call	_assert_failed
3804  0014 5b04          	addw	sp,#4
3805  0016               L6201:
3806                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3808  0016 7b01          	ld	a,(OFST+1,sp)
3809  0018 2706          	jreq	L1441
3810                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
3812  001a 72165250      	bset	21072,#3
3814  001e 2004          	jra	L3441
3815  0020               L1441:
3816                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3818  0020 72175250      	bres	21072,#3
3819  0024               L3441:
3820                     ; 893 }
3823  0024 84            	pop	a
3824  0025 81            	ret	
3923                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3923                     ; 910 {
3924                     .text:	section	.text,new
3925  0000               _TIM1_SelectOutputTrigger:
3927  0000 88            	push	a
3928       00000000      OFST:	set	0
3931                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3933  0001 4d            	tnz	a
3934  0002 2726          	jreq	L0401
3935  0004 a110          	cp	a,#16
3936  0006 2722          	jreq	L0401
3937  0008 a120          	cp	a,#32
3938  000a 271e          	jreq	L0401
3939  000c a130          	cp	a,#48
3940  000e 271a          	jreq	L0401
3941  0010 a140          	cp	a,#64
3942  0012 2716          	jreq	L0401
3943  0014 a150          	cp	a,#80
3944  0016 2712          	jreq	L0401
3945  0018 a160          	cp	a,#96
3946  001a 270e          	jreq	L0401
3947  001c ae0390        	ldw	x,#912
3948  001f 89            	pushw	x
3949  0020 5f            	clrw	x
3950  0021 89            	pushw	x
3951  0022 ae0000        	ldw	x,#L37
3952  0025 cd0000        	call	_assert_failed
3954  0028 5b04          	addw	sp,#4
3955  002a               L0401:
3956                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3956                     ; 916                           (uint8_t) TIM1_TRGOSource);
3958  002a c65251        	ld	a,21073
3959  002d a48f          	and	a,#143
3960  002f 1a01          	or	a,(OFST+1,sp)
3961  0031 c75251        	ld	21073,a
3962                     ; 917 }
3965  0034 84            	pop	a
3966  0035 81            	ret	
4041                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4041                     ; 930 {
4042                     .text:	section	.text,new
4043  0000               _TIM1_SelectSlaveMode:
4045  0000 88            	push	a
4046       00000000      OFST:	set	0
4049                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4051  0001 a104          	cp	a,#4
4052  0003 271a          	jreq	L2501
4053  0005 a105          	cp	a,#5
4054  0007 2716          	jreq	L2501
4055  0009 a106          	cp	a,#6
4056  000b 2712          	jreq	L2501
4057  000d a107          	cp	a,#7
4058  000f 270e          	jreq	L2501
4059  0011 ae03a5        	ldw	x,#933
4060  0014 89            	pushw	x
4061  0015 5f            	clrw	x
4062  0016 89            	pushw	x
4063  0017 ae0000        	ldw	x,#L37
4064  001a cd0000        	call	_assert_failed
4066  001d 5b04          	addw	sp,#4
4067  001f               L2501:
4068                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4068                     ; 937                            (uint8_t)TIM1_SlaveMode);
4070  001f c65252        	ld	a,21074
4071  0022 a4f8          	and	a,#248
4072  0024 1a01          	or	a,(OFST+1,sp)
4073  0026 c75252        	ld	21074,a
4074                     ; 939 }
4077  0029 84            	pop	a
4078  002a 81            	ret	
4115                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4115                     ; 948 {
4116                     .text:	section	.text,new
4117  0000               _TIM1_SelectMasterSlaveMode:
4119  0000 88            	push	a
4120       00000000      OFST:	set	0
4123                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4125  0001 4d            	tnz	a
4126  0002 2711          	jreq	L4601
4127  0004 4a            	dec	a
4128  0005 270e          	jreq	L4601
4129  0007 ae03b6        	ldw	x,#950
4130  000a 89            	pushw	x
4131  000b 5f            	clrw	x
4132  000c 89            	pushw	x
4133  000d ae0000        	ldw	x,#L37
4134  0010 cd0000        	call	_assert_failed
4136  0013 5b04          	addw	sp,#4
4137  0015               L4601:
4138                     ; 953     if (NewState != DISABLE)
4140  0015 7b01          	ld	a,(OFST+1,sp)
4141  0017 2706          	jreq	L5551
4142                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
4144  0019 721e5252      	bset	21074,#7
4146  001d 2004          	jra	L7551
4147  001f               L5551:
4148                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4150  001f 721f5252      	bres	21074,#7
4151  0023               L7551:
4152                     ; 961 }
4155  0023 84            	pop	a
4156  0024 81            	ret	
4243                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4243                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4243                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4243                     ; 986 {
4244                     .text:	section	.text,new
4245  0000               _TIM1_EncoderInterfaceConfig:
4247  0000 89            	pushw	x
4248       00000000      OFST:	set	0
4251                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4253  0001 9e            	ld	a,xh
4254  0002 4a            	dec	a
4255  0003 270f          	jreq	L6701
4256  0005 9e            	ld	a,xh
4257  0006 a102          	cp	a,#2
4258  0008 270a          	jreq	L6701
4259  000a 9e            	ld	a,xh
4260  000b a103          	cp	a,#3
4261  000d 2705          	jreq	L6701
4262  000f ae03de        	ldw	x,#990
4263  0012 ad54          	call	LC012
4264  0014               L6701:
4265                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4267  0014 7b02          	ld	a,(OFST+2,sp)
4268  0016 2708          	jreq	L6011
4269  0018 4a            	dec	a
4270  0019 2705          	jreq	L6011
4271  001b ae03df        	ldw	x,#991
4272  001e ad48          	call	LC012
4273  0020               L6011:
4274                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4276  0020 7b05          	ld	a,(OFST+5,sp)
4277  0022 2708          	jreq	L6111
4278  0024 4a            	dec	a
4279  0025 2705          	jreq	L6111
4280  0027 ae03e0        	ldw	x,#992
4281  002a ad3c          	call	LC012
4282  002c               L6111:
4283                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4285  002c 7b02          	ld	a,(OFST+2,sp)
4286  002e 2706          	jreq	L1261
4287                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4289  0030 7212525c      	bset	21084,#1
4291  0034 2004          	jra	L3261
4292  0036               L1261:
4293                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4295  0036 7213525c      	bres	21084,#1
4296  003a               L3261:
4297                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4299  003a 7b05          	ld	a,(OFST+5,sp)
4300  003c 2706          	jreq	L5261
4301                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4303  003e 721a525c      	bset	21084,#5
4305  0042 2004          	jra	L7261
4306  0044               L5261:
4307                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4309  0044 721b525c      	bres	21084,#5
4310  0048               L7261:
4311                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4311                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
4313  0048 c65252        	ld	a,21074
4314  004b a4f0          	and	a,#240
4315  004d 1a01          	or	a,(OFST+1,sp)
4316  004f c75252        	ld	21074,a
4317                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4317                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
4319  0052 c65258        	ld	a,21080
4320  0055 a4fc          	and	a,#252
4321  0057 aa01          	or	a,#1
4322  0059 c75258        	ld	21080,a
4323                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4323                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
4325  005c c65259        	ld	a,21081
4326  005f a4fc          	and	a,#252
4327  0061 aa01          	or	a,#1
4328  0063 c75259        	ld	21081,a
4329                     ; 1022 }
4332  0066 85            	popw	x
4333  0067 81            	ret	
4334  0068               LC012:
4335  0068 89            	pushw	x
4336  0069 5f            	clrw	x
4337  006a 89            	pushw	x
4338  006b ae0000        	ldw	x,#L37
4339  006e cd0000        	call	_assert_failed
4341  0071 5b04          	addw	sp,#4
4342  0073 81            	ret	
4408                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
4408                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4408                     ; 1037 {
4409                     .text:	section	.text,new
4410  0000               _TIM1_PrescalerConfig:
4412  0000 89            	pushw	x
4413       00000000      OFST:	set	0
4416                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4418  0001 7b05          	ld	a,(OFST+5,sp)
4419  0003 2711          	jreq	L0311
4420  0005 4a            	dec	a
4421  0006 270e          	jreq	L0311
4422  0008 ae040f        	ldw	x,#1039
4423  000b 89            	pushw	x
4424  000c 5f            	clrw	x
4425  000d 89            	pushw	x
4426  000e ae0000        	ldw	x,#L37
4427  0011 cd0000        	call	_assert_failed
4429  0014 5b04          	addw	sp,#4
4430  0016               L0311:
4431                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4433  0016 7b01          	ld	a,(OFST+1,sp)
4434  0018 c75260        	ld	21088,a
4435                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
4437  001b 7b02          	ld	a,(OFST+2,sp)
4438  001d c75261        	ld	21089,a
4439                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4441  0020 7b05          	ld	a,(OFST+5,sp)
4442  0022 c75257        	ld	21079,a
4443                     ; 1048 }
4446  0025 85            	popw	x
4447  0026 81            	ret	
4484                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4484                     ; 1062 {
4485                     .text:	section	.text,new
4486  0000               _TIM1_CounterModeConfig:
4488  0000 88            	push	a
4489       00000000      OFST:	set	0
4492                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4494  0001 4d            	tnz	a
4495  0002 271e          	jreq	L2411
4496  0004 a110          	cp	a,#16
4497  0006 271a          	jreq	L2411
4498  0008 a120          	cp	a,#32
4499  000a 2716          	jreq	L2411
4500  000c a140          	cp	a,#64
4501  000e 2712          	jreq	L2411
4502  0010 a160          	cp	a,#96
4503  0012 270e          	jreq	L2411
4504  0014 ae0428        	ldw	x,#1064
4505  0017 89            	pushw	x
4506  0018 5f            	clrw	x
4507  0019 89            	pushw	x
4508  001a ae0000        	ldw	x,#L37
4509  001d cd0000        	call	_assert_failed
4511  0020 5b04          	addw	sp,#4
4512  0022               L2411:
4513                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4513                     ; 1069                           | (uint8_t)TIM1_CounterMode);
4515  0022 c65250        	ld	a,21072
4516  0025 a48f          	and	a,#143
4517  0027 1a01          	or	a,(OFST+1,sp)
4518  0029 c75250        	ld	21072,a
4519                     ; 1070 }
4522  002c 84            	pop	a
4523  002d 81            	ret	
4582                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4582                     ; 1082 {
4583                     .text:	section	.text,new
4584  0000               _TIM1_ForcedOC1Config:
4586  0000 88            	push	a
4587       00000000      OFST:	set	0
4590                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4592  0001 a150          	cp	a,#80
4593  0003 2712          	jreq	L4511
4594  0005 a140          	cp	a,#64
4595  0007 270e          	jreq	L4511
4596  0009 ae043c        	ldw	x,#1084
4597  000c 89            	pushw	x
4598  000d 5f            	clrw	x
4599  000e 89            	pushw	x
4600  000f ae0000        	ldw	x,#L37
4601  0012 cd0000        	call	_assert_failed
4603  0015 5b04          	addw	sp,#4
4604  0017               L4511:
4605                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4605                     ; 1088                              (uint8_t)TIM1_ForcedAction);
4607  0017 c65258        	ld	a,21080
4608  001a a48f          	and	a,#143
4609  001c 1a01          	or	a,(OFST+1,sp)
4610  001e c75258        	ld	21080,a
4611                     ; 1089 }
4614  0021 84            	pop	a
4615  0022 81            	ret	
4652                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4652                     ; 1101 {
4653                     .text:	section	.text,new
4654  0000               _TIM1_ForcedOC2Config:
4656  0000 88            	push	a
4657       00000000      OFST:	set	0
4660                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4662  0001 a150          	cp	a,#80
4663  0003 2712          	jreq	L6611
4664  0005 a140          	cp	a,#64
4665  0007 270e          	jreq	L6611
4666  0009 ae044f        	ldw	x,#1103
4667  000c 89            	pushw	x
4668  000d 5f            	clrw	x
4669  000e 89            	pushw	x
4670  000f ae0000        	ldw	x,#L37
4671  0012 cd0000        	call	_assert_failed
4673  0015 5b04          	addw	sp,#4
4674  0017               L6611:
4675                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4675                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
4677  0017 c65259        	ld	a,21081
4678  001a a48f          	and	a,#143
4679  001c 1a01          	or	a,(OFST+1,sp)
4680  001e c75259        	ld	21081,a
4681                     ; 1108 }
4684  0021 84            	pop	a
4685  0022 81            	ret	
4722                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4722                     ; 1121 {
4723                     .text:	section	.text,new
4724  0000               _TIM1_ForcedOC3Config:
4726  0000 88            	push	a
4727       00000000      OFST:	set	0
4730                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4732  0001 a150          	cp	a,#80
4733  0003 2712          	jreq	L0021
4734  0005 a140          	cp	a,#64
4735  0007 270e          	jreq	L0021
4736  0009 ae0463        	ldw	x,#1123
4737  000c 89            	pushw	x
4738  000d 5f            	clrw	x
4739  000e 89            	pushw	x
4740  000f ae0000        	ldw	x,#L37
4741  0012 cd0000        	call	_assert_failed
4743  0015 5b04          	addw	sp,#4
4744  0017               L0021:
4745                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4745                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
4747  0017 c6525a        	ld	a,21082
4748  001a a48f          	and	a,#143
4749  001c 1a01          	or	a,(OFST+1,sp)
4750  001e c7525a        	ld	21082,a
4751                     ; 1128 }
4754  0021 84            	pop	a
4755  0022 81            	ret	
4792                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4792                     ; 1141 {
4793                     .text:	section	.text,new
4794  0000               _TIM1_ForcedOC4Config:
4796  0000 88            	push	a
4797       00000000      OFST:	set	0
4800                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4802  0001 a150          	cp	a,#80
4803  0003 2712          	jreq	L2121
4804  0005 a140          	cp	a,#64
4805  0007 270e          	jreq	L2121
4806  0009 ae0477        	ldw	x,#1143
4807  000c 89            	pushw	x
4808  000d 5f            	clrw	x
4809  000e 89            	pushw	x
4810  000f ae0000        	ldw	x,#L37
4811  0012 cd0000        	call	_assert_failed
4813  0015 5b04          	addw	sp,#4
4814  0017               L2121:
4815                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4815                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
4817  0017 c6525b        	ld	a,21083
4818  001a a48f          	and	a,#143
4819  001c 1a01          	or	a,(OFST+1,sp)
4820  001e c7525b        	ld	21083,a
4821                     ; 1148 }
4824  0021 84            	pop	a
4825  0022 81            	ret	
4862                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4862                     ; 1158 {
4863                     .text:	section	.text,new
4864  0000               _TIM1_ARRPreloadConfig:
4866  0000 88            	push	a
4867       00000000      OFST:	set	0
4870                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4872  0001 4d            	tnz	a
4873  0002 2711          	jreq	L4221
4874  0004 4a            	dec	a
4875  0005 270e          	jreq	L4221
4876  0007 ae0488        	ldw	x,#1160
4877  000a 89            	pushw	x
4878  000b 5f            	clrw	x
4879  000c 89            	pushw	x
4880  000d ae0000        	ldw	x,#L37
4881  0010 cd0000        	call	_assert_failed
4883  0013 5b04          	addw	sp,#4
4884  0015               L4221:
4885                     ; 1163     if (NewState != DISABLE)
4887  0015 7b01          	ld	a,(OFST+1,sp)
4888  0017 2706          	jreq	L5102
4889                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
4891  0019 721e5250      	bset	21072,#7
4893  001d 2004          	jra	L7102
4894  001f               L5102:
4895                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4897  001f 721f5250      	bres	21072,#7
4898  0023               L7102:
4899                     ; 1171 }
4902  0023 84            	pop	a
4903  0024 81            	ret	
4939                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
4939                     ; 1181 {
4940                     .text:	section	.text,new
4941  0000               _TIM1_SelectCOM:
4943  0000 88            	push	a
4944       00000000      OFST:	set	0
4947                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4949  0001 4d            	tnz	a
4950  0002 2711          	jreq	L6321
4951  0004 4a            	dec	a
4952  0005 270e          	jreq	L6321
4953  0007 ae049f        	ldw	x,#1183
4954  000a 89            	pushw	x
4955  000b 5f            	clrw	x
4956  000c 89            	pushw	x
4957  000d ae0000        	ldw	x,#L37
4958  0010 cd0000        	call	_assert_failed
4960  0013 5b04          	addw	sp,#4
4961  0015               L6321:
4962                     ; 1186     if (NewState != DISABLE)
4964  0015 7b01          	ld	a,(OFST+1,sp)
4965  0017 2706          	jreq	L7302
4966                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
4968  0019 72145251      	bset	21073,#2
4970  001d 2004          	jra	L1402
4971  001f               L7302:
4972                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4974  001f 72155251      	bres	21073,#2
4975  0023               L1402:
4976                     ; 1194 }
4979  0023 84            	pop	a
4980  0024 81            	ret	
5017                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
5017                     ; 1203 {
5018                     .text:	section	.text,new
5019  0000               _TIM1_CCPreloadControl:
5021  0000 88            	push	a
5022       00000000      OFST:	set	0
5025                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5027  0001 4d            	tnz	a
5028  0002 2711          	jreq	L0521
5029  0004 4a            	dec	a
5030  0005 270e          	jreq	L0521
5031  0007 ae04b5        	ldw	x,#1205
5032  000a 89            	pushw	x
5033  000b 5f            	clrw	x
5034  000c 89            	pushw	x
5035  000d ae0000        	ldw	x,#L37
5036  0010 cd0000        	call	_assert_failed
5038  0013 5b04          	addw	sp,#4
5039  0015               L0521:
5040                     ; 1208     if (NewState != DISABLE)
5042  0015 7b01          	ld	a,(OFST+1,sp)
5043  0017 2706          	jreq	L1602
5044                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
5046  0019 72105251      	bset	21073,#0
5048  001d 2004          	jra	L3602
5049  001f               L1602:
5050                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5052  001f 72115251      	bres	21073,#0
5053  0023               L3602:
5054                     ; 1216 }
5057  0023 84            	pop	a
5058  0024 81            	ret	
5095                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5095                     ; 1226 {
5096                     .text:	section	.text,new
5097  0000               _TIM1_OC1PreloadConfig:
5099  0000 88            	push	a
5100       00000000      OFST:	set	0
5103                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5105  0001 4d            	tnz	a
5106  0002 2711          	jreq	L2621
5107  0004 4a            	dec	a
5108  0005 270e          	jreq	L2621
5109  0007 ae04cc        	ldw	x,#1228
5110  000a 89            	pushw	x
5111  000b 5f            	clrw	x
5112  000c 89            	pushw	x
5113  000d ae0000        	ldw	x,#L37
5114  0010 cd0000        	call	_assert_failed
5116  0013 5b04          	addw	sp,#4
5117  0015               L2621:
5118                     ; 1231     if (NewState != DISABLE)
5120  0015 7b01          	ld	a,(OFST+1,sp)
5121  0017 2706          	jreq	L3012
5122                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5124  0019 72165258      	bset	21080,#3
5126  001d 2004          	jra	L5012
5127  001f               L3012:
5128                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5130  001f 72175258      	bres	21080,#3
5131  0023               L5012:
5132                     ; 1239 }
5135  0023 84            	pop	a
5136  0024 81            	ret	
5173                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5173                     ; 1249 {
5174                     .text:	section	.text,new
5175  0000               _TIM1_OC2PreloadConfig:
5177  0000 88            	push	a
5178       00000000      OFST:	set	0
5181                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5183  0001 4d            	tnz	a
5184  0002 2711          	jreq	L4721
5185  0004 4a            	dec	a
5186  0005 270e          	jreq	L4721
5187  0007 ae04e3        	ldw	x,#1251
5188  000a 89            	pushw	x
5189  000b 5f            	clrw	x
5190  000c 89            	pushw	x
5191  000d ae0000        	ldw	x,#L37
5192  0010 cd0000        	call	_assert_failed
5194  0013 5b04          	addw	sp,#4
5195  0015               L4721:
5196                     ; 1254     if (NewState != DISABLE)
5198  0015 7b01          	ld	a,(OFST+1,sp)
5199  0017 2706          	jreq	L5212
5200                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5202  0019 72165259      	bset	21081,#3
5204  001d 2004          	jra	L7212
5205  001f               L5212:
5206                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5208  001f 72175259      	bres	21081,#3
5209  0023               L7212:
5210                     ; 1262 }
5213  0023 84            	pop	a
5214  0024 81            	ret	
5251                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5251                     ; 1272 {
5252                     .text:	section	.text,new
5253  0000               _TIM1_OC3PreloadConfig:
5255  0000 88            	push	a
5256       00000000      OFST:	set	0
5259                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5261  0001 4d            	tnz	a
5262  0002 2711          	jreq	L6031
5263  0004 4a            	dec	a
5264  0005 270e          	jreq	L6031
5265  0007 ae04fa        	ldw	x,#1274
5266  000a 89            	pushw	x
5267  000b 5f            	clrw	x
5268  000c 89            	pushw	x
5269  000d ae0000        	ldw	x,#L37
5270  0010 cd0000        	call	_assert_failed
5272  0013 5b04          	addw	sp,#4
5273  0015               L6031:
5274                     ; 1277     if (NewState != DISABLE)
5276  0015 7b01          	ld	a,(OFST+1,sp)
5277  0017 2706          	jreq	L7412
5278                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5280  0019 7216525a      	bset	21082,#3
5282  001d 2004          	jra	L1512
5283  001f               L7412:
5284                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5286  001f 7217525a      	bres	21082,#3
5287  0023               L1512:
5288                     ; 1285 }
5291  0023 84            	pop	a
5292  0024 81            	ret	
5329                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5329                     ; 1296 {
5330                     .text:	section	.text,new
5331  0000               _TIM1_OC4PreloadConfig:
5333  0000 88            	push	a
5334       00000000      OFST:	set	0
5337                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5339  0001 4d            	tnz	a
5340  0002 2711          	jreq	L0231
5341  0004 4a            	dec	a
5342  0005 270e          	jreq	L0231
5343  0007 ae0512        	ldw	x,#1298
5344  000a 89            	pushw	x
5345  000b 5f            	clrw	x
5346  000c 89            	pushw	x
5347  000d ae0000        	ldw	x,#L37
5348  0010 cd0000        	call	_assert_failed
5350  0013 5b04          	addw	sp,#4
5351  0015               L0231:
5352                     ; 1301     if (NewState != DISABLE)
5354  0015 7b01          	ld	a,(OFST+1,sp)
5355  0017 2706          	jreq	L1712
5356                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5358  0019 7216525b      	bset	21083,#3
5360  001d 2004          	jra	L3712
5361  001f               L1712:
5362                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5364  001f 7217525b      	bres	21083,#3
5365  0023               L3712:
5366                     ; 1309 }
5369  0023 84            	pop	a
5370  0024 81            	ret	
5406                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
5406                     ; 1318 {
5407                     .text:	section	.text,new
5408  0000               _TIM1_OC1FastConfig:
5410  0000 88            	push	a
5411       00000000      OFST:	set	0
5414                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5416  0001 4d            	tnz	a
5417  0002 2711          	jreq	L2331
5418  0004 4a            	dec	a
5419  0005 270e          	jreq	L2331
5420  0007 ae0528        	ldw	x,#1320
5421  000a 89            	pushw	x
5422  000b 5f            	clrw	x
5423  000c 89            	pushw	x
5424  000d ae0000        	ldw	x,#L37
5425  0010 cd0000        	call	_assert_failed
5427  0013 5b04          	addw	sp,#4
5428  0015               L2331:
5429                     ; 1323     if (NewState != DISABLE)
5431  0015 7b01          	ld	a,(OFST+1,sp)
5432  0017 2706          	jreq	L3122
5433                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5435  0019 72145258      	bset	21080,#2
5437  001d 2004          	jra	L5122
5438  001f               L3122:
5439                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5441  001f 72155258      	bres	21080,#2
5442  0023               L5122:
5443                     ; 1331 }
5446  0023 84            	pop	a
5447  0024 81            	ret	
5483                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
5483                     ; 1342 {
5484                     .text:	section	.text,new
5485  0000               _TIM1_OC2FastConfig:
5487  0000 88            	push	a
5488       00000000      OFST:	set	0
5491                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5493  0001 4d            	tnz	a
5494  0002 2711          	jreq	L4431
5495  0004 4a            	dec	a
5496  0005 270e          	jreq	L4431
5497  0007 ae0540        	ldw	x,#1344
5498  000a 89            	pushw	x
5499  000b 5f            	clrw	x
5500  000c 89            	pushw	x
5501  000d ae0000        	ldw	x,#L37
5502  0010 cd0000        	call	_assert_failed
5504  0013 5b04          	addw	sp,#4
5505  0015               L4431:
5506                     ; 1347     if (NewState != DISABLE)
5508  0015 7b01          	ld	a,(OFST+1,sp)
5509  0017 2706          	jreq	L5322
5510                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5512  0019 72145259      	bset	21081,#2
5514  001d 2004          	jra	L7322
5515  001f               L5322:
5516                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5518  001f 72155259      	bres	21081,#2
5519  0023               L7322:
5520                     ; 1355 }
5523  0023 84            	pop	a
5524  0024 81            	ret	
5560                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
5560                     ; 1365 {
5561                     .text:	section	.text,new
5562  0000               _TIM1_OC3FastConfig:
5564  0000 88            	push	a
5565       00000000      OFST:	set	0
5568                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5570  0001 4d            	tnz	a
5571  0002 2711          	jreq	L6531
5572  0004 4a            	dec	a
5573  0005 270e          	jreq	L6531
5574  0007 ae0557        	ldw	x,#1367
5575  000a 89            	pushw	x
5576  000b 5f            	clrw	x
5577  000c 89            	pushw	x
5578  000d ae0000        	ldw	x,#L37
5579  0010 cd0000        	call	_assert_failed
5581  0013 5b04          	addw	sp,#4
5582  0015               L6531:
5583                     ; 1370     if (NewState != DISABLE)
5585  0015 7b01          	ld	a,(OFST+1,sp)
5586  0017 2706          	jreq	L7522
5587                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5589  0019 7214525a      	bset	21082,#2
5591  001d 2004          	jra	L1622
5592  001f               L7522:
5593                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5595  001f 7215525a      	bres	21082,#2
5596  0023               L1622:
5597                     ; 1378 }
5600  0023 84            	pop	a
5601  0024 81            	ret	
5637                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
5637                     ; 1388 {
5638                     .text:	section	.text,new
5639  0000               _TIM1_OC4FastConfig:
5641  0000 88            	push	a
5642       00000000      OFST:	set	0
5645                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5647  0001 4d            	tnz	a
5648  0002 2711          	jreq	L0731
5649  0004 4a            	dec	a
5650  0005 270e          	jreq	L0731
5651  0007 ae056e        	ldw	x,#1390
5652  000a 89            	pushw	x
5653  000b 5f            	clrw	x
5654  000c 89            	pushw	x
5655  000d ae0000        	ldw	x,#L37
5656  0010 cd0000        	call	_assert_failed
5658  0013 5b04          	addw	sp,#4
5659  0015               L0731:
5660                     ; 1393     if (NewState != DISABLE)
5662  0015 7b01          	ld	a,(OFST+1,sp)
5663  0017 2706          	jreq	L1032
5664                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5666  0019 7214525b      	bset	21083,#2
5668  001d 2004          	jra	L3032
5669  001f               L1032:
5670                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5672  001f 7215525b      	bres	21083,#2
5673  0023               L3032:
5674                     ; 1401 }
5677  0023 84            	pop	a
5678  0024 81            	ret	
5784                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5784                     ; 1419 {
5785                     .text:	section	.text,new
5786  0000               _TIM1_GenerateEvent:
5788  0000 88            	push	a
5789       00000000      OFST:	set	0
5792                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5794  0001 4d            	tnz	a
5795  0002 260e          	jrne	L0041
5796  0004 ae058d        	ldw	x,#1421
5797  0007 89            	pushw	x
5798  0008 5f            	clrw	x
5799  0009 89            	pushw	x
5800  000a ae0000        	ldw	x,#L37
5801  000d cd0000        	call	_assert_failed
5803  0010 5b04          	addw	sp,#4
5804  0012               L0041:
5805                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
5807  0012 7b01          	ld	a,(OFST+1,sp)
5808  0014 c75257        	ld	21079,a
5809                     ; 1425 }
5812  0017 84            	pop	a
5813  0018 81            	ret	
5850                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5850                     ; 1437 {
5851                     .text:	section	.text,new
5852  0000               _TIM1_OC1PolarityConfig:
5854  0000 88            	push	a
5855       00000000      OFST:	set	0
5858                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5860  0001 4d            	tnz	a
5861  0002 2712          	jreq	L2141
5862  0004 a122          	cp	a,#34
5863  0006 270e          	jreq	L2141
5864  0008 ae059f        	ldw	x,#1439
5865  000b 89            	pushw	x
5866  000c 5f            	clrw	x
5867  000d 89            	pushw	x
5868  000e ae0000        	ldw	x,#L37
5869  0011 cd0000        	call	_assert_failed
5871  0014 5b04          	addw	sp,#4
5872  0016               L2141:
5873                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5875  0016 7b01          	ld	a,(OFST+1,sp)
5876  0018 2706          	jreq	L5632
5877                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
5879  001a 7212525c      	bset	21084,#1
5881  001e 2004          	jra	L7632
5882  0020               L5632:
5883                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5885  0020 7213525c      	bres	21084,#1
5886  0024               L7632:
5887                     ; 1450 }
5890  0024 84            	pop	a
5891  0025 81            	ret	
5928                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5928                     ; 1462 {
5929                     .text:	section	.text,new
5930  0000               _TIM1_OC1NPolarityConfig:
5932  0000 88            	push	a
5933       00000000      OFST:	set	0
5936                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5938  0001 4d            	tnz	a
5939  0002 2712          	jreq	L4241
5940  0004 a188          	cp	a,#136
5941  0006 270e          	jreq	L4241
5942  0008 ae05b8        	ldw	x,#1464
5943  000b 89            	pushw	x
5944  000c 5f            	clrw	x
5945  000d 89            	pushw	x
5946  000e ae0000        	ldw	x,#L37
5947  0011 cd0000        	call	_assert_failed
5949  0014 5b04          	addw	sp,#4
5950  0016               L4241:
5951                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5953  0016 7b01          	ld	a,(OFST+1,sp)
5954  0018 2706          	jreq	L7042
5955                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5957  001a 7216525c      	bset	21084,#3
5959  001e 2004          	jra	L1142
5960  0020               L7042:
5961                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5963  0020 7217525c      	bres	21084,#3
5964  0024               L1142:
5965                     ; 1475 }
5968  0024 84            	pop	a
5969  0025 81            	ret	
6006                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6006                     ; 1487 {
6007                     .text:	section	.text,new
6008  0000               _TIM1_OC2PolarityConfig:
6010  0000 88            	push	a
6011       00000000      OFST:	set	0
6014                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6016  0001 4d            	tnz	a
6017  0002 2712          	jreq	L6341
6018  0004 a122          	cp	a,#34
6019  0006 270e          	jreq	L6341
6020  0008 ae05d1        	ldw	x,#1489
6021  000b 89            	pushw	x
6022  000c 5f            	clrw	x
6023  000d 89            	pushw	x
6024  000e ae0000        	ldw	x,#L37
6025  0011 cd0000        	call	_assert_failed
6027  0014 5b04          	addw	sp,#4
6028  0016               L6341:
6029                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6031  0016 7b01          	ld	a,(OFST+1,sp)
6032  0018 2706          	jreq	L1342
6033                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
6035  001a 721a525c      	bset	21084,#5
6037  001e 2004          	jra	L3342
6038  0020               L1342:
6039                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6041  0020 721b525c      	bres	21084,#5
6042  0024               L3342:
6043                     ; 1500 }
6046  0024 84            	pop	a
6047  0025 81            	ret	
6084                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6084                     ; 1511 {
6085                     .text:	section	.text,new
6086  0000               _TIM1_OC2NPolarityConfig:
6088  0000 88            	push	a
6089       00000000      OFST:	set	0
6092                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6094  0001 4d            	tnz	a
6095  0002 2712          	jreq	L0541
6096  0004 a188          	cp	a,#136
6097  0006 270e          	jreq	L0541
6098  0008 ae05e9        	ldw	x,#1513
6099  000b 89            	pushw	x
6100  000c 5f            	clrw	x
6101  000d 89            	pushw	x
6102  000e ae0000        	ldw	x,#L37
6103  0011 cd0000        	call	_assert_failed
6105  0014 5b04          	addw	sp,#4
6106  0016               L0541:
6107                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6109  0016 7b01          	ld	a,(OFST+1,sp)
6110  0018 2706          	jreq	L3542
6111                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6113  001a 721e525c      	bset	21084,#7
6115  001e 2004          	jra	L5542
6116  0020               L3542:
6117                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6119  0020 721f525c      	bres	21084,#7
6120  0024               L5542:
6121                     ; 1524 }
6124  0024 84            	pop	a
6125  0025 81            	ret	
6162                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6162                     ; 1536 {
6163                     .text:	section	.text,new
6164  0000               _TIM1_OC3PolarityConfig:
6166  0000 88            	push	a
6167       00000000      OFST:	set	0
6170                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6172  0001 4d            	tnz	a
6173  0002 2712          	jreq	L2641
6174  0004 a122          	cp	a,#34
6175  0006 270e          	jreq	L2641
6176  0008 ae0602        	ldw	x,#1538
6177  000b 89            	pushw	x
6178  000c 5f            	clrw	x
6179  000d 89            	pushw	x
6180  000e ae0000        	ldw	x,#L37
6181  0011 cd0000        	call	_assert_failed
6183  0014 5b04          	addw	sp,#4
6184  0016               L2641:
6185                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6187  0016 7b01          	ld	a,(OFST+1,sp)
6188  0018 2706          	jreq	L5742
6189                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
6191  001a 7212525d      	bset	21085,#1
6193  001e 2004          	jra	L7742
6194  0020               L5742:
6195                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6197  0020 7213525d      	bres	21085,#1
6198  0024               L7742:
6199                     ; 1549 }
6202  0024 84            	pop	a
6203  0025 81            	ret	
6240                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6240                     ; 1561 {
6241                     .text:	section	.text,new
6242  0000               _TIM1_OC3NPolarityConfig:
6244  0000 88            	push	a
6245       00000000      OFST:	set	0
6248                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6250  0001 4d            	tnz	a
6251  0002 2712          	jreq	L4741
6252  0004 a188          	cp	a,#136
6253  0006 270e          	jreq	L4741
6254  0008 ae061b        	ldw	x,#1563
6255  000b 89            	pushw	x
6256  000c 5f            	clrw	x
6257  000d 89            	pushw	x
6258  000e ae0000        	ldw	x,#L37
6259  0011 cd0000        	call	_assert_failed
6261  0014 5b04          	addw	sp,#4
6262  0016               L4741:
6263                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6265  0016 7b01          	ld	a,(OFST+1,sp)
6266  0018 2706          	jreq	L7152
6267                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6269  001a 7216525d      	bset	21085,#3
6271  001e 2004          	jra	L1252
6272  0020               L7152:
6273                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6275  0020 7217525d      	bres	21085,#3
6276  0024               L1252:
6277                     ; 1574 }
6280  0024 84            	pop	a
6281  0025 81            	ret	
6318                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6318                     ; 1585 {
6319                     .text:	section	.text,new
6320  0000               _TIM1_OC4PolarityConfig:
6322  0000 88            	push	a
6323       00000000      OFST:	set	0
6326                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6328  0001 4d            	tnz	a
6329  0002 2712          	jreq	L6051
6330  0004 a122          	cp	a,#34
6331  0006 270e          	jreq	L6051
6332  0008 ae0633        	ldw	x,#1587
6333  000b 89            	pushw	x
6334  000c 5f            	clrw	x
6335  000d 89            	pushw	x
6336  000e ae0000        	ldw	x,#L37
6337  0011 cd0000        	call	_assert_failed
6339  0014 5b04          	addw	sp,#4
6340  0016               L6051:
6341                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6343  0016 7b01          	ld	a,(OFST+1,sp)
6344  0018 2706          	jreq	L1452
6345                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
6347  001a 721a525d      	bset	21085,#5
6349  001e 2004          	jra	L3452
6350  0020               L1452:
6351                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6353  0020 721b525d      	bres	21085,#5
6354  0024               L3452:
6355                     ; 1598 }
6358  0024 84            	pop	a
6359  0025 81            	ret	
6405                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6405                     ; 1614 {
6406                     .text:	section	.text,new
6407  0000               _TIM1_CCxCmd:
6409  0000 89            	pushw	x
6410       00000000      OFST:	set	0
6413                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6415  0001 9e            	ld	a,xh
6416  0002 4d            	tnz	a
6417  0003 2713          	jreq	L0251
6418  0005 9e            	ld	a,xh
6419  0006 4a            	dec	a
6420  0007 270f          	jreq	L0251
6421  0009 9e            	ld	a,xh
6422  000a a102          	cp	a,#2
6423  000c 270a          	jreq	L0251
6424  000e 9e            	ld	a,xh
6425  000f a103          	cp	a,#3
6426  0011 2705          	jreq	L0251
6427  0013 ae0650        	ldw	x,#1616
6428  0016 ad58          	call	LC013
6429  0018               L0251:
6430                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6432  0018 7b02          	ld	a,(OFST+2,sp)
6433  001a 2708          	jreq	L0351
6434  001c 4a            	dec	a
6435  001d 2705          	jreq	L0351
6436  001f ae0651        	ldw	x,#1617
6437  0022 ad4c          	call	LC013
6438  0024               L0351:
6439                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
6441  0024 7b01          	ld	a,(OFST+1,sp)
6442  0026 2610          	jrne	L7652
6443                     ; 1622         if (NewState != DISABLE)
6445  0028 7b02          	ld	a,(OFST+2,sp)
6446  002a 2706          	jreq	L1752
6447                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
6449  002c 7210525c      	bset	21084,#0
6451  0030 203c          	jra	L5752
6452  0032               L1752:
6453                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6455  0032 7211525c      	bres	21084,#0
6456  0036 2036          	jra	L5752
6457  0038               L7652:
6458                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
6460  0038 a101          	cp	a,#1
6461  003a 2610          	jrne	L7752
6462                     ; 1635         if (NewState != DISABLE)
6464  003c 7b02          	ld	a,(OFST+2,sp)
6465  003e 2706          	jreq	L1062
6466                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
6468  0040 7218525c      	bset	21084,#4
6470  0044 2028          	jra	L5752
6471  0046               L1062:
6472                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6474  0046 7219525c      	bres	21084,#4
6475  004a 2022          	jra	L5752
6476  004c               L7752:
6477                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
6479  004c a102          	cp	a,#2
6480  004e 2610          	jrne	L7062
6481                     ; 1647         if (NewState != DISABLE)
6483  0050 7b02          	ld	a,(OFST+2,sp)
6484  0052 2706          	jreq	L1162
6485                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
6487  0054 7210525d      	bset	21085,#0
6489  0058 2014          	jra	L5752
6490  005a               L1162:
6491                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6493  005a 7211525d      	bres	21085,#0
6494  005e 200e          	jra	L5752
6495  0060               L7062:
6496                     ; 1659         if (NewState != DISABLE)
6498  0060 7b02          	ld	a,(OFST+2,sp)
6499  0062 2706          	jreq	L7162
6500                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
6502  0064 7218525d      	bset	21085,#4
6504  0068 2004          	jra	L5752
6505  006a               L7162:
6506                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6508  006a 7219525d      	bres	21085,#4
6509  006e               L5752:
6510                     ; 1668 }
6513  006e 85            	popw	x
6514  006f 81            	ret	
6515  0070               LC013:
6516  0070 89            	pushw	x
6517  0071 5f            	clrw	x
6518  0072 89            	pushw	x
6519  0073 ae0000        	ldw	x,#L37
6520  0076 cd0000        	call	_assert_failed
6522  0079 5b04          	addw	sp,#4
6523  007b 81            	ret	
6569                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6569                     ; 1682 {
6570                     .text:	section	.text,new
6571  0000               _TIM1_CCxNCmd:
6573  0000 89            	pushw	x
6574       00000000      OFST:	set	0
6577                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6579  0001 9e            	ld	a,xh
6580  0002 4d            	tnz	a
6581  0003 270e          	jreq	L2451
6582  0005 9e            	ld	a,xh
6583  0006 4a            	dec	a
6584  0007 270a          	jreq	L2451
6585  0009 9e            	ld	a,xh
6586  000a a102          	cp	a,#2
6587  000c 2705          	jreq	L2451
6588  000e ae0694        	ldw	x,#1684
6589  0011 ad43          	call	LC014
6590  0013               L2451:
6591                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6593  0013 7b02          	ld	a,(OFST+2,sp)
6594  0015 2708          	jreq	L2551
6595  0017 4a            	dec	a
6596  0018 2705          	jreq	L2551
6597  001a ae0695        	ldw	x,#1685
6598  001d ad37          	call	LC014
6599  001f               L2551:
6600                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
6602  001f 7b01          	ld	a,(OFST+1,sp)
6603  0021 2610          	jrne	L5462
6604                     ; 1690         if (NewState != DISABLE)
6606  0023 7b02          	ld	a,(OFST+2,sp)
6607  0025 2706          	jreq	L7462
6608                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6610  0027 7214525c      	bset	21084,#2
6612  002b 2027          	jra	L3562
6613  002d               L7462:
6614                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6616  002d 7215525c      	bres	21084,#2
6617  0031 2021          	jra	L3562
6618  0033               L5462:
6619                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
6621  0033 4a            	dec	a
6622  0034 2610          	jrne	L5562
6623                     ; 1702         if (NewState != DISABLE)
6625  0036 7b02          	ld	a,(OFST+2,sp)
6626  0038 2706          	jreq	L7562
6627                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6629  003a 721c525c      	bset	21084,#6
6631  003e 2014          	jra	L3562
6632  0040               L7562:
6633                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6635  0040 721d525c      	bres	21084,#6
6636  0044 200e          	jra	L3562
6637  0046               L5562:
6638                     ; 1714         if (NewState != DISABLE)
6640  0046 7b02          	ld	a,(OFST+2,sp)
6641  0048 2706          	jreq	L5662
6642                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6644  004a 7214525d      	bset	21085,#2
6646  004e 2004          	jra	L3562
6647  0050               L5662:
6648                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6650  0050 7215525d      	bres	21085,#2
6651  0054               L3562:
6652                     ; 1723 }
6655  0054 85            	popw	x
6656  0055 81            	ret	
6657  0056               LC014:
6658  0056 89            	pushw	x
6659  0057 5f            	clrw	x
6660  0058 89            	pushw	x
6661  0059 ae0000        	ldw	x,#L37
6662  005c cd0000        	call	_assert_failed
6664  005f 5b04          	addw	sp,#4
6665  0061 81            	ret	
6711                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6711                     ; 1748 {
6712                     .text:	section	.text,new
6713  0000               _TIM1_SelectOCxM:
6715  0000 89            	pushw	x
6716       00000000      OFST:	set	0
6719                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6721  0001 9e            	ld	a,xh
6722  0002 4d            	tnz	a
6723  0003 2713          	jreq	L4651
6724  0005 9e            	ld	a,xh
6725  0006 4a            	dec	a
6726  0007 270f          	jreq	L4651
6727  0009 9e            	ld	a,xh
6728  000a a102          	cp	a,#2
6729  000c 270a          	jreq	L4651
6730  000e 9e            	ld	a,xh
6731  000f a103          	cp	a,#3
6732  0011 2705          	jreq	L4651
6733  0013 ae06d6        	ldw	x,#1750
6734  0016 ad71          	call	LC015
6735  0018               L4651:
6736                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6738  0018 7b02          	ld	a,(OFST+2,sp)
6739  001a 2721          	jreq	L4751
6740  001c a110          	cp	a,#16
6741  001e 271d          	jreq	L4751
6742  0020 a120          	cp	a,#32
6743  0022 2719          	jreq	L4751
6744  0024 a130          	cp	a,#48
6745  0026 2715          	jreq	L4751
6746  0028 a160          	cp	a,#96
6747  002a 2711          	jreq	L4751
6748  002c a170          	cp	a,#112
6749  002e 270d          	jreq	L4751
6750  0030 a150          	cp	a,#80
6751  0032 2709          	jreq	L4751
6752  0034 a140          	cp	a,#64
6753  0036 2705          	jreq	L4751
6754  0038 ae06d7        	ldw	x,#1751
6755  003b ad4c          	call	LC015
6756  003d               L4751:
6757                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
6759  003d 7b01          	ld	a,(OFST+1,sp)
6760  003f 2610          	jrne	L3172
6761                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6763  0041 7211525c      	bres	21084,#0
6764                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6764                     ; 1760                                 | (uint8_t)TIM1_OCMode);
6766  0045 c65258        	ld	a,21080
6767  0048 a48f          	and	a,#143
6768  004a 1a02          	or	a,(OFST+2,sp)
6769  004c c75258        	ld	21080,a
6771  004f 2036          	jra	L5172
6772  0051               L3172:
6773                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
6775  0051 a101          	cp	a,#1
6776  0053 2610          	jrne	L7172
6777                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6779  0055 7219525c      	bres	21084,#4
6780                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6780                     ; 1769                                 | (uint8_t)TIM1_OCMode);
6782  0059 c65259        	ld	a,21081
6783  005c a48f          	and	a,#143
6784  005e 1a02          	or	a,(OFST+2,sp)
6785  0060 c75259        	ld	21081,a
6787  0063 2022          	jra	L5172
6788  0065               L7172:
6789                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
6791  0065 a102          	cp	a,#2
6792  0067 2610          	jrne	L3272
6793                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6795  0069 7211525d      	bres	21085,#0
6796                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6796                     ; 1778                                 | (uint8_t)TIM1_OCMode);
6798  006d c6525a        	ld	a,21082
6799  0070 a48f          	and	a,#143
6800  0072 1a02          	or	a,(OFST+2,sp)
6801  0074 c7525a        	ld	21082,a
6803  0077 200e          	jra	L5172
6804  0079               L3272:
6805                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6807  0079 7219525d      	bres	21085,#4
6808                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6808                     ; 1787                                 | (uint8_t)TIM1_OCMode);
6810  007d c6525b        	ld	a,21083
6811  0080 a48f          	and	a,#143
6812  0082 1a02          	or	a,(OFST+2,sp)
6813  0084 c7525b        	ld	21083,a
6814  0087               L5172:
6815                     ; 1789 }
6818  0087 85            	popw	x
6819  0088 81            	ret	
6820  0089               LC015:
6821  0089 89            	pushw	x
6822  008a 5f            	clrw	x
6823  008b 89            	pushw	x
6824  008c ae0000        	ldw	x,#L37
6825  008f cd0000        	call	_assert_failed
6827  0092 5b04          	addw	sp,#4
6828  0094 81            	ret	
6860                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
6860                     ; 1799 {
6861                     .text:	section	.text,new
6862  0000               _TIM1_SetCounter:
6866                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
6868  0000 9e            	ld	a,xh
6869  0001 c7525e        	ld	21086,a
6870                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
6872  0004 9f            	ld	a,xl
6873  0005 c7525f        	ld	21087,a
6874                     ; 1804 }
6877  0008 81            	ret	
6909                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
6909                     ; 1814 {
6910                     .text:	section	.text,new
6911  0000               _TIM1_SetAutoreload:
6915                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6917  0000 9e            	ld	a,xh
6918  0001 c75262        	ld	21090,a
6919                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
6921  0004 9f            	ld	a,xl
6922  0005 c75263        	ld	21091,a
6923                     ; 1820 }
6926  0008 81            	ret	
6958                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
6958                     ; 1830 {
6959                     .text:	section	.text,new
6960  0000               _TIM1_SetCompare1:
6964                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6966  0000 9e            	ld	a,xh
6967  0001 c75265        	ld	21093,a
6968                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
6970  0004 9f            	ld	a,xl
6971  0005 c75266        	ld	21094,a
6972                     ; 1835 }
6975  0008 81            	ret	
7007                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
7007                     ; 1845 {
7008                     .text:	section	.text,new
7009  0000               _TIM1_SetCompare2:
7013                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7015  0000 9e            	ld	a,xh
7016  0001 c75267        	ld	21095,a
7017                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
7019  0004 9f            	ld	a,xl
7020  0005 c75268        	ld	21096,a
7021                     ; 1850 }
7024  0008 81            	ret	
7056                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
7056                     ; 1860 {
7057                     .text:	section	.text,new
7058  0000               _TIM1_SetCompare3:
7062                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7064  0000 9e            	ld	a,xh
7065  0001 c75269        	ld	21097,a
7066                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
7068  0004 9f            	ld	a,xl
7069  0005 c7526a        	ld	21098,a
7070                     ; 1865 }
7073  0008 81            	ret	
7105                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
7105                     ; 1875 {
7106                     .text:	section	.text,new
7107  0000               _TIM1_SetCompare4:
7111                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7113  0000 9e            	ld	a,xh
7114  0001 c7526b        	ld	21099,a
7115                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
7117  0004 9f            	ld	a,xl
7118  0005 c7526c        	ld	21100,a
7119                     ; 1879 }
7122  0008 81            	ret	
7159                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7159                     ; 1893 {
7160                     .text:	section	.text,new
7161  0000               _TIM1_SetIC1Prescaler:
7163  0000 88            	push	a
7164       00000000      OFST:	set	0
7167                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7169  0001 4d            	tnz	a
7170  0002 271a          	jreq	L2261
7171  0004 a104          	cp	a,#4
7172  0006 2716          	jreq	L2261
7173  0008 a108          	cp	a,#8
7174  000a 2712          	jreq	L2261
7175  000c a10c          	cp	a,#12
7176  000e 270e          	jreq	L2261
7177  0010 ae0767        	ldw	x,#1895
7178  0013 89            	pushw	x
7179  0014 5f            	clrw	x
7180  0015 89            	pushw	x
7181  0016 ae0000        	ldw	x,#L37
7182  0019 cd0000        	call	_assert_failed
7184  001c 5b04          	addw	sp,#4
7185  001e               L2261:
7186                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7186                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
7188  001e c65258        	ld	a,21080
7189  0021 a4f3          	and	a,#243
7190  0023 1a01          	or	a,(OFST+1,sp)
7191  0025 c75258        	ld	21080,a
7192                     ; 1901 }
7195  0028 84            	pop	a
7196  0029 81            	ret	
7233                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7233                     ; 1914 {
7234                     .text:	section	.text,new
7235  0000               _TIM1_SetIC2Prescaler:
7237  0000 88            	push	a
7238       00000000      OFST:	set	0
7241                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7243  0001 4d            	tnz	a
7244  0002 271a          	jreq	L4361
7245  0004 a104          	cp	a,#4
7246  0006 2716          	jreq	L4361
7247  0008 a108          	cp	a,#8
7248  000a 2712          	jreq	L4361
7249  000c a10c          	cp	a,#12
7250  000e 270e          	jreq	L4361
7251  0010 ae077d        	ldw	x,#1917
7252  0013 89            	pushw	x
7253  0014 5f            	clrw	x
7254  0015 89            	pushw	x
7255  0016 ae0000        	ldw	x,#L37
7256  0019 cd0000        	call	_assert_failed
7258  001c 5b04          	addw	sp,#4
7259  001e               L4361:
7260                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7260                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
7262  001e c65259        	ld	a,21081
7263  0021 a4f3          	and	a,#243
7264  0023 1a01          	or	a,(OFST+1,sp)
7265  0025 c75259        	ld	21081,a
7266                     ; 1922 }
7269  0028 84            	pop	a
7270  0029 81            	ret	
7307                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7307                     ; 1936 {
7308                     .text:	section	.text,new
7309  0000               _TIM1_SetIC3Prescaler:
7311  0000 88            	push	a
7312       00000000      OFST:	set	0
7315                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7317  0001 4d            	tnz	a
7318  0002 271a          	jreq	L6461
7319  0004 a104          	cp	a,#4
7320  0006 2716          	jreq	L6461
7321  0008 a108          	cp	a,#8
7322  000a 2712          	jreq	L6461
7323  000c a10c          	cp	a,#12
7324  000e 270e          	jreq	L6461
7325  0010 ae0793        	ldw	x,#1939
7326  0013 89            	pushw	x
7327  0014 5f            	clrw	x
7328  0015 89            	pushw	x
7329  0016 ae0000        	ldw	x,#L37
7330  0019 cd0000        	call	_assert_failed
7332  001c 5b04          	addw	sp,#4
7333  001e               L6461:
7334                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7334                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
7336  001e c6525a        	ld	a,21082
7337  0021 a4f3          	and	a,#243
7338  0023 1a01          	or	a,(OFST+1,sp)
7339  0025 c7525a        	ld	21082,a
7340                     ; 1944 }
7343  0028 84            	pop	a
7344  0029 81            	ret	
7381                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7381                     ; 1957 {
7382                     .text:	section	.text,new
7383  0000               _TIM1_SetIC4Prescaler:
7385  0000 88            	push	a
7386       00000000      OFST:	set	0
7389                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7391  0001 4d            	tnz	a
7392  0002 271a          	jreq	L0661
7393  0004 a104          	cp	a,#4
7394  0006 2716          	jreq	L0661
7395  0008 a108          	cp	a,#8
7396  000a 2712          	jreq	L0661
7397  000c a10c          	cp	a,#12
7398  000e 270e          	jreq	L0661
7399  0010 ae07a8        	ldw	x,#1960
7400  0013 89            	pushw	x
7401  0014 5f            	clrw	x
7402  0015 89            	pushw	x
7403  0016 ae0000        	ldw	x,#L37
7404  0019 cd0000        	call	_assert_failed
7406  001c 5b04          	addw	sp,#4
7407  001e               L0661:
7408                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7408                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
7410  001e c6525b        	ld	a,21083
7411  0021 a4f3          	and	a,#243
7412  0023 1a01          	or	a,(OFST+1,sp)
7413  0025 c7525b        	ld	21083,a
7414                     ; 1965 }
7417  0028 84            	pop	a
7418  0029 81            	ret	
7464                     ; 1972 uint16_t TIM1_GetCapture1(void)
7464                     ; 1973 {
7465                     .text:	section	.text,new
7466  0000               _TIM1_GetCapture1:
7468  0000 5204          	subw	sp,#4
7469       00000004      OFST:	set	4
7472                     ; 1976     uint16_t tmpccr1 = 0;
7474                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
7478                     ; 1979     tmpccr1h = TIM1->CCR1H;
7480  0002 c65265        	ld	a,21093
7481  0005 6b02          	ld	(OFST-2,sp),a
7482                     ; 1980     tmpccr1l = TIM1->CCR1L;
7484  0007 c65266        	ld	a,21094
7485  000a 6b01          	ld	(OFST-3,sp),a
7486                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
7488  000c 5f            	clrw	x
7489  000d 97            	ld	xl,a
7490  000e 1f03          	ldw	(OFST-1,sp),x
7491                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7493  0010 5f            	clrw	x
7494  0011 7b02          	ld	a,(OFST-2,sp)
7495  0013 97            	ld	xl,a
7496  0014 7b04          	ld	a,(OFST+0,sp)
7497  0016 01            	rrwa	x,a
7498  0017 1a03          	or	a,(OFST-1,sp)
7499  0019 01            	rrwa	x,a
7500                     ; 1985     return (uint16_t)tmpccr1;
7504  001a 5b04          	addw	sp,#4
7505  001c 81            	ret	
7551                     ; 1993 uint16_t TIM1_GetCapture2(void)
7551                     ; 1994 {
7552                     .text:	section	.text,new
7553  0000               _TIM1_GetCapture2:
7555  0000 5204          	subw	sp,#4
7556       00000004      OFST:	set	4
7559                     ; 1997     uint16_t tmpccr2 = 0;
7561                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
7565                     ; 2000     tmpccr2h = TIM1->CCR2H;
7567  0002 c65267        	ld	a,21095
7568  0005 6b02          	ld	(OFST-2,sp),a
7569                     ; 2001     tmpccr2l = TIM1->CCR2L;
7571  0007 c65268        	ld	a,21096
7572  000a 6b01          	ld	(OFST-3,sp),a
7573                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
7575  000c 5f            	clrw	x
7576  000d 97            	ld	xl,a
7577  000e 1f03          	ldw	(OFST-1,sp),x
7578                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7580  0010 5f            	clrw	x
7581  0011 7b02          	ld	a,(OFST-2,sp)
7582  0013 97            	ld	xl,a
7583  0014 7b04          	ld	a,(OFST+0,sp)
7584  0016 01            	rrwa	x,a
7585  0017 1a03          	or	a,(OFST-1,sp)
7586  0019 01            	rrwa	x,a
7587                     ; 2006     return (uint16_t)tmpccr2;
7591  001a 5b04          	addw	sp,#4
7592  001c 81            	ret	
7638                     ; 2014 uint16_t TIM1_GetCapture3(void)
7638                     ; 2015 {
7639                     .text:	section	.text,new
7640  0000               _TIM1_GetCapture3:
7642  0000 5204          	subw	sp,#4
7643       00000004      OFST:	set	4
7646                     ; 2017     uint16_t tmpccr3 = 0;
7648                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
7652                     ; 2020     tmpccr3h = TIM1->CCR3H;
7654  0002 c65269        	ld	a,21097
7655  0005 6b02          	ld	(OFST-2,sp),a
7656                     ; 2021     tmpccr3l = TIM1->CCR3L;
7658  0007 c6526a        	ld	a,21098
7659  000a 6b01          	ld	(OFST-3,sp),a
7660                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
7662  000c 5f            	clrw	x
7663  000d 97            	ld	xl,a
7664  000e 1f03          	ldw	(OFST-1,sp),x
7665                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7667  0010 5f            	clrw	x
7668  0011 7b02          	ld	a,(OFST-2,sp)
7669  0013 97            	ld	xl,a
7670  0014 7b04          	ld	a,(OFST+0,sp)
7671  0016 01            	rrwa	x,a
7672  0017 1a03          	or	a,(OFST-1,sp)
7673  0019 01            	rrwa	x,a
7674                     ; 2026     return (uint16_t)tmpccr3;
7678  001a 5b04          	addw	sp,#4
7679  001c 81            	ret	
7725                     ; 2034 uint16_t TIM1_GetCapture4(void)
7725                     ; 2035 {
7726                     .text:	section	.text,new
7727  0000               _TIM1_GetCapture4:
7729  0000 5204          	subw	sp,#4
7730       00000004      OFST:	set	4
7733                     ; 2037     uint16_t tmpccr4 = 0;
7735                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
7739                     ; 2040     tmpccr4h = TIM1->CCR4H;
7741  0002 c6526b        	ld	a,21099
7742  0005 6b02          	ld	(OFST-2,sp),a
7743                     ; 2041     tmpccr4l = TIM1->CCR4L;
7745  0007 c6526c        	ld	a,21100
7746  000a 6b01          	ld	(OFST-3,sp),a
7747                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
7749  000c 5f            	clrw	x
7750  000d 97            	ld	xl,a
7751  000e 1f03          	ldw	(OFST-1,sp),x
7752                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7754  0010 5f            	clrw	x
7755  0011 7b02          	ld	a,(OFST-2,sp)
7756  0013 97            	ld	xl,a
7757  0014 7b04          	ld	a,(OFST+0,sp)
7758  0016 01            	rrwa	x,a
7759  0017 1a03          	or	a,(OFST-1,sp)
7760  0019 01            	rrwa	x,a
7761                     ; 2046     return (uint16_t)tmpccr4;
7765  001a 5b04          	addw	sp,#4
7766  001c 81            	ret	
7798                     ; 2054 uint16_t TIM1_GetCounter(void)
7798                     ; 2055 {
7799                     .text:	section	.text,new
7800  0000               _TIM1_GetCounter:
7802  0000 89            	pushw	x
7803       00000002      OFST:	set	2
7806                     ; 2056   uint16_t tmpcntr = 0;
7808                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7810  0001 c6525e        	ld	a,21086
7811  0004 97            	ld	xl,a
7812  0005 4f            	clr	a
7813  0006 02            	rlwa	x,a
7814  0007 1f01          	ldw	(OFST-1,sp),x
7815                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7817  0009 5f            	clrw	x
7818  000a c6525f        	ld	a,21087
7819  000d 97            	ld	xl,a
7820  000e 01            	rrwa	x,a
7821  000f 1a02          	or	a,(OFST+0,sp)
7822  0011 01            	rrwa	x,a
7823  0012 1a01          	or	a,(OFST-1,sp)
7824  0014 01            	rrwa	x,a
7827  0015 5b02          	addw	sp,#2
7828  0017 81            	ret	
7860                     ; 2069 uint16_t TIM1_GetPrescaler(void)
7860                     ; 2070 {
7861                     .text:	section	.text,new
7862  0000               _TIM1_GetPrescaler:
7864  0000 89            	pushw	x
7865       00000002      OFST:	set	2
7868                     ; 2071    uint16_t temp = 0;
7870                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
7872  0001 c65260        	ld	a,21088
7873  0004 97            	ld	xl,a
7874  0005 4f            	clr	a
7875  0006 02            	rlwa	x,a
7876  0007 1f01          	ldw	(OFST-1,sp),x
7877                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7879  0009 5f            	clrw	x
7880  000a c65261        	ld	a,21089
7881  000d 97            	ld	xl,a
7882  000e 01            	rrwa	x,a
7883  000f 1a02          	or	a,(OFST+0,sp)
7884  0011 01            	rrwa	x,a
7885  0012 1a01          	or	a,(OFST-1,sp)
7886  0014 01            	rrwa	x,a
7889  0015 5b02          	addw	sp,#2
7890  0017 81            	ret	
8061                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8061                     ; 2098 {
8062                     .text:	section	.text,new
8063  0000               _TIM1_GetFlagStatus:
8065  0000 89            	pushw	x
8066  0001 89            	pushw	x
8067       00000002      OFST:	set	2
8070                     ; 2099     FlagStatus bitstatus = RESET;
8072                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8076                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8078  0002 a30001        	cpw	x,#1
8079  0005 2745          	jreq	L6071
8080  0007 a30002        	cpw	x,#2
8081  000a 2740          	jreq	L6071
8082  000c a30004        	cpw	x,#4
8083  000f 273b          	jreq	L6071
8084  0011 a30008        	cpw	x,#8
8085  0014 2736          	jreq	L6071
8086  0016 a30010        	cpw	x,#16
8087  0019 2731          	jreq	L6071
8088  001b a30020        	cpw	x,#32
8089  001e 272c          	jreq	L6071
8090  0020 a30040        	cpw	x,#64
8091  0023 2727          	jreq	L6071
8092  0025 a30080        	cpw	x,#128
8093  0028 2722          	jreq	L6071
8094  002a a30200        	cpw	x,#512
8095  002d 271d          	jreq	L6071
8096  002f a30400        	cpw	x,#1024
8097  0032 2718          	jreq	L6071
8098  0034 a30800        	cpw	x,#2048
8099  0037 2713          	jreq	L6071
8100  0039 a31000        	cpw	x,#4096
8101  003c 270e          	jreq	L6071
8102  003e ae0837        	ldw	x,#2103
8103  0041 89            	pushw	x
8104  0042 5f            	clrw	x
8105  0043 89            	pushw	x
8106  0044 ae0000        	ldw	x,#L37
8107  0047 cd0000        	call	_assert_failed
8109  004a 5b04          	addw	sp,#4
8110  004c               L6071:
8111                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8113  004c c65255        	ld	a,21077
8114  004f 1404          	and	a,(OFST+2,sp)
8115  0051 6b01          	ld	(OFST-1,sp),a
8116                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8118  0053 7b03          	ld	a,(OFST+1,sp)
8119  0055 6b02          	ld	(OFST+0,sp),a
8120                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8122  0057 c45256        	and	a,21078
8123  005a 1a01          	or	a,(OFST-1,sp)
8124  005c 2702          	jreq	L1533
8125                     ; 2110         bitstatus = SET;
8127  005e a601          	ld	a,#1
8129  0060               L1533:
8130                     ; 2114         bitstatus = RESET;
8132                     ; 2116     return (FlagStatus)(bitstatus);
8136  0060 5b04          	addw	sp,#4
8137  0062 81            	ret	
8173                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8173                     ; 2138 {
8174                     .text:	section	.text,new
8175  0000               _TIM1_ClearFlag:
8177  0000 89            	pushw	x
8178       00000000      OFST:	set	0
8181                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8183  0001 01            	rrwa	x,a
8184  0002 9f            	ld	a,xl
8185  0003 a4e1          	and	a,#225
8186  0005 97            	ld	xl,a
8187  0006 4f            	clr	a
8188  0007 02            	rlwa	x,a
8189  0008 5d            	tnzw	x
8190  0009 2604          	jrne	L4171
8191  000b 1e01          	ldw	x,(OFST+1,sp)
8192  000d 260e          	jrne	L6171
8193  000f               L4171:
8194  000f ae085c        	ldw	x,#2140
8195  0012 89            	pushw	x
8196  0013 5f            	clrw	x
8197  0014 89            	pushw	x
8198  0015 ae0000        	ldw	x,#L37
8199  0018 cd0000        	call	_assert_failed
8201  001b 5b04          	addw	sp,#4
8202  001d               L6171:
8203                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8205  001d 7b02          	ld	a,(OFST+2,sp)
8206  001f 43            	cpl	a
8207  0020 c75255        	ld	21077,a
8208                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8208                     ; 2145                           (uint8_t)0x1E);
8210  0023 7b01          	ld	a,(OFST+1,sp)
8211  0025 43            	cpl	a
8212  0026 a41e          	and	a,#30
8213  0028 c75256        	ld	21078,a
8214                     ; 2146 }
8217  002b 85            	popw	x
8218  002c 81            	ret	
8279                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8279                     ; 2163 {
8280                     .text:	section	.text,new
8281  0000               _TIM1_GetITStatus:
8283  0000 88            	push	a
8284  0001 89            	pushw	x
8285       00000002      OFST:	set	2
8288                     ; 2164     ITStatus bitstatus = RESET;
8290                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8294                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8296  0002 a101          	cp	a,#1
8297  0004 272a          	jreq	L0371
8298  0006 a102          	cp	a,#2
8299  0008 2726          	jreq	L0371
8300  000a a104          	cp	a,#4
8301  000c 2722          	jreq	L0371
8302  000e a108          	cp	a,#8
8303  0010 271e          	jreq	L0371
8304  0012 a110          	cp	a,#16
8305  0014 271a          	jreq	L0371
8306  0016 a120          	cp	a,#32
8307  0018 2716          	jreq	L0371
8308  001a a140          	cp	a,#64
8309  001c 2712          	jreq	L0371
8310  001e a180          	cp	a,#128
8311  0020 270e          	jreq	L0371
8312  0022 ae0878        	ldw	x,#2168
8313  0025 89            	pushw	x
8314  0026 5f            	clrw	x
8315  0027 89            	pushw	x
8316  0028 ae0000        	ldw	x,#L37
8317  002b cd0000        	call	_assert_failed
8319  002e 5b04          	addw	sp,#4
8320  0030               L0371:
8321                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8323  0030 c65255        	ld	a,21077
8324  0033 1403          	and	a,(OFST+1,sp)
8325  0035 6b01          	ld	(OFST-1,sp),a
8326                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8328  0037 c65254        	ld	a,21076
8329  003a 1403          	and	a,(OFST+1,sp)
8330  003c 6b02          	ld	(OFST+0,sp),a
8331                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8333  003e 7b01          	ld	a,(OFST-1,sp)
8334  0040 2708          	jreq	L1243
8336  0042 7b02          	ld	a,(OFST+0,sp)
8337  0044 2704          	jreq	L1243
8338                     ; 2176         bitstatus = SET;
8340  0046 a601          	ld	a,#1
8342  0048 2001          	jra	L3243
8343  004a               L1243:
8344                     ; 2180         bitstatus = RESET;
8346  004a 4f            	clr	a
8347  004b               L3243:
8348                     ; 2182     return (ITStatus)(bitstatus);
8352  004b 5b03          	addw	sp,#3
8353  004d 81            	ret	
8390                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8390                     ; 2200 {
8391                     .text:	section	.text,new
8392  0000               _TIM1_ClearITPendingBit:
8394  0000 88            	push	a
8395       00000000      OFST:	set	0
8398                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
8400  0001 4d            	tnz	a
8401  0002 260e          	jrne	L0471
8402  0004 ae089a        	ldw	x,#2202
8403  0007 89            	pushw	x
8404  0008 5f            	clrw	x
8405  0009 89            	pushw	x
8406  000a ae0000        	ldw	x,#L37
8407  000d cd0000        	call	_assert_failed
8409  0010 5b04          	addw	sp,#4
8410  0012               L0471:
8411                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8413  0012 7b01          	ld	a,(OFST+1,sp)
8414  0014 43            	cpl	a
8415  0015 c75255        	ld	21077,a
8416                     ; 2206 }
8419  0018 84            	pop	a
8420  0019 81            	ret	
8466                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
8466                     ; 2225                        uint8_t TIM1_ICSelection,
8466                     ; 2226                        uint8_t TIM1_ICFilter)
8466                     ; 2227 {
8467                     .text:	section	.text,new
8468  0000               L3_TI1_Config:
8470  0000 89            	pushw	x
8471       00000001      OFST:	set	1
8474                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8476  0001 7211525c      	bres	21084,#0
8477  0005 88            	push	a
8478                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8478                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8480  0006 7b06          	ld	a,(OFST+5,sp)
8481  0008 97            	ld	xl,a
8482  0009 a610          	ld	a,#16
8483  000b 42            	mul	x,a
8484  000c 9f            	ld	a,xl
8485  000d 1a03          	or	a,(OFST+2,sp)
8486  000f 6b01          	ld	(OFST+0,sp),a
8487  0011 c65258        	ld	a,21080
8488  0014 a40c          	and	a,#12
8489  0016 1a01          	or	a,(OFST+0,sp)
8490  0018 c75258        	ld	21080,a
8491                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8493  001b 7b02          	ld	a,(OFST+1,sp)
8494  001d 2706          	jreq	L3643
8495                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
8497  001f 7212525c      	bset	21084,#1
8499  0023 2004          	jra	L5643
8500  0025               L3643:
8501                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8503  0025 7213525c      	bres	21084,#1
8504  0029               L5643:
8505                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8507  0029 7210525c      	bset	21084,#0
8508                     ; 2248 }
8511  002d 5b03          	addw	sp,#3
8512  002f 81            	ret	
8558                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
8558                     ; 2267                        uint8_t TIM1_ICSelection,
8558                     ; 2268                        uint8_t TIM1_ICFilter)
8558                     ; 2269 {
8559                     .text:	section	.text,new
8560  0000               L5_TI2_Config:
8562  0000 89            	pushw	x
8563       00000001      OFST:	set	1
8566                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8568  0001 7219525c      	bres	21084,#4
8569  0005 88            	push	a
8570                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8570                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8572  0006 7b06          	ld	a,(OFST+5,sp)
8573  0008 97            	ld	xl,a
8574  0009 a610          	ld	a,#16
8575  000b 42            	mul	x,a
8576  000c 9f            	ld	a,xl
8577  000d 1a03          	or	a,(OFST+2,sp)
8578  000f 6b01          	ld	(OFST+0,sp),a
8579  0011 c65259        	ld	a,21081
8580  0014 a40c          	and	a,#12
8581  0016 1a01          	or	a,(OFST+0,sp)
8582  0018 c75259        	ld	21081,a
8583                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8585  001b 7b02          	ld	a,(OFST+1,sp)
8586  001d 2706          	jreq	L7053
8587                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
8589  001f 721a525c      	bset	21084,#5
8591  0023 2004          	jra	L1153
8592  0025               L7053:
8593                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8595  0025 721b525c      	bres	21084,#5
8596  0029               L1153:
8597                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8599  0029 7218525c      	bset	21084,#4
8600                     ; 2287 }
8603  002d 5b03          	addw	sp,#3
8604  002f 81            	ret	
8650                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
8650                     ; 2306                        uint8_t TIM1_ICSelection,
8650                     ; 2307                        uint8_t TIM1_ICFilter)
8650                     ; 2308 {
8651                     .text:	section	.text,new
8652  0000               L7_TI3_Config:
8654  0000 89            	pushw	x
8655       00000001      OFST:	set	1
8658                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8660  0001 7211525d      	bres	21085,#0
8661  0005 88            	push	a
8662                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8662                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8664  0006 7b06          	ld	a,(OFST+5,sp)
8665  0008 97            	ld	xl,a
8666  0009 a610          	ld	a,#16
8667  000b 42            	mul	x,a
8668  000c 9f            	ld	a,xl
8669  000d 1a03          	or	a,(OFST+2,sp)
8670  000f 6b01          	ld	(OFST+0,sp),a
8671  0011 c6525a        	ld	a,21082
8672  0014 a40c          	and	a,#12
8673  0016 1a01          	or	a,(OFST+0,sp)
8674  0018 c7525a        	ld	21082,a
8675                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8677  001b 7b02          	ld	a,(OFST+1,sp)
8678  001d 2706          	jreq	L3353
8679                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
8681  001f 7212525d      	bset	21085,#1
8683  0023 2004          	jra	L5353
8684  0025               L3353:
8685                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8687  0025 7213525d      	bres	21085,#1
8688  0029               L5353:
8689                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8691  0029 7210525d      	bset	21085,#0
8692                     ; 2327 }
8695  002d 5b03          	addw	sp,#3
8696  002f 81            	ret	
8742                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
8742                     ; 2347                        uint8_t TIM1_ICSelection,
8742                     ; 2348                        uint8_t TIM1_ICFilter)
8742                     ; 2349 {
8743                     .text:	section	.text,new
8744  0000               L11_TI4_Config:
8746  0000 89            	pushw	x
8747       00000001      OFST:	set	1
8750                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8752  0001 7219525d      	bres	21085,#4
8753  0005 88            	push	a
8754                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8754                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8756  0006 7b06          	ld	a,(OFST+5,sp)
8757  0008 97            	ld	xl,a
8758  0009 a610          	ld	a,#16
8759  000b 42            	mul	x,a
8760  000c 9f            	ld	a,xl
8761  000d 1a03          	or	a,(OFST+2,sp)
8762  000f 6b01          	ld	(OFST+0,sp),a
8763  0011 c6525b        	ld	a,21083
8764  0014 a40c          	and	a,#12
8765  0016 1a01          	or	a,(OFST+0,sp)
8766  0018 c7525b        	ld	21083,a
8767                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8769  001b 7b02          	ld	a,(OFST+1,sp)
8770  001d 2706          	jreq	L7553
8771                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
8773  001f 721a525d      	bset	21085,#5
8775  0023 2004          	jra	L1653
8776  0025               L7553:
8777                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8779  0025 721b525d      	bres	21085,#5
8780  0029               L1653:
8781                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8783  0029 7218525d      	bset	21085,#4
8784                     ; 2370 }
8787  002d 5b03          	addw	sp,#3
8788  002f 81            	ret	
8801                     	xdef	_TIM1_ClearITPendingBit
8802                     	xdef	_TIM1_GetITStatus
8803                     	xdef	_TIM1_ClearFlag
8804                     	xdef	_TIM1_GetFlagStatus
8805                     	xdef	_TIM1_GetPrescaler
8806                     	xdef	_TIM1_GetCounter
8807                     	xdef	_TIM1_GetCapture4
8808                     	xdef	_TIM1_GetCapture3
8809                     	xdef	_TIM1_GetCapture2
8810                     	xdef	_TIM1_GetCapture1
8811                     	xdef	_TIM1_SetIC4Prescaler
8812                     	xdef	_TIM1_SetIC3Prescaler
8813                     	xdef	_TIM1_SetIC2Prescaler
8814                     	xdef	_TIM1_SetIC1Prescaler
8815                     	xdef	_TIM1_SetCompare4
8816                     	xdef	_TIM1_SetCompare3
8817                     	xdef	_TIM1_SetCompare2
8818                     	xdef	_TIM1_SetCompare1
8819                     	xdef	_TIM1_SetAutoreload
8820                     	xdef	_TIM1_SetCounter
8821                     	xdef	_TIM1_SelectOCxM
8822                     	xdef	_TIM1_CCxNCmd
8823                     	xdef	_TIM1_CCxCmd
8824                     	xdef	_TIM1_OC4PolarityConfig
8825                     	xdef	_TIM1_OC3NPolarityConfig
8826                     	xdef	_TIM1_OC3PolarityConfig
8827                     	xdef	_TIM1_OC2NPolarityConfig
8828                     	xdef	_TIM1_OC2PolarityConfig
8829                     	xdef	_TIM1_OC1NPolarityConfig
8830                     	xdef	_TIM1_OC1PolarityConfig
8831                     	xdef	_TIM1_GenerateEvent
8832                     	xdef	_TIM1_OC4FastConfig
8833                     	xdef	_TIM1_OC3FastConfig
8834                     	xdef	_TIM1_OC2FastConfig
8835                     	xdef	_TIM1_OC1FastConfig
8836                     	xdef	_TIM1_OC4PreloadConfig
8837                     	xdef	_TIM1_OC3PreloadConfig
8838                     	xdef	_TIM1_OC2PreloadConfig
8839                     	xdef	_TIM1_OC1PreloadConfig
8840                     	xdef	_TIM1_CCPreloadControl
8841                     	xdef	_TIM1_SelectCOM
8842                     	xdef	_TIM1_ARRPreloadConfig
8843                     	xdef	_TIM1_ForcedOC4Config
8844                     	xdef	_TIM1_ForcedOC3Config
8845                     	xdef	_TIM1_ForcedOC2Config
8846                     	xdef	_TIM1_ForcedOC1Config
8847                     	xdef	_TIM1_CounterModeConfig
8848                     	xdef	_TIM1_PrescalerConfig
8849                     	xdef	_TIM1_EncoderInterfaceConfig
8850                     	xdef	_TIM1_SelectMasterSlaveMode
8851                     	xdef	_TIM1_SelectSlaveMode
8852                     	xdef	_TIM1_SelectOutputTrigger
8853                     	xdef	_TIM1_SelectOnePulseMode
8854                     	xdef	_TIM1_SelectHallSensor
8855                     	xdef	_TIM1_UpdateRequestConfig
8856                     	xdef	_TIM1_UpdateDisableConfig
8857                     	xdef	_TIM1_SelectInputTrigger
8858                     	xdef	_TIM1_TIxExternalClockConfig
8859                     	xdef	_TIM1_ETRConfig
8860                     	xdef	_TIM1_ETRClockMode2Config
8861                     	xdef	_TIM1_ETRClockMode1Config
8862                     	xdef	_TIM1_InternalClockConfig
8863                     	xdef	_TIM1_ITConfig
8864                     	xdef	_TIM1_CtrlPWMOutputs
8865                     	xdef	_TIM1_Cmd
8866                     	xdef	_TIM1_PWMIConfig
8867                     	xdef	_TIM1_ICInit
8868                     	xdef	_TIM1_BDTRConfig
8869                     	xdef	_TIM1_OC4Init
8870                     	xdef	_TIM1_OC3Init
8871                     	xdef	_TIM1_OC2Init
8872                     	xdef	_TIM1_OC1Init
8873                     	xdef	_TIM1_TimeBaseInit
8874                     	xdef	_TIM1_DeInit
8875                     	xref	_assert_failed
8876                     .const:	section	.text
8877  0000               L37:
8878  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8879  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8880  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8881  0036 5f74696d312e  	dc.b	"_tim1.c",0
8901                     	end
