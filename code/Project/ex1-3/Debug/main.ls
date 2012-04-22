   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  47                     ; 34 void main(void)
  47                     ; 35 {
  49                     	switch	.text
  50  0000               _main:
  54                     ; 36 	itcInit();
  56  0000 ad06          	call	_itcInit
  58                     ; 37 	clkInit();
  60  0002 ad0c          	call	_clkInit
  62                     ; 38 	gpioInit();
  64  0004 ad18          	call	_gpioInit
  66  0006               L12:
  68  0006 20fe          	jra	L12
  93                     ; 46 void itcInit(void)
  93                     ; 47 {
  94                     	switch	.text
  95  0008               _itcInit:
  99                     ; 48 	ITC_SetSoftwarePriority(ITC_IRQ_PORTB,ITC_PRIORITYLEVEL_1);
 101  0008 ae0401        	ldw	x,#1025
 102  000b cd0000        	call	_ITC_SetSoftwarePriority
 104                     ; 49 	enableInterrupts();
 107  000e 9a            rim
 109                     ; 50 }
 113  000f 81            	ret
 139                     ; 52 void clkInit(void)
 139                     ; 53 {
 140                     	switch	.text
 141  0010               _clkInit:
 145                     ; 54 	CLK_DeInit();
 147  0010 cd0000        	call	_CLK_DeInit
 149                     ; 55 	CLK_HSICmd(ENABLE);
 151  0013 a601          	ld	a,#1
 152  0015 cd0000        	call	_CLK_HSICmd
 154                     ; 56 	CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV8);
 156  0018 a618          	ld	a,#24
 157  001a cd0000        	call	_CLK_SYSCLKConfig
 159                     ; 57 }
 162  001d 81            	ret
 186                     ; 58 void gpioInit(void)
 186                     ; 59 {
 187                     	switch	.text
 188  001e               _gpioInit:
 192                     ; 60 	GPIO_Init(GPIOA,GPIO_PIN_1,GPIO_MODE_OUT_PP_LOW_FAST);
 194  001e 4be0          	push	#224
 195  0020 4b02          	push	#2
 196  0022 ae5000        	ldw	x,#20480
 197  0025 cd0000        	call	_GPIO_Init
 199  0028 85            	popw	x
 200                     ; 61 	GPIO_Init(GPIOB,GPIO_PIN_1,GPIO_MODE_IN_FL_IT);
 202  0029 4b20          	push	#32
 203  002b 4b02          	push	#2
 204  002d ae5005        	ldw	x,#20485
 205  0030 cd0000        	call	_GPIO_Init
 207  0033 85            	popw	x
 208                     ; 62 }
 211  0034 81            	ret
 245                     ; 63 void delay(u16 count)
 245                     ; 64 {
 246                     	switch	.text
 247  0035               _delay:
 249  0035 89            	pushw	x
 250       00000000      OFST:	set	0
 253  0036 2007          	jra	L57
 254  0038               L37:
 255                     ; 66 		count--;
 257  0038 1e01          	ldw	x,(OFST+1,sp)
 258  003a 1d0001        	subw	x,#1
 259  003d 1f01          	ldw	(OFST+1,sp),x
 260  003f               L57:
 261                     ; 65 	while (count != 0)
 263  003f 1e01          	ldw	x,(OFST+1,sp)
 264  0041 26f5          	jrne	L37
 265                     ; 67 }
 268  0043 85            	popw	x
 269  0044 81            	ret
 304                     ; 80 void assert_failed(u8* file, u32 line)
 304                     ; 81 { 
 305                     	switch	.text
 306  0045               _assert_failed:
 310  0045               L711:
 311  0045 20fe          	jra	L711
 324                     	xdef	_main
 325                     	xdef	_delay
 326                     	xdef	_gpioInit
 327                     	xdef	_clkInit
 328                     	xdef	_itcInit
 329                     	xdef	_assert_failed
 330                     	xref	_ITC_SetSoftwarePriority
 331                     	xref	_GPIO_Init
 332                     	xref	_CLK_SYSCLKConfig
 333                     	xref	_CLK_HSICmd
 334                     	xref	_CLK_DeInit
 353                     	end
