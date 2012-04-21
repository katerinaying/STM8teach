   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 43 void TIM4_DeInit(void)
  50                     ; 44 {
  52                     .text:	section	.text,new
  53  0000               _TIM4_DeInit:
  57                     ; 45     TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  59  0000 725f5340      	clr	21312
  60                     ; 46     TIM4->IER = TIM4_IER_RESET_VALUE;
  62  0004 725f5341      	clr	21313
  63                     ; 47     TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  65  0008 725f5344      	clr	21316
  66                     ; 48     TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  68  000c 725f5345      	clr	21317
  69                     ; 49     TIM4->ARR = TIM4_ARR_RESET_VALUE;
  71  0010 35ff5346      	mov	21318,#255
  72                     ; 50     TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  74  0014 725f5342      	clr	21314
  75                     ; 51 }
  78  0018 81            	ret	
 183                     ; 59 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 183                     ; 60 {
 184                     .text:	section	.text,new
 185  0000               _TIM4_TimeBaseInit:
 187  0000 89            	pushw	x
 188       00000000      OFST:	set	0
 191                     ; 62     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 193  0001 9e            	ld	a,xh
 194  0002 4d            	tnz	a
 195  0003 2730          	jreq	L41
 196  0005 9e            	ld	a,xh
 197  0006 4a            	dec	a
 198  0007 272c          	jreq	L41
 199  0009 9e            	ld	a,xh
 200  000a a102          	cp	a,#2
 201  000c 2727          	jreq	L41
 202  000e 9e            	ld	a,xh
 203  000f a103          	cp	a,#3
 204  0011 2722          	jreq	L41
 205  0013 9e            	ld	a,xh
 206  0014 a104          	cp	a,#4
 207  0016 271d          	jreq	L41
 208  0018 9e            	ld	a,xh
 209  0019 a105          	cp	a,#5
 210  001b 2718          	jreq	L41
 211  001d 9e            	ld	a,xh
 212  001e a106          	cp	a,#6
 213  0020 2713          	jreq	L41
 214  0022 9e            	ld	a,xh
 215  0023 a107          	cp	a,#7
 216  0025 270e          	jreq	L41
 217  0027 ae003e        	ldw	x,#62
 218  002a 89            	pushw	x
 219  002b 5f            	clrw	x
 220  002c 89            	pushw	x
 221  002d ae0000        	ldw	x,#L56
 222  0030 cd0000        	call	_assert_failed
 224  0033 5b04          	addw	sp,#4
 225  0035               L41:
 226                     ; 64     TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 228  0035 7b01          	ld	a,(OFST+1,sp)
 229  0037 c75345        	ld	21317,a
 230                     ; 66     TIM4->ARR = (uint8_t)(TIM4_Period);
 232  003a 7b02          	ld	a,(OFST+2,sp)
 233  003c c75346        	ld	21318,a
 234                     ; 67 }
 237  003f 85            	popw	x
 238  0040 81            	ret	
 294                     ; 77 void TIM4_Cmd(FunctionalState NewState)
 294                     ; 78 {
 295                     .text:	section	.text,new
 296  0000               _TIM4_Cmd:
 298  0000 88            	push	a
 299       00000000      OFST:	set	0
 302                     ; 80     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 304  0001 4d            	tnz	a
 305  0002 2711          	jreq	L62
 306  0004 4a            	dec	a
 307  0005 270e          	jreq	L62
 308  0007 ae0050        	ldw	x,#80
 309  000a 89            	pushw	x
 310  000b 5f            	clrw	x
 311  000c 89            	pushw	x
 312  000d ae0000        	ldw	x,#L56
 313  0010 cd0000        	call	_assert_failed
 315  0013 5b04          	addw	sp,#4
 316  0015               L62:
 317                     ; 83     if (NewState != DISABLE)
 319  0015 7b01          	ld	a,(OFST+1,sp)
 320  0017 2706          	jreq	L511
 321                     ; 85         TIM4->CR1 |= TIM4_CR1_CEN;
 323  0019 72105340      	bset	21312,#0
 325  001d 2004          	jra	L711
 326  001f               L511:
 327                     ; 89         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 329  001f 72115340      	bres	21312,#0
 330  0023               L711:
 331                     ; 91 }
 334  0023 84            	pop	a
 335  0024 81            	ret	
 394                     ; 103 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 394                     ; 104 {
 395                     .text:	section	.text,new
 396  0000               _TIM4_ITConfig:
 398  0000 89            	pushw	x
 399       00000000      OFST:	set	0
 402                     ; 106     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 404  0001 9e            	ld	a,xh
 405  0002 4a            	dec	a
 406  0003 2705          	jreq	L63
 407  0005 ae006a        	ldw	x,#106
 408  0008 ad22          	call	LC001
 409  000a               L63:
 410                     ; 107     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 412  000a 7b02          	ld	a,(OFST+2,sp)
 413  000c 2708          	jreq	L64
 414  000e 4a            	dec	a
 415  000f 2705          	jreq	L64
 416  0011 ae006b        	ldw	x,#107
 417  0014 ad16          	call	LC001
 418  0016               L64:
 419                     ; 109     if (NewState != DISABLE)
 421  0016 7b02          	ld	a,(OFST+2,sp)
 422  0018 2707          	jreq	L151
 423                     ; 112         TIM4->IER |= (uint8_t)TIM4_IT;
 425  001a c65341        	ld	a,21313
 426  001d 1a01          	or	a,(OFST+1,sp)
 428  001f 2006          	jra	L351
 429  0021               L151:
 430                     ; 117         TIM4->IER &= (uint8_t)(~TIM4_IT);
 432  0021 7b01          	ld	a,(OFST+1,sp)
 433  0023 43            	cpl	a
 434  0024 c45341        	and	a,21313
 435  0027               L351:
 436  0027 c75341        	ld	21313,a
 437                     ; 119 }
 440  002a 85            	popw	x
 441  002b 81            	ret	
 442  002c               LC001:
 443  002c 89            	pushw	x
 444  002d 5f            	clrw	x
 445  002e 89            	pushw	x
 446  002f ae0000        	ldw	x,#L56
 447  0032 cd0000        	call	_assert_failed
 449  0035 5b04          	addw	sp,#4
 450  0037 81            	ret	
 487                     ; 127 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 487                     ; 128 {
 488                     .text:	section	.text,new
 489  0000               _TIM4_UpdateDisableConfig:
 491  0000 88            	push	a
 492       00000000      OFST:	set	0
 495                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 497  0001 4d            	tnz	a
 498  0002 2711          	jreq	L06
 499  0004 4a            	dec	a
 500  0005 270e          	jreq	L06
 501  0007 ae0082        	ldw	x,#130
 502  000a 89            	pushw	x
 503  000b 5f            	clrw	x
 504  000c 89            	pushw	x
 505  000d ae0000        	ldw	x,#L56
 506  0010 cd0000        	call	_assert_failed
 508  0013 5b04          	addw	sp,#4
 509  0015               L06:
 510                     ; 133     if (NewState != DISABLE)
 512  0015 7b01          	ld	a,(OFST+1,sp)
 513  0017 2706          	jreq	L371
 514                     ; 135         TIM4->CR1 |= TIM4_CR1_UDIS;
 516  0019 72125340      	bset	21312,#1
 518  001d 2004          	jra	L571
 519  001f               L371:
 520                     ; 139         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 522  001f 72135340      	bres	21312,#1
 523  0023               L571:
 524                     ; 141 }
 527  0023 84            	pop	a
 528  0024 81            	ret	
 587                     ; 151 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 587                     ; 152 {
 588                     .text:	section	.text,new
 589  0000               _TIM4_UpdateRequestConfig:
 591  0000 88            	push	a
 592       00000000      OFST:	set	0
 595                     ; 154     assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 597  0001 4d            	tnz	a
 598  0002 2711          	jreq	L27
 599  0004 4a            	dec	a
 600  0005 270e          	jreq	L27
 601  0007 ae009a        	ldw	x,#154
 602  000a 89            	pushw	x
 603  000b 5f            	clrw	x
 604  000c 89            	pushw	x
 605  000d ae0000        	ldw	x,#L56
 606  0010 cd0000        	call	_assert_failed
 608  0013 5b04          	addw	sp,#4
 609  0015               L27:
 610                     ; 157     if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 612  0015 7b01          	ld	a,(OFST+1,sp)
 613  0017 2706          	jreq	L522
 614                     ; 159         TIM4->CR1 |= TIM4_CR1_URS;
 616  0019 72145340      	bset	21312,#2
 618  001d 2004          	jra	L722
 619  001f               L522:
 620                     ; 163         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 622  001f 72155340      	bres	21312,#2
 623  0023               L722:
 624                     ; 165 }
 627  0023 84            	pop	a
 628  0024 81            	ret	
 686                     ; 175 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 686                     ; 176 {
 687                     .text:	section	.text,new
 688  0000               _TIM4_SelectOnePulseMode:
 690  0000 88            	push	a
 691       00000000      OFST:	set	0
 694                     ; 178     assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 696  0001 a101          	cp	a,#1
 697  0003 2711          	jreq	L401
 698  0005 4d            	tnz	a
 699  0006 270e          	jreq	L401
 700  0008 ae00b2        	ldw	x,#178
 701  000b 89            	pushw	x
 702  000c 5f            	clrw	x
 703  000d 89            	pushw	x
 704  000e ae0000        	ldw	x,#L56
 705  0011 cd0000        	call	_assert_failed
 707  0014 5b04          	addw	sp,#4
 708  0016               L401:
 709                     ; 181     if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 711  0016 7b01          	ld	a,(OFST+1,sp)
 712  0018 2706          	jreq	L752
 713                     ; 183         TIM4->CR1 |= TIM4_CR1_OPM;
 715  001a 72165340      	bset	21312,#3
 717  001e 2004          	jra	L162
 718  0020               L752:
 719                     ; 187         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 721  0020 72175340      	bres	21312,#3
 722  0024               L162:
 723                     ; 190 }
 726  0024 84            	pop	a
 727  0025 81            	ret	
 796                     ; 212 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 796                     ; 213 {
 797                     .text:	section	.text,new
 798  0000               _TIM4_PrescalerConfig:
 800  0000 89            	pushw	x
 801       00000000      OFST:	set	0
 804                     ; 215     assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 806  0001 9f            	ld	a,xl
 807  0002 4d            	tnz	a
 808  0003 2709          	jreq	L611
 809  0005 9f            	ld	a,xl
 810  0006 4a            	dec	a
 811  0007 2705          	jreq	L611
 812  0009 ae00d7        	ldw	x,#215
 813  000c ad31          	call	LC002
 814  000e               L611:
 815                     ; 216     assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 817  000e 7b01          	ld	a,(OFST+1,sp)
 818  0010 2723          	jreq	L621
 819  0012 a101          	cp	a,#1
 820  0014 271f          	jreq	L621
 821  0016 a102          	cp	a,#2
 822  0018 271b          	jreq	L621
 823  001a a103          	cp	a,#3
 824  001c 2717          	jreq	L621
 825  001e a104          	cp	a,#4
 826  0020 2713          	jreq	L621
 827  0022 a105          	cp	a,#5
 828  0024 270f          	jreq	L621
 829  0026 a106          	cp	a,#6
 830  0028 270b          	jreq	L621
 831  002a a107          	cp	a,#7
 832  002c 2707          	jreq	L621
 833  002e ae00d8        	ldw	x,#216
 834  0031 ad0c          	call	LC002
 835  0033 7b01          	ld	a,(OFST+1,sp)
 836  0035               L621:
 837                     ; 219     TIM4->PSCR = (uint8_t)Prescaler;
 839  0035 c75345        	ld	21317,a
 840                     ; 222     TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 842  0038 7b02          	ld	a,(OFST+2,sp)
 843  003a c75343        	ld	21315,a
 844                     ; 223 }
 847  003d 85            	popw	x
 848  003e 81            	ret	
 849  003f               LC002:
 850  003f 89            	pushw	x
 851  0040 5f            	clrw	x
 852  0041 89            	pushw	x
 853  0042 ae0000        	ldw	x,#L56
 854  0045 cd0000        	call	_assert_failed
 856  0048 5b04          	addw	sp,#4
 857  004a 81            	ret	
 894                     ; 231 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 894                     ; 232 {
 895                     .text:	section	.text,new
 896  0000               _TIM4_ARRPreloadConfig:
 898  0000 88            	push	a
 899       00000000      OFST:	set	0
 902                     ; 234     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 904  0001 4d            	tnz	a
 905  0002 2711          	jreq	L041
 906  0004 4a            	dec	a
 907  0005 270e          	jreq	L041
 908  0007 ae00ea        	ldw	x,#234
 909  000a 89            	pushw	x
 910  000b 5f            	clrw	x
 911  000c 89            	pushw	x
 912  000d ae0000        	ldw	x,#L56
 913  0010 cd0000        	call	_assert_failed
 915  0013 5b04          	addw	sp,#4
 916  0015               L041:
 917                     ; 237     if (NewState != DISABLE)
 919  0015 7b01          	ld	a,(OFST+1,sp)
 920  0017 2706          	jreq	L333
 921                     ; 239         TIM4->CR1 |= TIM4_CR1_ARPE;
 923  0019 721e5340      	bset	21312,#7
 925  001d 2004          	jra	L533
 926  001f               L333:
 927                     ; 243         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 929  001f 721f5340      	bres	21312,#7
 930  0023               L533:
 931                     ; 245 }
 934  0023 84            	pop	a
 935  0024 81            	ret	
 985                     ; 254 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 985                     ; 255 {
 986                     .text:	section	.text,new
 987  0000               _TIM4_GenerateEvent:
 989  0000 88            	push	a
 990       00000000      OFST:	set	0
 993                     ; 257     assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 995  0001 4a            	dec	a
 996  0002 270e          	jreq	L051
 997  0004 ae0101        	ldw	x,#257
 998  0007 89            	pushw	x
 999  0008 5f            	clrw	x
1000  0009 89            	pushw	x
1001  000a ae0000        	ldw	x,#L56
1002  000d cd0000        	call	_assert_failed
1004  0010 5b04          	addw	sp,#4
1005  0012               L051:
1006                     ; 260     TIM4->EGR = (uint8_t)(TIM4_EventSource);
1008  0012 7b01          	ld	a,(OFST+1,sp)
1009  0014 c75343        	ld	21315,a
1010                     ; 261 }
1013  0017 84            	pop	a
1014  0018 81            	ret	
1046                     ; 270 void TIM4_SetCounter(uint8_t Counter)
1046                     ; 271 {
1047                     .text:	section	.text,new
1048  0000               _TIM4_SetCounter:
1052                     ; 273     TIM4->CNTR = (uint8_t)(Counter);
1054  0000 c75344        	ld	21316,a
1055                     ; 274 }
1058  0003 81            	ret	
1090                     ; 283 void TIM4_SetAutoreload(uint8_t Autoreload)
1090                     ; 284 {
1091                     .text:	section	.text,new
1092  0000               _TIM4_SetAutoreload:
1096                     ; 286     TIM4->ARR = (uint8_t)(Autoreload);
1098  0000 c75346        	ld	21318,a
1099                     ; 287 }
1102  0003 81            	ret	
1125                     ; 294 uint8_t TIM4_GetCounter(void)
1125                     ; 295 {
1126                     .text:	section	.text,new
1127  0000               _TIM4_GetCounter:
1131                     ; 297     return (uint8_t)(TIM4->CNTR);
1133  0000 c65344        	ld	a,21316
1136  0003 81            	ret	
1160                     ; 305 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1160                     ; 306 {
1161                     .text:	section	.text,new
1162  0000               _TIM4_GetPrescaler:
1166                     ; 308     return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1168  0000 c65345        	ld	a,21317
1171  0003 81            	ret	
1251                     ; 318 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1251                     ; 319 {
1252                     .text:	section	.text,new
1253  0000               _TIM4_GetFlagStatus:
1255  0000 88            	push	a
1256  0001 88            	push	a
1257       00000001      OFST:	set	1
1260                     ; 320     FlagStatus bitstatus = RESET;
1262                     ; 323     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1264  0002 4a            	dec	a
1265  0003 270e          	jreq	L071
1266  0005 ae0143        	ldw	x,#323
1267  0008 89            	pushw	x
1268  0009 5f            	clrw	x
1269  000a 89            	pushw	x
1270  000b ae0000        	ldw	x,#L56
1271  000e cd0000        	call	_assert_failed
1273  0011 5b04          	addw	sp,#4
1274  0013               L071:
1275                     ; 325   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1277  0013 c65342        	ld	a,21314
1278  0016 1502          	bcp	a,(OFST+1,sp)
1279  0018 2704          	jreq	L374
1280                     ; 327     bitstatus = SET;
1282  001a a601          	ld	a,#1
1284  001c 2001          	jra	L574
1285  001e               L374:
1286                     ; 331     bitstatus = RESET;
1288  001e 4f            	clr	a
1289  001f               L574:
1290                     ; 333   return ((FlagStatus)bitstatus);
1294  001f 85            	popw	x
1295  0020 81            	ret	
1331                     ; 343 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1331                     ; 344 {
1332                     .text:	section	.text,new
1333  0000               _TIM4_ClearFlag:
1335  0000 88            	push	a
1336       00000000      OFST:	set	0
1339                     ; 346     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1341  0001 4a            	dec	a
1342  0002 270e          	jreq	L002
1343  0004 ae015a        	ldw	x,#346
1344  0007 89            	pushw	x
1345  0008 5f            	clrw	x
1346  0009 89            	pushw	x
1347  000a ae0000        	ldw	x,#L56
1348  000d cd0000        	call	_assert_failed
1350  0010 5b04          	addw	sp,#4
1351  0012               L002:
1352                     ; 349     TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1354  0012 7b01          	ld	a,(OFST+1,sp)
1355  0014 43            	cpl	a
1356  0015 c75342        	ld	21314,a
1357                     ; 351 }
1360  0018 84            	pop	a
1361  0019 81            	ret	
1422                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1422                     ; 361 {
1423                     .text:	section	.text,new
1424  0000               _TIM4_GetITStatus:
1426  0000 88            	push	a
1427  0001 89            	pushw	x
1428       00000002      OFST:	set	2
1431                     ; 362     ITStatus bitstatus = RESET;
1433                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1437                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1439  0002 4a            	dec	a
1440  0003 270e          	jreq	L012
1441  0005 ae016f        	ldw	x,#367
1442  0008 89            	pushw	x
1443  0009 5f            	clrw	x
1444  000a 89            	pushw	x
1445  000b ae0000        	ldw	x,#L56
1446  000e cd0000        	call	_assert_failed
1448  0011 5b04          	addw	sp,#4
1449  0013               L012:
1450                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1452  0013 c65342        	ld	a,21314
1453  0016 1403          	and	a,(OFST+1,sp)
1454  0018 6b01          	ld	(OFST-1,sp),a
1455                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1457  001a c65341        	ld	a,21313
1458  001d 1403          	and	a,(OFST+1,sp)
1459  001f 6b02          	ld	(OFST+0,sp),a
1460                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1462  0021 7b01          	ld	a,(OFST-1,sp)
1463  0023 2708          	jreq	L345
1465  0025 7b02          	ld	a,(OFST+0,sp)
1466  0027 2704          	jreq	L345
1467                     ; 375     bitstatus = (ITStatus)SET;
1469  0029 a601          	ld	a,#1
1471  002b 2001          	jra	L545
1472  002d               L345:
1473                     ; 379     bitstatus = (ITStatus)RESET;
1475  002d 4f            	clr	a
1476  002e               L545:
1477                     ; 381   return ((ITStatus)bitstatus);
1481  002e 5b03          	addw	sp,#3
1482  0030 81            	ret	
1519                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1519                     ; 392 {
1520                     .text:	section	.text,new
1521  0000               _TIM4_ClearITPendingBit:
1523  0000 88            	push	a
1524       00000000      OFST:	set	0
1527                     ; 394     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1529  0001 4a            	dec	a
1530  0002 270e          	jreq	L022
1531  0004 ae018a        	ldw	x,#394
1532  0007 89            	pushw	x
1533  0008 5f            	clrw	x
1534  0009 89            	pushw	x
1535  000a ae0000        	ldw	x,#L56
1536  000d cd0000        	call	_assert_failed
1538  0010 5b04          	addw	sp,#4
1539  0012               L022:
1540                     ; 397     TIM4->SR1 = (uint8_t)(~TIM4_IT);
1542  0012 7b01          	ld	a,(OFST+1,sp)
1543  0014 43            	cpl	a
1544  0015 c75342        	ld	21314,a
1545                     ; 398 }
1548  0018 84            	pop	a
1549  0019 81            	ret	
1562                     	xdef	_TIM4_ClearITPendingBit
1563                     	xdef	_TIM4_GetITStatus
1564                     	xdef	_TIM4_ClearFlag
1565                     	xdef	_TIM4_GetFlagStatus
1566                     	xdef	_TIM4_GetPrescaler
1567                     	xdef	_TIM4_GetCounter
1568                     	xdef	_TIM4_SetAutoreload
1569                     	xdef	_TIM4_SetCounter
1570                     	xdef	_TIM4_GenerateEvent
1571                     	xdef	_TIM4_ARRPreloadConfig
1572                     	xdef	_TIM4_PrescalerConfig
1573                     	xdef	_TIM4_SelectOnePulseMode
1574                     	xdef	_TIM4_UpdateRequestConfig
1575                     	xdef	_TIM4_UpdateDisableConfig
1576                     	xdef	_TIM4_ITConfig
1577                     	xdef	_TIM4_Cmd
1578                     	xdef	_TIM4_TimeBaseInit
1579                     	xdef	_TIM4_DeInit
1580                     	xref	_assert_failed
1581                     .const:	section	.text
1582  0000               L56:
1583  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1584  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1585  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1586  0036 5f74696d342e  	dc.b	"_tim4.c",0
1606                     	end
