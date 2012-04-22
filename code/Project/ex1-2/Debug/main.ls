   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  48                     ; 33 void main(void)
  48                     ; 34 {
  50                     	switch	.text
  51  0000               _main:
  55                     ; 35 	clkInit();
  57  0000 ad1a          	call	_clkInit
  59                     ; 36 	gpioInit();
  61  0002 ad26          	call	_gpioInit
  63  0004               L12:
  64                     ; 40 		if (GPIO_ReadInputPin(GPIOB,GPIO_PIN_1) == RESET )
  66  0004 4b02          	push	#2
  67  0006 ae5005        	ldw	x,#20485
  68  0009 cd0000        	call	_GPIO_ReadInputPin
  70  000c 5b01          	addw	sp,#1
  71  000e 4d            	tnz	a
  72  000f 26f3          	jrne	L12
  73                     ; 41 			GPIO_WriteReverse(GPIOA,GPIO_PIN_1);
  75  0011 4b02          	push	#2
  76  0013 ae5000        	ldw	x,#20480
  77  0016 cd0000        	call	_GPIO_WriteReverse
  79  0019 84            	pop	a
  80  001a 20e8          	jra	L12
 106                     ; 46 void clkInit(void)
 106                     ; 47 {
 107                     	switch	.text
 108  001c               _clkInit:
 112                     ; 48 	CLK_DeInit();
 114  001c cd0000        	call	_CLK_DeInit
 116                     ; 49 	CLK_HSICmd(ENABLE);
 118  001f a601          	ld	a,#1
 119  0021 cd0000        	call	_CLK_HSICmd
 121                     ; 50 	CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV8);
 123  0024 a618          	ld	a,#24
 124  0026 cd0000        	call	_CLK_SYSCLKConfig
 126                     ; 51 }
 129  0029 81            	ret
 153                     ; 52 void gpioInit(void)
 153                     ; 53 {
 154                     	switch	.text
 155  002a               _gpioInit:
 159                     ; 54 	GPIO_Init(GPIOA,GPIO_PIN_1,GPIO_MODE_OUT_PP_LOW_FAST);
 161  002a 4be0          	push	#224
 162  002c 4b02          	push	#2
 163  002e ae5000        	ldw	x,#20480
 164  0031 cd0000        	call	_GPIO_Init
 166  0034 85            	popw	x
 167                     ; 55 	GPIO_Init(GPIOB,GPIO_PIN_1,GPIO_MODE_IN_FL_NO_IT);
 169  0035 4b00          	push	#0
 170  0037 4b02          	push	#2
 171  0039 ae5005        	ldw	x,#20485
 172  003c cd0000        	call	_GPIO_Init
 174  003f 85            	popw	x
 175                     ; 56 }
 178  0040 81            	ret
 212                     ; 57 void delay(u16 count)
 212                     ; 58 {
 213                     	switch	.text
 214  0041               _delay:
 216  0041 89            	pushw	x
 217       00000000      OFST:	set	0
 220  0042 2007          	jra	L76
 221  0044               L56:
 222                     ; 60 		count--;
 224  0044 1e01          	ldw	x,(OFST+1,sp)
 225  0046 1d0001        	subw	x,#1
 226  0049 1f01          	ldw	(OFST+1,sp),x
 227  004b               L76:
 228                     ; 59 	while (count != 0)
 230  004b 1e01          	ldw	x,(OFST+1,sp)
 231  004d 26f5          	jrne	L56
 232                     ; 61 }
 235  004f 85            	popw	x
 236  0050 81            	ret
 271                     ; 74 void assert_failed(u8* file, u32 line)
 271                     ; 75 { 
 272                     	switch	.text
 273  0051               _assert_failed:
 277  0051               L111:
 278  0051 20fe          	jra	L111
 291                     	xdef	_main
 292                     	xdef	_delay
 293                     	xdef	_gpioInit
 294                     	xdef	_clkInit
 295                     	xdef	_assert_failed
 296                     	xref	_GPIO_ReadInputPin
 297                     	xref	_GPIO_WriteReverse
 298                     	xref	_GPIO_Init
 299                     	xref	_CLK_SYSCLKConfig
 300                     	xref	_CLK_HSICmd
 301                     	xref	_CLK_DeInit
 320                     	end
