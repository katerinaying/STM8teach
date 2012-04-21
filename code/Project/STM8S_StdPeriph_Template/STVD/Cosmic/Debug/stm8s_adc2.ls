   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 48 void ADC2_DeInit(void)
  50                     ; 49 {
  52                     .text:	section	.text,new
  53  0000               _ADC2_DeInit:
  57                     ; 50     ADC2->CSR  = ADC2_CSR_RESET_VALUE;
  59  0000 725f5400      	clr	21504
  60                     ; 51     ADC2->CR1  = ADC2_CR1_RESET_VALUE;
  62  0004 725f5401      	clr	21505
  63                     ; 52     ADC2->CR2  = ADC2_CR2_RESET_VALUE;
  65  0008 725f5402      	clr	21506
  66                     ; 53     ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
  68  000c 725f5406      	clr	21510
  69                     ; 54     ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
  71  0010 725f5407      	clr	21511
  72                     ; 55 }
  75  0014 81            	ret	
 602                     ; 77 void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
 602                     ; 78 {
 603                     .text:	section	.text,new
 604  0000               _ADC2_Init:
 606  0000 89            	pushw	x
 607       00000000      OFST:	set	0
 610                     ; 81     assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
 612  0001 9e            	ld	a,xh
 613  0002 4d            	tnz	a
 614  0003 270a          	jreq	L41
 615  0005 9e            	ld	a,xh
 616  0006 4a            	dec	a
 617  0007 2706          	jreq	L41
 618  0009 ae0051        	ldw	x,#81
 619  000c cd0122        	call	LC001
 620  000f               L41:
 621                     ; 82     assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
 623  000f 7b02          	ld	a,(OFST+2,sp)
 624  0011 2742          	jreq	L42
 625  0013 a101          	cp	a,#1
 626  0015 273e          	jreq	L42
 627  0017 a102          	cp	a,#2
 628  0019 273a          	jreq	L42
 629  001b a103          	cp	a,#3
 630  001d 2736          	jreq	L42
 631  001f a104          	cp	a,#4
 632  0021 2732          	jreq	L42
 633  0023 a105          	cp	a,#5
 634  0025 272e          	jreq	L42
 635  0027 a106          	cp	a,#6
 636  0029 272a          	jreq	L42
 637  002b a107          	cp	a,#7
 638  002d 2726          	jreq	L42
 639  002f a108          	cp	a,#8
 640  0031 2722          	jreq	L42
 641  0033 a109          	cp	a,#9
 642  0035 271e          	jreq	L42
 643  0037 a10a          	cp	a,#10
 644  0039 271a          	jreq	L42
 645  003b a10b          	cp	a,#11
 646  003d 2716          	jreq	L42
 647  003f a10c          	cp	a,#12
 648  0041 2712          	jreq	L42
 649  0043 a10d          	cp	a,#13
 650  0045 270e          	jreq	L42
 651  0047 a10e          	cp	a,#14
 652  0049 270a          	jreq	L42
 653  004b a10f          	cp	a,#15
 654  004d 2706          	jreq	L42
 655  004f ae0052        	ldw	x,#82
 656  0052 cd0122        	call	LC001
 657  0055               L42:
 658                     ; 83     assert_param(IS_ADC2_PRESSEL_OK(ADC2_PrescalerSelection));
 660  0055 7b05          	ld	a,(OFST+5,sp)
 661  0057 2722          	jreq	L43
 662  0059 a110          	cp	a,#16
 663  005b 271e          	jreq	L43
 664  005d a120          	cp	a,#32
 665  005f 271a          	jreq	L43
 666  0061 a130          	cp	a,#48
 667  0063 2716          	jreq	L43
 668  0065 a140          	cp	a,#64
 669  0067 2712          	jreq	L43
 670  0069 a150          	cp	a,#80
 671  006b 270e          	jreq	L43
 672  006d a160          	cp	a,#96
 673  006f 270a          	jreq	L43
 674  0071 a170          	cp	a,#112
 675  0073 2706          	jreq	L43
 676  0075 ae0053        	ldw	x,#83
 677  0078 cd0122        	call	LC001
 678  007b               L43:
 679                     ; 84     assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
 681  007b 7b06          	ld	a,(OFST+6,sp)
 682  007d 2709          	jreq	L44
 683  007f 4a            	dec	a
 684  0080 2706          	jreq	L44
 685  0082 ae0054        	ldw	x,#84
 686  0085 cd0122        	call	LC001
 687  0088               L44:
 688                     ; 85     assert_param(IS_FUNCTIONALSTATE_OK(((ADC2_ExtTriggerState))));
 690  0088 7b07          	ld	a,(OFST+7,sp)
 691  008a 2709          	jreq	L45
 692  008c 4a            	dec	a
 693  008d 2706          	jreq	L45
 694  008f ae0055        	ldw	x,#85
 695  0092 cd0122        	call	LC001
 696  0095               L45:
 697                     ; 86     assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
 699  0095 7b08          	ld	a,(OFST+8,sp)
 700  0097 270a          	jreq	L46
 701  0099 a108          	cp	a,#8
 702  009b 2706          	jreq	L46
 703  009d ae0056        	ldw	x,#86
 704  00a0 cd0122        	call	LC001
 705  00a3               L46:
 706                     ; 87     assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
 708  00a3 7b09          	ld	a,(OFST+9,sp)
 709  00a5 2745          	jreq	L47
 710  00a7 a101          	cp	a,#1
 711  00a9 2741          	jreq	L47
 712  00ab a102          	cp	a,#2
 713  00ad 273d          	jreq	L47
 714  00af a103          	cp	a,#3
 715  00b1 2739          	jreq	L47
 716  00b3 a104          	cp	a,#4
 717  00b5 2735          	jreq	L47
 718  00b7 a105          	cp	a,#5
 719  00b9 2731          	jreq	L47
 720  00bb a106          	cp	a,#6
 721  00bd 272d          	jreq	L47
 722  00bf a107          	cp	a,#7
 723  00c1 2729          	jreq	L47
 724  00c3 a108          	cp	a,#8
 725  00c5 2725          	jreq	L47
 726  00c7 a109          	cp	a,#9
 727  00c9 2721          	jreq	L47
 728  00cb a10a          	cp	a,#10
 729  00cd 271d          	jreq	L47
 730  00cf a10b          	cp	a,#11
 731  00d1 2719          	jreq	L47
 732  00d3 a10c          	cp	a,#12
 733  00d5 2715          	jreq	L47
 734  00d7 a10d          	cp	a,#13
 735  00d9 2711          	jreq	L47
 736  00db a10e          	cp	a,#14
 737  00dd 270d          	jreq	L47
 738  00df a10f          	cp	a,#15
 739  00e1 2709          	jreq	L47
 740  00e3 a11f          	cp	a,#31
 741  00e5 2705          	jreq	L47
 742  00e7 ae0057        	ldw	x,#87
 743  00ea ad36          	call	LC001
 744  00ec               L47:
 745                     ; 88     assert_param(IS_FUNCTIONALSTATE_OK(ADC2_SchmittTriggerState));
 747  00ec 7b0a          	ld	a,(OFST+10,sp)
 748  00ee 2708          	jreq	L401
 749  00f0 4a            	dec	a
 750  00f1 2705          	jreq	L401
 751  00f3 ae0058        	ldw	x,#88
 752  00f6 ad2a          	call	LC001
 753  00f8               L401:
 754                     ; 93     ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
 756  00f8 7b08          	ld	a,(OFST+8,sp)
 757  00fa 88            	push	a
 758  00fb 7b03          	ld	a,(OFST+3,sp)
 759  00fd 97            	ld	xl,a
 760  00fe 7b02          	ld	a,(OFST+2,sp)
 761  0100 95            	ld	xh,a
 762  0101 cd0000        	call	_ADC2_ConversionConfig
 764  0104 84            	pop	a
 765                     ; 95     ADC2_PrescalerConfig(ADC2_PrescalerSelection);
 767  0105 7b05          	ld	a,(OFST+5,sp)
 768  0107 cd0000        	call	_ADC2_PrescalerConfig
 770                     ; 100     ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
 772  010a 7b07          	ld	a,(OFST+7,sp)
 773  010c 97            	ld	xl,a
 774  010d 7b06          	ld	a,(OFST+6,sp)
 775  010f 95            	ld	xh,a
 776  0110 cd0000        	call	_ADC2_ExternalTriggerConfig
 778                     ; 105     ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
 780  0113 7b0a          	ld	a,(OFST+10,sp)
 781  0115 97            	ld	xl,a
 782  0116 7b09          	ld	a,(OFST+9,sp)
 783  0118 95            	ld	xh,a
 784  0119 cd0000        	call	_ADC2_SchmittTriggerConfig
 786                     ; 108     ADC2->CR1 |= ADC2_CR1_ADON;
 788  011c 72105401      	bset	21505,#0
 789                     ; 110 }
 792  0120 85            	popw	x
 793  0121 81            	ret	
 794  0122               LC001:
 795  0122 89            	pushw	x
 796  0123 5f            	clrw	x
 797  0124 89            	pushw	x
 798  0125 ae0000        	ldw	x,#L172
 799  0128 cd0000        	call	_assert_failed
 801  012b 5b04          	addw	sp,#4
 802  012d 81            	ret	
 838                     ; 118 void ADC2_Cmd(FunctionalState NewState)
 838                     ; 119 {
 839                     .text:	section	.text,new
 840  0000               _ADC2_Cmd:
 842  0000 88            	push	a
 843       00000000      OFST:	set	0
 846                     ; 122     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 848  0001 4d            	tnz	a
 849  0002 2711          	jreq	L621
 850  0004 4a            	dec	a
 851  0005 270e          	jreq	L621
 852  0007 ae007a        	ldw	x,#122
 853  000a 89            	pushw	x
 854  000b 5f            	clrw	x
 855  000c 89            	pushw	x
 856  000d ae0000        	ldw	x,#L172
 857  0010 cd0000        	call	_assert_failed
 859  0013 5b04          	addw	sp,#4
 860  0015               L621:
 861                     ; 124     if (NewState != DISABLE)
 863  0015 7b01          	ld	a,(OFST+1,sp)
 864  0017 2706          	jreq	L113
 865                     ; 126         ADC2->CR1 |= ADC2_CR1_ADON;
 867  0019 72105401      	bset	21505,#0
 869  001d 2004          	jra	L313
 870  001f               L113:
 871                     ; 130         ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
 873  001f 72115401      	bres	21505,#0
 874  0023               L313:
 875                     ; 133 }
 878  0023 84            	pop	a
 879  0024 81            	ret	
 915                     ; 140 void ADC2_ITConfig(FunctionalState NewState)
 915                     ; 141 {
 916                     .text:	section	.text,new
 917  0000               _ADC2_ITConfig:
 919  0000 88            	push	a
 920       00000000      OFST:	set	0
 923                     ; 144     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 925  0001 4d            	tnz	a
 926  0002 2711          	jreq	L041
 927  0004 4a            	dec	a
 928  0005 270e          	jreq	L041
 929  0007 ae0090        	ldw	x,#144
 930  000a 89            	pushw	x
 931  000b 5f            	clrw	x
 932  000c 89            	pushw	x
 933  000d ae0000        	ldw	x,#L172
 934  0010 cd0000        	call	_assert_failed
 936  0013 5b04          	addw	sp,#4
 937  0015               L041:
 938                     ; 146     if (NewState != DISABLE)
 940  0015 7b01          	ld	a,(OFST+1,sp)
 941  0017 2706          	jreq	L333
 942                     ; 149         ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
 944  0019 721a5400      	bset	21504,#5
 946  001d 2004          	jra	L533
 947  001f               L333:
 948                     ; 154         ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
 950  001f 721b5400      	bres	21504,#5
 951  0023               L533:
 952                     ; 157 }
 955  0023 84            	pop	a
 956  0024 81            	ret	
 993                     ; 165 void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
 993                     ; 166 {
 994                     .text:	section	.text,new
 995  0000               _ADC2_PrescalerConfig:
 997  0000 88            	push	a
 998       00000000      OFST:	set	0
1001                     ; 169     assert_param(IS_ADC2_PRESSEL_OK(ADC2_Prescaler));
1003  0001 4d            	tnz	a
1004  0002 272a          	jreq	L251
1005  0004 a110          	cp	a,#16
1006  0006 2726          	jreq	L251
1007  0008 a120          	cp	a,#32
1008  000a 2722          	jreq	L251
1009  000c a130          	cp	a,#48
1010  000e 271e          	jreq	L251
1011  0010 a140          	cp	a,#64
1012  0012 271a          	jreq	L251
1013  0014 a150          	cp	a,#80
1014  0016 2716          	jreq	L251
1015  0018 a160          	cp	a,#96
1016  001a 2712          	jreq	L251
1017  001c a170          	cp	a,#112
1018  001e 270e          	jreq	L251
1019  0020 ae00a9        	ldw	x,#169
1020  0023 89            	pushw	x
1021  0024 5f            	clrw	x
1022  0025 89            	pushw	x
1023  0026 ae0000        	ldw	x,#L172
1024  0029 cd0000        	call	_assert_failed
1026  002c 5b04          	addw	sp,#4
1027  002e               L251:
1028                     ; 172     ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
1030  002e c65401        	ld	a,21505
1031  0031 a48f          	and	a,#143
1032  0033 c75401        	ld	21505,a
1033                     ; 174     ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
1035  0036 c65401        	ld	a,21505
1036  0039 1a01          	or	a,(OFST+1,sp)
1037  003b c75401        	ld	21505,a
1038                     ; 176 }
1041  003e 84            	pop	a
1042  003f 81            	ret	
1090                     ; 187 void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
1090                     ; 188 {
1091                     .text:	section	.text,new
1092  0000               _ADC2_SchmittTriggerConfig:
1094  0000 89            	pushw	x
1095       00000000      OFST:	set	0
1098                     ; 191     assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
1100  0001 9e            	ld	a,xh
1101  0002 4d            	tnz	a
1102  0003 2755          	jreq	L461
1103  0005 9e            	ld	a,xh
1104  0006 4a            	dec	a
1105  0007 2751          	jreq	L461
1106  0009 9e            	ld	a,xh
1107  000a a102          	cp	a,#2
1108  000c 274c          	jreq	L461
1109  000e 9e            	ld	a,xh
1110  000f a103          	cp	a,#3
1111  0011 2747          	jreq	L461
1112  0013 9e            	ld	a,xh
1113  0014 a104          	cp	a,#4
1114  0016 2742          	jreq	L461
1115  0018 9e            	ld	a,xh
1116  0019 a105          	cp	a,#5
1117  001b 273d          	jreq	L461
1118  001d 9e            	ld	a,xh
1119  001e a106          	cp	a,#6
1120  0020 2738          	jreq	L461
1121  0022 9e            	ld	a,xh
1122  0023 a107          	cp	a,#7
1123  0025 2733          	jreq	L461
1124  0027 9e            	ld	a,xh
1125  0028 a108          	cp	a,#8
1126  002a 272e          	jreq	L461
1127  002c 9e            	ld	a,xh
1128  002d a109          	cp	a,#9
1129  002f 2729          	jreq	L461
1130  0031 9e            	ld	a,xh
1131  0032 a10a          	cp	a,#10
1132  0034 2724          	jreq	L461
1133  0036 9e            	ld	a,xh
1134  0037 a10b          	cp	a,#11
1135  0039 271f          	jreq	L461
1136  003b 9e            	ld	a,xh
1137  003c a10c          	cp	a,#12
1138  003e 271a          	jreq	L461
1139  0040 9e            	ld	a,xh
1140  0041 a10d          	cp	a,#13
1141  0043 2715          	jreq	L461
1142  0045 9e            	ld	a,xh
1143  0046 a10e          	cp	a,#14
1144  0048 2710          	jreq	L461
1145  004a 9e            	ld	a,xh
1146  004b a10f          	cp	a,#15
1147  004d 270b          	jreq	L461
1148  004f 9e            	ld	a,xh
1149  0050 a11f          	cp	a,#31
1150  0052 2706          	jreq	L461
1151  0054 ae00bf        	ldw	x,#191
1152  0057 cd00d9        	call	LC005
1153  005a               L461:
1154                     ; 192     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1156  005a 7b02          	ld	a,(OFST+2,sp)
1157  005c 2708          	jreq	L471
1158  005e 4a            	dec	a
1159  005f 2705          	jreq	L471
1160  0061 ae00c0        	ldw	x,#192
1161  0064 ad73          	call	LC005
1162  0066               L471:
1163                     ; 194     if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
1165  0066 7b01          	ld	a,(OFST+1,sp)
1166  0068 a11f          	cp	a,#31
1167  006a 261d          	jrne	L773
1168                     ; 196         if (NewState != DISABLE)
1170  006c 7b02          	ld	a,(OFST+2,sp)
1171  006e 270a          	jreq	L104
1172                     ; 198             ADC2->TDRL &= (uint8_t)0x0;
1174  0070 725f5407      	clr	21511
1175                     ; 199             ADC2->TDRH &= (uint8_t)0x0;
1177  0074 725f5406      	clr	21510
1179  0078 2057          	jra	L504
1180  007a               L104:
1181                     ; 203             ADC2->TDRL |= (uint8_t)0xFF;
1183  007a c65407        	ld	a,21511
1184  007d aaff          	or	a,#255
1185  007f c75407        	ld	21511,a
1186                     ; 204             ADC2->TDRH |= (uint8_t)0xFF;
1188  0082 c65406        	ld	a,21510
1189  0085 aaff          	or	a,#255
1190  0087 2045          	jp	LC002
1191  0089               L773:
1192                     ; 207     else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
1194  0089 a108          	cp	a,#8
1195  008b 0d02          	tnz	(OFST+2,sp)
1196  008d 2420          	jruge	L704
1197                     ; 209         if (NewState != DISABLE)
1199  008f 2711          	jreq	L114
1200                     ; 211             ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
1202  0091 ad40          	call	LC004
1203  0093 2704          	jreq	L002
1204  0095               L202:
1205  0095 48            	sll	a
1206  0096 5a            	decw	x
1207  0097 26fc          	jrne	L202
1208  0099               L002:
1209  0099 43            	cpl	a
1210  009a c45407        	and	a,21511
1211  009d               LC003:
1212  009d c75407        	ld	21511,a
1214  00a0 202f          	jra	L504
1215  00a2               L114:
1216                     ; 215             ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
1218  00a2 ad2f          	call	LC004
1219  00a4 2704          	jreq	L402
1220  00a6               L602:
1221  00a6 48            	sll	a
1222  00a7 5a            	decw	x
1223  00a8 26fc          	jrne	L602
1224  00aa               L402:
1225  00aa ca5407        	or	a,21511
1226  00ad 20ee          	jp	LC003
1227  00af               L704:
1228                     ; 220         if (NewState != DISABLE)
1230  00af 2710          	jreq	L714
1231                     ; 222             ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
1233  00b1 a008          	sub	a,#8
1234  00b3 ad1e          	call	LC004
1235  00b5 2704          	jreq	L012
1236  00b7               L212:
1237  00b7 48            	sll	a
1238  00b8 5a            	decw	x
1239  00b9 26fc          	jrne	L212
1240  00bb               L012:
1241  00bb 43            	cpl	a
1242  00bc c45406        	and	a,21510
1244  00bf 200d          	jp	LC002
1245  00c1               L714:
1246                     ; 226             ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
1248  00c1 a008          	sub	a,#8
1249  00c3 ad0e          	call	LC004
1250  00c5 2704          	jreq	L412
1251  00c7               L612:
1252  00c7 48            	sll	a
1253  00c8 5a            	decw	x
1254  00c9 26fc          	jrne	L612
1255  00cb               L412:
1256  00cb ca5406        	or	a,21510
1257  00ce               LC002:
1258  00ce c75406        	ld	21510,a
1259  00d1               L504:
1260                     ; 230 }
1263  00d1 85            	popw	x
1264  00d2 81            	ret	
1265  00d3               LC004:
1266  00d3 5f            	clrw	x
1267  00d4 97            	ld	xl,a
1268  00d5 a601          	ld	a,#1
1269  00d7 5d            	tnzw	x
1270  00d8 81            	ret	
1271  00d9               LC005:
1272  00d9 89            	pushw	x
1273  00da 5f            	clrw	x
1274  00db 89            	pushw	x
1275  00dc ae0000        	ldw	x,#L172
1276  00df cd0000        	call	_assert_failed
1278  00e2 5b04          	addw	sp,#4
1279  00e4 81            	ret	
1337                     ; 242 void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
1337                     ; 243 {
1338                     .text:	section	.text,new
1339  0000               _ADC2_ConversionConfig:
1341  0000 89            	pushw	x
1342       00000000      OFST:	set	0
1345                     ; 246     assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
1347  0001 9e            	ld	a,xh
1348  0002 4d            	tnz	a
1349  0003 270a          	jreq	L622
1350  0005 9e            	ld	a,xh
1351  0006 4a            	dec	a
1352  0007 2706          	jreq	L622
1353  0009 ae00f6        	ldw	x,#246
1354  000c cd008e        	call	LC006
1355  000f               L622:
1356                     ; 247     assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
1358  000f 7b02          	ld	a,(OFST+2,sp)
1359  0011 2741          	jreq	L632
1360  0013 a101          	cp	a,#1
1361  0015 273d          	jreq	L632
1362  0017 a102          	cp	a,#2
1363  0019 2739          	jreq	L632
1364  001b a103          	cp	a,#3
1365  001d 2735          	jreq	L632
1366  001f a104          	cp	a,#4
1367  0021 2731          	jreq	L632
1368  0023 a105          	cp	a,#5
1369  0025 272d          	jreq	L632
1370  0027 a106          	cp	a,#6
1371  0029 2729          	jreq	L632
1372  002b a107          	cp	a,#7
1373  002d 2725          	jreq	L632
1374  002f a108          	cp	a,#8
1375  0031 2721          	jreq	L632
1376  0033 a109          	cp	a,#9
1377  0035 271d          	jreq	L632
1378  0037 a10a          	cp	a,#10
1379  0039 2719          	jreq	L632
1380  003b a10b          	cp	a,#11
1381  003d 2715          	jreq	L632
1382  003f a10c          	cp	a,#12
1383  0041 2711          	jreq	L632
1384  0043 a10d          	cp	a,#13
1385  0045 270d          	jreq	L632
1386  0047 a10e          	cp	a,#14
1387  0049 2709          	jreq	L632
1388  004b a10f          	cp	a,#15
1389  004d 2705          	jreq	L632
1390  004f ae00f7        	ldw	x,#247
1391  0052 ad3a          	call	LC006
1392  0054               L632:
1393                     ; 248     assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
1395  0054 7b05          	ld	a,(OFST+5,sp)
1396  0056 2709          	jreq	L642
1397  0058 a108          	cp	a,#8
1398  005a 2705          	jreq	L642
1399  005c ae00f8        	ldw	x,#248
1400  005f ad2d          	call	LC006
1401  0061               L642:
1402                     ; 251     ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
1404  0061 72175402      	bres	21506,#3
1405                     ; 253     ADC2->CR2 |= (uint8_t)(ADC2_Align);
1407  0065 c65402        	ld	a,21506
1408  0068 1a05          	or	a,(OFST+5,sp)
1409  006a c75402        	ld	21506,a
1410                     ; 255     if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
1412  006d 7b01          	ld	a,(OFST+1,sp)
1413  006f 4a            	dec	a
1414  0070 2606          	jrne	L154
1415                     ; 258         ADC2->CR1 |= ADC2_CR1_CONT;
1417  0072 72125401      	bset	21505,#1
1419  0076 2004          	jra	L354
1420  0078               L154:
1421                     ; 263         ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
1423  0078 72135401      	bres	21505,#1
1424  007c               L354:
1425                     ; 267     ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
1427  007c c65400        	ld	a,21504
1428  007f a4f0          	and	a,#240
1429  0081 c75400        	ld	21504,a
1430                     ; 269     ADC2->CSR |= (uint8_t)(ADC2_Channel);
1432  0084 c65400        	ld	a,21504
1433  0087 1a02          	or	a,(OFST+2,sp)
1434  0089 c75400        	ld	21504,a
1435                     ; 271 }
1438  008c 85            	popw	x
1439  008d 81            	ret	
1440  008e               LC006:
1441  008e 89            	pushw	x
1442  008f 5f            	clrw	x
1443  0090 89            	pushw	x
1444  0091 ae0000        	ldw	x,#L172
1445  0094 cd0000        	call	_assert_failed
1447  0097 5b04          	addw	sp,#4
1448  0099 81            	ret	
1495                     ; 284 void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
1495                     ; 285 {
1496                     .text:	section	.text,new
1497  0000               _ADC2_ExternalTriggerConfig:
1499  0000 89            	pushw	x
1500       00000000      OFST:	set	0
1503                     ; 288     assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
1505  0001 9e            	ld	a,xh
1506  0002 4d            	tnz	a
1507  0003 2709          	jreq	L062
1508  0005 9e            	ld	a,xh
1509  0006 4a            	dec	a
1510  0007 2705          	jreq	L062
1511  0009 ae0120        	ldw	x,#288
1512  000c ad2c          	call	LC007
1513  000e               L062:
1514                     ; 289     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1516  000e 7b02          	ld	a,(OFST+2,sp)
1517  0010 2708          	jreq	L072
1518  0012 4a            	dec	a
1519  0013 2705          	jreq	L072
1520  0015 ae0121        	ldw	x,#289
1521  0018 ad20          	call	LC007
1522  001a               L072:
1523                     ; 292     ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
1525  001a c65402        	ld	a,21506
1526  001d a4cf          	and	a,#207
1527  001f c75402        	ld	21506,a
1528                     ; 294     if (NewState != DISABLE)
1530  0022 7b02          	ld	a,(OFST+2,sp)
1531  0024 2706          	jreq	L774
1532                     ; 297         ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
1534  0026 721c5402      	bset	21506,#6
1536  002a 2004          	jra	L105
1537  002c               L774:
1538                     ; 302         ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
1540  002c 721d5402      	bres	21506,#6
1541  0030               L105:
1542                     ; 306     ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
1544  0030 c65402        	ld	a,21506
1545  0033 1a01          	or	a,(OFST+1,sp)
1546  0035 c75402        	ld	21506,a
1547                     ; 308 }
1550  0038 85            	popw	x
1551  0039 81            	ret	
1552  003a               LC007:
1553  003a 89            	pushw	x
1554  003b 5f            	clrw	x
1555  003c 89            	pushw	x
1556  003d ae0000        	ldw	x,#L172
1557  0040 cd0000        	call	_assert_failed
1559  0043 5b04          	addw	sp,#4
1560  0045 81            	ret	
1584                     ; 320 void ADC2_StartConversion(void)
1584                     ; 321 {
1585                     .text:	section	.text,new
1586  0000               _ADC2_StartConversion:
1590                     ; 322     ADC2->CR1 |= ADC2_CR1_ADON;
1592  0000 72105401      	bset	21505,#0
1593                     ; 323 }
1596  0004 81            	ret	
1636                     ; 332 uint16_t ADC2_GetConversionValue(void)
1636                     ; 333 {
1637                     .text:	section	.text,new
1638  0000               _ADC2_GetConversionValue:
1640  0000 5205          	subw	sp,#5
1641       00000005      OFST:	set	5
1644                     ; 335     uint16_t temph = 0;
1646                     ; 336     uint8_t templ = 0;
1648                     ; 338     if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
1650  0002 720754020e    	btjf	21506,#3,L135
1651                     ; 341         templ = ADC2->DRL;
1653  0007 c65405        	ld	a,21509
1654  000a 6b03          	ld	(OFST-2,sp),a
1655                     ; 343         temph = ADC2->DRH;
1657  000c c65404        	ld	a,21508
1658  000f 97            	ld	xl,a
1659                     ; 345         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1661  0010 7b03          	ld	a,(OFST-2,sp)
1662  0012 02            	rlwa	x,a
1664  0013 201a          	jra	L335
1665  0015               L135:
1666                     ; 350         temph = ADC2->DRH;
1668  0015 c65404        	ld	a,21508
1669  0018 97            	ld	xl,a
1670                     ; 352         templ = ADC2->DRL;
1672  0019 c65405        	ld	a,21509
1673  001c 6b03          	ld	(OFST-2,sp),a
1674                     ; 354         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1676  001e 4f            	clr	a
1677  001f 02            	rlwa	x,a
1678  0020 1f01          	ldw	(OFST-4,sp),x
1679  0022 7b03          	ld	a,(OFST-2,sp)
1680  0024 97            	ld	xl,a
1681  0025 a640          	ld	a,#64
1682  0027 42            	mul	x,a
1683  0028 01            	rrwa	x,a
1684  0029 1a02          	or	a,(OFST-3,sp)
1685  002b 01            	rrwa	x,a
1686  002c 1a01          	or	a,(OFST-4,sp)
1687  002e 01            	rrwa	x,a
1688  002f               L335:
1689                     ; 357     return ((uint16_t)temph);
1693  002f 5b05          	addw	sp,#5
1694  0031 81            	ret	
1738                     ; 366 FlagStatus ADC2_GetFlagStatus(void)
1738                     ; 367 {
1739                     .text:	section	.text,new
1740  0000               _ADC2_GetFlagStatus:
1744                     ; 369     return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
1746  0000 c65400        	ld	a,21504
1747  0003 a480          	and	a,#128
1750  0005 81            	ret	
1773                     ; 378 void ADC2_ClearFlag(void)
1773                     ; 379 {
1774                     .text:	section	.text,new
1775  0000               _ADC2_ClearFlag:
1779                     ; 380     ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
1781  0000 721f5400      	bres	21504,#7
1782                     ; 381 }
1785  0004 81            	ret	
1809                     ; 389 ITStatus ADC2_GetITStatus(void)
1809                     ; 390 {
1810                     .text:	section	.text,new
1811  0000               _ADC2_GetITStatus:
1815                     ; 391     return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
1817  0000 c65400        	ld	a,21504
1818  0003 a480          	and	a,#128
1821  0005 81            	ret	
1845                     ; 399 void ADC2_ClearITPendingBit(void)
1845                     ; 400 {
1846                     .text:	section	.text,new
1847  0000               _ADC2_ClearITPendingBit:
1851                     ; 401     ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
1853  0000 721f5400      	bres	21504,#7
1854                     ; 402 }
1857  0004 81            	ret	
1870                     	xdef	_ADC2_ClearITPendingBit
1871                     	xdef	_ADC2_GetITStatus
1872                     	xdef	_ADC2_ClearFlag
1873                     	xdef	_ADC2_GetFlagStatus
1874                     	xdef	_ADC2_GetConversionValue
1875                     	xdef	_ADC2_StartConversion
1876                     	xdef	_ADC2_ExternalTriggerConfig
1877                     	xdef	_ADC2_ConversionConfig
1878                     	xdef	_ADC2_SchmittTriggerConfig
1879                     	xdef	_ADC2_PrescalerConfig
1880                     	xdef	_ADC2_ITConfig
1881                     	xdef	_ADC2_Cmd
1882                     	xdef	_ADC2_Init
1883                     	xdef	_ADC2_DeInit
1884                     	xref	_assert_failed
1885                     .const:	section	.text
1886  0000               L172:
1887  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1888  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1889  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1890  0036 5f616463322e  	dc.b	"_adc2.c",0
1910                     	end
