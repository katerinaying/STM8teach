   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  45                     ; 47 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  45                     ; 48 {
  46                     	switch	.text
  47  0000               f_NonHandledInterrupt:
  51                     ; 52 }
  54  0000 80            	iret
  76                     ; 60 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  76                     ; 61 {
  77                     	switch	.text
  78  0001               f_TRAP_IRQHandler:
  82                     ; 65 }
  85  0001 80            	iret
 107                     ; 72 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 107                     ; 73 
 107                     ; 74 {
 108                     	switch	.text
 109  0002               f_TLI_IRQHandler:
 113                     ; 78 }
 116  0002 80            	iret
 138                     ; 85 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 138                     ; 86 {
 139                     	switch	.text
 140  0003               f_AWU_IRQHandler:
 144                     ; 90 }
 147  0003 80            	iret
 169                     ; 97 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 169                     ; 98 {
 170                     	switch	.text
 171  0004               f_CLK_IRQHandler:
 175                     ; 102 }
 178  0004 80            	iret
 201                     ; 109 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 201                     ; 110 {
 202                     	switch	.text
 203  0005               f_EXTI_PORTA_IRQHandler:
 207                     ; 114 }
 210  0005 80            	iret
 235                     ; 121 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 235                     ; 122 {
 236                     	switch	.text
 237  0006               f_EXTI_PORTB_IRQHandler:
 239  0006 8a            	push	cc
 240  0007 84            	pop	a
 241  0008 a4bf          	and	a,#191
 242  000a 88            	push	a
 243  000b 86            	pop	cc
 244  000c 3b0002        	push	c_x+2
 245  000f be00          	ldw	x,c_x
 246  0011 89            	pushw	x
 247  0012 3b0002        	push	c_y+2
 248  0015 be00          	ldw	x,c_y
 249  0017 89            	pushw	x
 252                     ; 126 	if (GPIO_ReadInputPin(GPIOB,GPIO_PIN_1) == RESET )
 254  0018 4b02          	push	#2
 255  001a ae5005        	ldw	x,#20485
 256  001d cd0000        	call	_GPIO_ReadInputPin
 258  0020 5b01          	addw	sp,#1
 259  0022 4d            	tnz	a
 260  0023 2609          	jrne	L101
 261                     ; 127 		GPIO_WriteReverse(GPIOA,GPIO_PIN_1);
 263  0025 4b02          	push	#2
 264  0027 ae5000        	ldw	x,#20480
 265  002a cd0000        	call	_GPIO_WriteReverse
 267  002d 84            	pop	a
 268  002e               L101:
 269                     ; 128 }
 272  002e 85            	popw	x
 273  002f bf00          	ldw	c_y,x
 274  0031 320002        	pop	c_y+2
 275  0034 85            	popw	x
 276  0035 bf00          	ldw	c_x,x
 277  0037 320002        	pop	c_x+2
 278  003a 80            	iret
 301                     ; 135 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 301                     ; 136 {
 302                     	switch	.text
 303  003b               f_EXTI_PORTC_IRQHandler:
 307                     ; 140 }
 310  003b 80            	iret
 333                     ; 147 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 333                     ; 148 {
 334                     	switch	.text
 335  003c               f_EXTI_PORTD_IRQHandler:
 339                     ; 152 }
 342  003c 80            	iret
 365                     ; 159 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 365                     ; 160 {
 366                     	switch	.text
 367  003d               f_EXTI_PORTE_IRQHandler:
 371                     ; 164 }
 374  003d 80            	iret
 396                     ; 186  INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
 396                     ; 187  {
 397                     	switch	.text
 398  003e               f_CAN_RX_IRQHandler:
 402                     ; 191  }
 405  003e 80            	iret
 427                     ; 198  INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
 427                     ; 199  {
 428                     	switch	.text
 429  003f               f_CAN_TX_IRQHandler:
 433                     ; 203  }
 436  003f 80            	iret
 458                     ; 211 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 458                     ; 212 {
 459                     	switch	.text
 460  0040               f_SPI_IRQHandler:
 464                     ; 216 }
 467  0040 80            	iret
 490                     ; 223 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 490                     ; 224 {
 491                     	switch	.text
 492  0041               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 496                     ; 228 }
 499  0041 80            	iret
 522                     ; 235 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 522                     ; 236 {
 523                     	switch	.text
 524  0042               f_TIM1_CAP_COM_IRQHandler:
 528                     ; 240 }
 531  0042 80            	iret
 554                     ; 273  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 554                     ; 274  {
 555                     	switch	.text
 556  0043               f_TIM2_UPD_OVF_BRK_IRQHandler:
 560                     ; 278  }
 563  0043 80            	iret
 586                     ; 285  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 586                     ; 286  {
 587                     	switch	.text
 588  0044               f_TIM2_CAP_COM_IRQHandler:
 592                     ; 290  }
 595  0044 80            	iret
 618                     ; 300  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 618                     ; 301  {
 619                     	switch	.text
 620  0045               f_TIM3_UPD_OVF_BRK_IRQHandler:
 624                     ; 305  }
 627  0045 80            	iret
 650                     ; 312  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 650                     ; 313  {
 651                     	switch	.text
 652  0046               f_TIM3_CAP_COM_IRQHandler:
 656                     ; 317  }
 659  0046 80            	iret
 682                     ; 327  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 682                     ; 328  {
 683                     	switch	.text
 684  0047               f_UART1_TX_IRQHandler:
 688                     ; 332  }
 691  0047 80            	iret
 714                     ; 339  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 714                     ; 340  {
 715                     	switch	.text
 716  0048               f_UART1_RX_IRQHandler:
 720                     ; 344  }
 723  0048 80            	iret
 745                     ; 352 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 745                     ; 353 {
 746                     	switch	.text
 747  0049               f_I2C_IRQHandler:
 751                     ; 357 }
 754  0049 80            	iret
 777                     ; 391  INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
 777                     ; 392  {
 778                     	switch	.text
 779  004a               f_UART3_TX_IRQHandler:
 783                     ; 396  }
 786  004a 80            	iret
 809                     ; 403  INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
 809                     ; 404  {
 810                     	switch	.text
 811  004b               f_UART3_RX_IRQHandler:
 815                     ; 408  }
 818  004b 80            	iret
 840                     ; 417  INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
 840                     ; 418  {
 841                     	switch	.text
 842  004c               f_ADC2_IRQHandler:
 846                     ; 422  }
 849  004c 80            	iret
 872                     ; 457  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 872                     ; 458  {
 873                     	switch	.text
 874  004d               f_TIM4_UPD_OVF_IRQHandler:
 878                     ; 462  }
 881  004d 80            	iret
 904                     ; 470 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 904                     ; 471 {
 905                     	switch	.text
 906  004e               f_EEPROM_EEC_IRQHandler:
 910                     ; 475 }
 913  004e 80            	iret
 925                     	xdef	f_EEPROM_EEC_IRQHandler
 926                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 927                     	xdef	f_ADC2_IRQHandler
 928                     	xdef	f_UART3_TX_IRQHandler
 929                     	xdef	f_UART3_RX_IRQHandler
 930                     	xdef	f_I2C_IRQHandler
 931                     	xdef	f_UART1_RX_IRQHandler
 932                     	xdef	f_UART1_TX_IRQHandler
 933                     	xdef	f_TIM3_CAP_COM_IRQHandler
 934                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 935                     	xdef	f_TIM2_CAP_COM_IRQHandler
 936                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 937                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 938                     	xdef	f_TIM1_CAP_COM_IRQHandler
 939                     	xdef	f_SPI_IRQHandler
 940                     	xdef	f_CAN_TX_IRQHandler
 941                     	xdef	f_CAN_RX_IRQHandler
 942                     	xdef	f_EXTI_PORTE_IRQHandler
 943                     	xdef	f_EXTI_PORTD_IRQHandler
 944                     	xdef	f_EXTI_PORTC_IRQHandler
 945                     	xdef	f_EXTI_PORTB_IRQHandler
 946                     	xdef	f_EXTI_PORTA_IRQHandler
 947                     	xdef	f_CLK_IRQHandler
 948                     	xdef	f_AWU_IRQHandler
 949                     	xdef	f_TLI_IRQHandler
 950                     	xdef	f_TRAP_IRQHandler
 951                     	xdef	f_NonHandledInterrupt
 952                     	xref	_GPIO_ReadInputPin
 953                     	xref	_GPIO_WriteReverse
 954                     	xref.b	c_x
 955                     	xref.b	c_y
 974                     	end
