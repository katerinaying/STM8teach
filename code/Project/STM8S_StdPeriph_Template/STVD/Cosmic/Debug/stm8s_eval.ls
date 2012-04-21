   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  22                     	switch	.data
  23  0000               _LED_PORT:
  24  0000 5023          	dc.w	20515
  25  0002 5023          	dc.w	20515
  26  0004 5023          	dc.w	20515
  27  0006 5023          	dc.w	20515
  28                     .const:	section	.text
  29  0000               _LED_PIN:
  30  0000 08            	dc.b	8
  31  0001 04            	dc.b	4
  32  0002 02            	dc.b	2
  33  0003 01            	dc.b	1
  34                     	switch	.data
  35  0008               _BUTTON_PORT:
  36  0008 500a          	dc.w	20490
  37  000a 5005          	dc.w	20485
  38  000c 5005          	dc.w	20485
  39  000e 5005          	dc.w	20485
  40  0010 5005          	dc.w	20485
  41  0012 500f          	dc.w	20495
  42                     	switch	.const
  43  0004               _BUTTON_PIN:
  44  0004 01            	dc.b	1
  45  0005 20            	dc.b	32
  46  0006 10            	dc.b	16
  47  0007 40            	dc.b	64
  48  0008 80            	dc.b	128
  49  0009 80            	dc.b	128
  50  000a               _BUTTON_EXTI:
  51  000a 02            	dc.b	2
  52  000b 01            	dc.b	1
  53  000c 01            	dc.b	1
  54  000d 01            	dc.b	1
  55  000e 01            	dc.b	1
  56  000f 03            	dc.b	3
 141                     ; 103 void STM_EVAL_LEDInit(Led_TypeDef Led)
 141                     ; 104 {
 143                     .text:	section	.text,new
 144  0000               _STM_EVAL_LEDInit:
 146  0000 88            	push	a
 147       00000000      OFST:	set	0
 150                     ; 106   GPIO_Init(LED_PORT[Led], (GPIO_Pin_TypeDef)LED_PIN[Led], GPIO_MODE_OUT_PP_HIGH_FAST);
 152  0001 4bf0          	push	#240
 153  0003 5f            	clrw	x
 154  0004 97            	ld	xl,a
 155  0005 d60000        	ld	a,(_LED_PIN,x)
 156  0008 88            	push	a
 157  0009 7b03          	ld	a,(OFST+3,sp)
 158  000b 5f            	clrw	x
 159  000c 97            	ld	xl,a
 160  000d 58            	sllw	x
 161  000e de0000        	ldw	x,(_LED_PORT,x)
 162  0011 cd0000        	call	_GPIO_Init
 164  0014 85            	popw	x
 165                     ; 107 }
 168  0015 84            	pop	a
 169  0016 81            	ret	
 206                     ; 119 void STM_EVAL_LEDOn(Led_TypeDef Led)
 206                     ; 120 {
 207                     .text:	section	.text,new
 208  0000               _STM_EVAL_LEDOn:
 210  0000 88            	push	a
 211       00000000      OFST:	set	0
 214                     ; 121   LED_PORT[Led]->ODR |= (uint8_t)LED_PIN[Led];
 216  0001 5f            	clrw	x
 217  0002 97            	ld	xl,a
 218  0003 58            	sllw	x
 219  0004 7b01          	ld	a,(OFST+1,sp)
 220  0006 de0000        	ldw	x,(_LED_PORT,x)
 221  0009 905f          	clrw	y
 222  000b 9097          	ld	yl,a
 223  000d f6            	ld	a,(x)
 224  000e 90da0000      	or	a,(_LED_PIN,y)
 225  0012 f7            	ld	(x),a
 226                     ; 122 }
 229  0013 84            	pop	a
 230  0014 81            	ret	
 267                     ; 134 void STM_EVAL_LEDOff(Led_TypeDef Led)
 267                     ; 135 {
 268                     .text:	section	.text,new
 269  0000               _STM_EVAL_LEDOff:
 271  0000 88            	push	a
 272       00000000      OFST:	set	0
 275                     ; 136   LED_PORT[Led]->ODR &= (uint8_t)~LED_PIN[Led];
 277  0001 5f            	clrw	x
 278  0002 97            	ld	xl,a
 279  0003 58            	sllw	x
 280  0004 7b01          	ld	a,(OFST+1,sp)
 281  0006 de0000        	ldw	x,(_LED_PORT,x)
 282  0009 905f          	clrw	y
 283  000b 9097          	ld	yl,a
 284  000d 90d60000      	ld	a,(_LED_PIN,y)
 285  0011 43            	cpl	a
 286  0012 f4            	and	a,(x)
 287  0013 f7            	ld	(x),a
 288                     ; 137 }
 291  0014 84            	pop	a
 292  0015 81            	ret	
 329                     ; 149 void STM_EVAL_LEDToggle(Led_TypeDef Led)
 329                     ; 150 {
 330                     .text:	section	.text,new
 331  0000               _STM_EVAL_LEDToggle:
 333  0000 88            	push	a
 334       00000000      OFST:	set	0
 337                     ; 151   LED_PORT[Led]->ODR ^= (uint8_t)LED_PIN[Led];
 339  0001 5f            	clrw	x
 340  0002 97            	ld	xl,a
 341  0003 58            	sllw	x
 342  0004 7b01          	ld	a,(OFST+1,sp)
 343  0006 de0000        	ldw	x,(_LED_PORT,x)
 344  0009 905f          	clrw	y
 345  000b 9097          	ld	yl,a
 346  000d f6            	ld	a,(x)
 347  000e 90d80000      	xor	a,(_LED_PIN,y)
 348  0012 f7            	ld	(x),a
 349                     ; 152 }
 352  0013 84            	pop	a
 353  0014 81            	ret	
 471                     ; 170 void STM_EVAL_PBInit(Button_TypeDef Button, ButtonMode_TypeDef Button_Mode)
 471                     ; 171 {
 472                     .text:	section	.text,new
 473  0000               _STM_EVAL_PBInit:
 475  0000 89            	pushw	x
 476       00000000      OFST:	set	0
 479                     ; 173   if (Button_Mode == BUTTON_MODE_EXTI)
 481  0001 9f            	ld	a,xl
 482  0002 4a            	dec	a
 483  0003 2626          	jrne	L171
 484                     ; 176     GPIO_Init(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button], GPIO_MODE_IN_FL_IT);
 486  0005 4b20          	push	#32
 487  0007 9e            	ld	a,xh
 488  0008 5f            	clrw	x
 489  0009 97            	ld	xl,a
 490  000a d60004        	ld	a,(_BUTTON_PIN,x)
 491  000d 88            	push	a
 492  000e 7b03          	ld	a,(OFST+3,sp)
 493  0010 5f            	clrw	x
 494  0011 97            	ld	xl,a
 495  0012 58            	sllw	x
 496  0013 de0008        	ldw	x,(_BUTTON_PORT,x)
 497  0016 cd0000        	call	_GPIO_Init
 499  0019 85            	popw	x
 500                     ; 177     EXTI_SetExtIntSensitivity((EXTI_Port_TypeDef)BUTTON_EXTI[Button], EXTI_SENSITIVITY_FALL_LOW);
 502  001a 5f            	clrw	x
 503  001b 7b01          	ld	a,(OFST+1,sp)
 504  001d 905f          	clrw	y
 505  001f 9097          	ld	yl,a
 506  0021 90d6000a      	ld	a,(_BUTTON_EXTI,y)
 507  0025 95            	ld	xh,a
 508  0026 cd0000        	call	_EXTI_SetExtIntSensitivity
 511  0029 2016          	jra	L371
 512  002b               L171:
 513                     ; 181     GPIO_Init(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button], GPIO_MODE_IN_FL_NO_IT);
 515  002b 4b00          	push	#0
 516  002d 7b02          	ld	a,(OFST+2,sp)
 517  002f 5f            	clrw	x
 518  0030 97            	ld	xl,a
 519  0031 d60004        	ld	a,(_BUTTON_PIN,x)
 520  0034 88            	push	a
 521  0035 7b03          	ld	a,(OFST+3,sp)
 522  0037 5f            	clrw	x
 523  0038 97            	ld	xl,a
 524  0039 58            	sllw	x
 525  003a de0008        	ldw	x,(_BUTTON_PORT,x)
 526  003d cd0000        	call	_GPIO_Init
 528  0040 85            	popw	x
 529  0041               L371:
 530                     ; 183 }
 533  0041 85            	popw	x
 534  0042 81            	ret	
 573                     ; 197 uint8_t STM_EVAL_PBGetState(Button_TypeDef Button)
 573                     ; 198 {
 574                     .text:	section	.text,new
 575  0000               _STM_EVAL_PBGetState:
 577  0000 88            	push	a
 578       00000000      OFST:	set	0
 581                     ; 199   return GPIO_ReadInputPin(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button]);
 583  0001 5f            	clrw	x
 584  0002 97            	ld	xl,a
 585  0003 d60004        	ld	a,(_BUTTON_PIN,x)
 586  0006 88            	push	a
 587  0007 7b02          	ld	a,(OFST+2,sp)
 588  0009 5f            	clrw	x
 589  000a 97            	ld	xl,a
 590  000b 58            	sllw	x
 591  000c de0008        	ldw	x,(_BUTTON_PORT,x)
 592  000f cd0000        	call	_GPIO_ReadInputPin
 594  0012 5b02          	addw	sp,#2
 597  0014 81            	ret	
 623                     ; 208 void SD_LowLevel_DeInit(void)
 623                     ; 209 {
 624                     .text:	section	.text,new
 625  0000               _SD_LowLevel_DeInit:
 629                     ; 210   SPI_Cmd(DISABLE); /*!< SD_SPI disable */
 631  0000 4f            	clr	a
 632  0001 cd0000        	call	_SPI_Cmd
 634                     ; 213   CLK_PeripheralClockConfig(SD_SPI_CLK, DISABLE);
 636  0004 ae0100        	ldw	x,#256
 637  0007 cd0000        	call	_CLK_PeripheralClockConfig
 639                     ; 216   GPIO_Init(SD_SPI_SCK_GPIO_PORT, SD_SPI_SCK_PIN, GPIO_MODE_IN_FL_NO_IT);
 641  000a 4b00          	push	#0
 642  000c 4b20          	push	#32
 643  000e ae500a        	ldw	x,#20490
 644  0011 cd0000        	call	_GPIO_Init
 646  0014 85            	popw	x
 647                     ; 219   GPIO_Init(SD_SPI_MISO_GPIO_PORT, SD_SPI_MISO_PIN, GPIO_MODE_IN_FL_NO_IT);
 649  0015 4b00          	push	#0
 650  0017 4b80          	push	#128
 651  0019 ae500a        	ldw	x,#20490
 652  001c cd0000        	call	_GPIO_Init
 654  001f 85            	popw	x
 655                     ; 222   GPIO_Init(SD_SPI_MOSI_GPIO_PORT, SD_SPI_MOSI_PIN, GPIO_MODE_IN_FL_NO_IT);
 657  0020 4b00          	push	#0
 658  0022 4b40          	push	#64
 659  0024 ae500a        	ldw	x,#20490
 660  0027 cd0000        	call	_GPIO_Init
 662  002a 85            	popw	x
 663                     ; 225   GPIO_Init(SD_CS_GPIO_PORT, SD_CS_PIN, GPIO_MODE_IN_FL_NO_IT);
 665  002b 4b00          	push	#0
 666  002d 4b20          	push	#32
 667  002f ae5014        	ldw	x,#20500
 668  0032 cd0000        	call	_GPIO_Init
 670  0035 85            	popw	x
 671                     ; 228   GPIO_Init(SD_DETECT_GPIO_PORT, SD_DETECT_PIN, GPIO_MODE_IN_FL_NO_IT);
 673  0036 4b00          	push	#0
 674  0038 4b10          	push	#16
 675  003a ae5014        	ldw	x,#20500
 676  003d cd0000        	call	_GPIO_Init
 678  0040 85            	popw	x
 679                     ; 229 }
 682  0041 81            	ret	
 710                     ; 236 void SD_LowLevel_Init(void)
 710                     ; 237 {
 711                     .text:	section	.text,new
 712  0000               _SD_LowLevel_Init:
 716                     ; 239   CLK_PeripheralClockConfig(SD_SPI_CLK, ENABLE);
 718  0000 ae0101        	ldw	x,#257
 719  0003 cd0000        	call	_CLK_PeripheralClockConfig
 721                     ; 242   GPIO_ExternalPullUpConfig(SD_SPI_SCK_GPIO_PORT, (GPIO_Pin_TypeDef)(SD_SPI_MISO_PIN | SD_SPI_MOSI_PIN | \
 721                     ; 243                             SD_SPI_SCK_PIN), ENABLE);
 723  0006 4b01          	push	#1
 724  0008 4be0          	push	#224
 725  000a ae500a        	ldw	x,#20490
 726  000d cd0000        	call	_GPIO_ExternalPullUpConfig
 728  0010 85            	popw	x
 729                     ; 246   SPI_Init( SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_4, SPI_MODE_MASTER,
 729                     ; 247            SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX,
 729                     ; 248            SPI_NSS_SOFT, 0x07);
 731  0011 4b07          	push	#7
 732  0013 4b02          	push	#2
 733  0015 4b00          	push	#0
 734  0017 4b01          	push	#1
 735  0019 4b02          	push	#2
 736  001b 4b04          	push	#4
 737  001d ae0008        	ldw	x,#8
 738  0020 cd0000        	call	_SPI_Init
 740  0023 5b06          	addw	sp,#6
 741                     ; 252   SPI_Cmd( ENABLE);
 743  0025 a601          	ld	a,#1
 744  0027 cd0000        	call	_SPI_Cmd
 746                     ; 255   GPIO_Init(SD_CS_GPIO_PORT, SD_CS_PIN, GPIO_MODE_OUT_PP_HIGH_SLOW);
 748  002a 4bd0          	push	#208
 749  002c 4b20          	push	#32
 750  002e ae5014        	ldw	x,#20500
 751  0031 cd0000        	call	_GPIO_Init
 753  0034 85            	popw	x
 754                     ; 256 }
 757  0035 81            	ret	
 785                     ; 263 void sEE_LowLevel_DeInit(void)
 785                     ; 264 {
 786                     .text:	section	.text,new
 787  0000               _sEE_LowLevel_DeInit:
 791                     ; 266   I2C_Cmd(DISABLE);
 793  0000 4f            	clr	a
 794  0001 cd0000        	call	_I2C_Cmd
 796                     ; 269   I2C_DeInit();
 798  0004 cd0000        	call	_I2C_DeInit
 800                     ; 272   CLK_PeripheralClockConfig(sEE_I2C_CLK, DISABLE);
 802  0007 5f            	clrw	x
 803  0008 cd0000        	call	_CLK_PeripheralClockConfig
 805                     ; 276   GPIO_Init(sEE_I2C_SCL_GPIO_PORT, sEE_I2C_SCL_PIN, GPIO_MODE_IN_PU_NO_IT);
 807  000b 4b40          	push	#64
 808  000d 4b02          	push	#2
 809  000f ae5014        	ldw	x,#20500
 810  0012 cd0000        	call	_GPIO_Init
 812  0015 85            	popw	x
 813                     ; 279   GPIO_Init(sEE_I2C_SDA_GPIO_PORT, sEE_I2C_SDA_PIN, GPIO_MODE_IN_PU_NO_IT);
 815  0016 4b40          	push	#64
 816  0018 4b04          	push	#4
 817  001a ae5014        	ldw	x,#20500
 818  001d cd0000        	call	_GPIO_Init
 820  0020 85            	popw	x
 821                     ; 280 }
 824  0021 81            	ret	
 848                     ; 287 void sEE_LowLevel_Init(void)
 848                     ; 288 {
 849                     .text:	section	.text,new
 850  0000               _sEE_LowLevel_Init:
 854                     ; 290   CLK_PeripheralClockConfig(sEE_I2C_CLK, ENABLE);
 856  0000 ae0001        	ldw	x,#1
 858                     ; 292 }
 861  0003 cc0000        	jp	_CLK_PeripheralClockConfig
 984                     	xdef	_BUTTON_EXTI
 985                     	xdef	_BUTTON_PIN
 986                     	xdef	_BUTTON_PORT
 987                     	xdef	_LED_PIN
 988                     	xdef	_LED_PORT
 989                     	xdef	_sEE_LowLevel_Init
 990                     	xdef	_sEE_LowLevel_DeInit
 991                     	xdef	_SD_LowLevel_Init
 992                     	xdef	_SD_LowLevel_DeInit
 993                     	xdef	_STM_EVAL_PBGetState
 994                     	xdef	_STM_EVAL_PBInit
 995                     	xdef	_STM_EVAL_LEDToggle
 996                     	xdef	_STM_EVAL_LEDOff
 997                     	xdef	_STM_EVAL_LEDOn
 998                     	xdef	_STM_EVAL_LEDInit
 999                     	xref	_SPI_Cmd
1000                     	xref	_SPI_Init
1001                     	xref	_I2C_Cmd
1002                     	xref	_I2C_DeInit
1003                     	xref	_GPIO_ExternalPullUpConfig
1004                     	xref	_GPIO_ReadInputPin
1005                     	xref	_GPIO_Init
1006                     	xref	_EXTI_SetExtIntSensitivity
1007                     	xref	_CLK_PeripheralClockConfig
1026                     	end
