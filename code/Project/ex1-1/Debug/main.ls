   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  48                     ; 33 void main(void)
  48                     ; 34 {
  50                     	switch	.text
  51  0000               _main:
  55                     ; 35 	clkInit();
  57  0000 ad12          	call	_clkInit
  59                     ; 36 	gpioInit();
  61  0002 ad1e          	call	_gpioInit
  63  0004               L12:
  64                     ; 40 		GPIO_WriteReverse(GPIOA,GPIO_PIN_1);
  66  0004 4b02          	push	#2
  67  0006 ae5000        	ldw	x,#20480
  68  0009 cd0000        	call	_GPIO_WriteReverse
  70  000c 84            	pop	a
  71                     ; 41 		delay(0xFFFF);
  73  000d aeffff        	ldw	x,#65535
  74  0010 ad1c          	call	_delay
  77  0012 20f0          	jra	L12
 103                     ; 46 void clkInit(void)
 103                     ; 47 {
 104                     	switch	.text
 105  0014               _clkInit:
 109                     ; 48 	CLK_DeInit();
 111  0014 cd0000        	call	_CLK_DeInit
 113                     ; 49 	CLK_HSICmd(ENABLE);
 115  0017 a601          	ld	a,#1
 116  0019 cd0000        	call	_CLK_HSICmd
 118                     ; 50 	CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV8);
 120  001c a618          	ld	a,#24
 121  001e cd0000        	call	_CLK_SYSCLKConfig
 123                     ; 51 }
 126  0021 81            	ret
 150                     ; 52 void gpioInit(void)
 150                     ; 53 {
 151                     	switch	.text
 152  0022               _gpioInit:
 156                     ; 54 	GPIO_Init(GPIOA,GPIO_PIN_1,GPIO_MODE_OUT_PP_LOW_FAST);
 158  0022 4be0          	push	#224
 159  0024 4b02          	push	#2
 160  0026 ae5000        	ldw	x,#20480
 161  0029 cd0000        	call	_GPIO_Init
 163  002c 85            	popw	x
 164                     ; 55 }
 167  002d 81            	ret
 201                     ; 56 void delay(u16 count)
 201                     ; 57 {
 202                     	switch	.text
 203  002e               _delay:
 205  002e 89            	pushw	x
 206       00000000      OFST:	set	0
 209  002f 2007          	jra	L56
 210  0031               L36:
 211                     ; 59 		count--;
 213  0031 1e01          	ldw	x,(OFST+1,sp)
 214  0033 1d0001        	subw	x,#1
 215  0036 1f01          	ldw	(OFST+1,sp),x
 216  0038               L56:
 217                     ; 58 	while (count != 0)
 219  0038 1e01          	ldw	x,(OFST+1,sp)
 220  003a 26f5          	jrne	L36
 221                     ; 60 }
 224  003c 85            	popw	x
 225  003d 81            	ret
 260                     ; 73 void assert_failed(u8* file, u32 line)
 260                     ; 74 { 
 261                     	switch	.text
 262  003e               _assert_failed:
 266  003e               L701:
 267  003e 20fe          	jra	L701
 280                     	xdef	_main
 281                     	xdef	_delay
 282                     	xdef	_gpioInit
 283                     	xdef	_clkInit
 284                     	xdef	_assert_failed
 285                     	xref	_GPIO_WriteReverse
 286                     	xref	_GPIO_Init
 287                     	xref	_CLK_SYSCLKConfig
 288                     	xref	_CLK_HSICmd
 289                     	xref	_CLK_DeInit
 308                     	end
