   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  48                     ; 33 void main(void)
  48                     ; 34 {
  50                     	switch	.text
  51  0000               _main:
  55                     ; 35 	clkInit();
  57  0000 ad13          	call	_clkInit
  59                     ; 36 	gpioInit();
  61  0002 ad1f          	call	_gpioInit
  63  0004               L12:
  64                     ; 40 		GPIO_WriteReverse(GPIOA,GPIO_PIN_1);
  66  0004 4b02          	push	#2
  67  0006 ae5000        	ldw	x,#20480
  68  0009 cd0000        	call	_GPIO_WriteReverse
  70  000c 84            	pop	a
  71                     ; 41 		delay_ms(1000);
  73  000d ae03e8        	ldw	x,#1000
  74  0010 cd0000        	call	_delay_ms
  77  0013 20ef          	jra	L12
 103                     ; 46 void clkInit(void)
 103                     ; 47 {
 104                     	switch	.text
 105  0015               _clkInit:
 109                     ; 48 	CLK_DeInit();
 111  0015 cd0000        	call	_CLK_DeInit
 113                     ; 49 	CLK_HSICmd(ENABLE);
 115  0018 a601          	ld	a,#1
 116  001a cd0000        	call	_CLK_HSICmd
 118                     ; 50 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV2);
 120  001d a608          	ld	a,#8
 121  001f cd0000        	call	_CLK_HSIPrescalerConfig
 123                     ; 51 }
 126  0022 81            	ret
 150                     ; 52 void gpioInit(void)
 150                     ; 53 {
 151                     	switch	.text
 152  0023               _gpioInit:
 156                     ; 54 	GPIO_Init(GPIOA,GPIO_PIN_1,GPIO_MODE_OUT_PP_LOW_FAST);
 158  0023 4be0          	push	#224
 159  0025 4b02          	push	#2
 160  0027 ae5000        	ldw	x,#20480
 161  002a cd0000        	call	_GPIO_Init
 163  002d 85            	popw	x
 164                     ; 55 }
 167  002e 81            	ret
 201                     ; 56 void delay(u16 count)
 201                     ; 57 {
 202                     	switch	.text
 203  002f               _delay:
 205  002f 89            	pushw	x
 206       00000000      OFST:	set	0
 209  0030 2007          	jra	L56
 210  0032               L36:
 211                     ; 59 		count--;
 213  0032 1e01          	ldw	x,(OFST+1,sp)
 214  0034 1d0001        	subw	x,#1
 215  0037 1f01          	ldw	(OFST+1,sp),x
 216  0039               L56:
 217                     ; 58 	while (count != 0)
 219  0039 1e01          	ldw	x,(OFST+1,sp)
 220  003b 26f5          	jrne	L36
 221                     ; 60 }
 224  003d 85            	popw	x
 225  003e 81            	ret
 260                     ; 73 void assert_failed(u8* file, u32 line)
 260                     ; 74 { 
 261                     	switch	.text
 262  003f               _assert_failed:
 266  003f               L701:
 267  003f 20fe          	jra	L701
 280                     	xdef	_delay
 281                     	xdef	_main
 282                     	xdef	_gpioInit
 283                     	xdef	_clkInit
 284                     	xref	_delay_ms
 285                     	xdef	_assert_failed
 286                     	xref	_GPIO_WriteReverse
 287                     	xref	_GPIO_Init
 288                     	xref	_CLK_HSIPrescalerConfig
 289                     	xref	_CLK_HSICmd
 290                     	xref	_CLK_DeInit
 309                     	end
