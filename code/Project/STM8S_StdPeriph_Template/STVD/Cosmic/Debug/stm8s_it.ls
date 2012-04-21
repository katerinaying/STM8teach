   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  51                     ; 47 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  51                     ; 48 {
  52                     .text:	section	.text,new
  53  0000               f_NonHandledInterrupt:
  57                     ; 52 }
  60  0000 80            	iret	
  82                     ; 60 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  82                     ; 61 {
  83                     .text:	section	.text,new
  84  0000               f_TRAP_IRQHandler:
  88                     ; 65 }
  91  0000 80            	iret	
 113                     ; 72 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 113                     ; 73 
 113                     ; 74 {
 114                     .text:	section	.text,new
 115  0000               f_TLI_IRQHandler:
 119                     ; 78 }
 122  0000 80            	iret	
 144                     ; 85 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 144                     ; 86 {
 145                     .text:	section	.text,new
 146  0000               f_AWU_IRQHandler:
 150                     ; 90 }
 153  0000 80            	iret	
 175                     ; 97 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 175                     ; 98 {
 176                     .text:	section	.text,new
 177  0000               f_CLK_IRQHandler:
 181                     ; 102 }
 184  0000 80            	iret	
 207                     ; 109 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 207                     ; 110 {
 208                     .text:	section	.text,new
 209  0000               f_EXTI_PORTA_IRQHandler:
 213                     ; 114 }
 216  0000 80            	iret	
 239                     ; 121 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 239                     ; 122 {
 240                     .text:	section	.text,new
 241  0000               f_EXTI_PORTB_IRQHandler:
 245                     ; 126 }
 248  0000 80            	iret	
 271                     ; 133 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 271                     ; 134 {
 272                     .text:	section	.text,new
 273  0000               f_EXTI_PORTC_IRQHandler:
 277                     ; 138 }
 280  0000 80            	iret	
 303                     ; 145 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 303                     ; 146 {
 304                     .text:	section	.text,new
 305  0000               f_EXTI_PORTD_IRQHandler:
 309                     ; 150 }
 312  0000 80            	iret	
 335                     ; 157 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 335                     ; 158 {
 336                     .text:	section	.text,new
 337  0000               f_EXTI_PORTE_IRQHandler:
 341                     ; 162 }
 344  0000 80            	iret	
 366                     ; 184  INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
 366                     ; 185  {
 367                     .text:	section	.text,new
 368  0000               f_CAN_RX_IRQHandler:
 372                     ; 189  }
 375  0000 80            	iret	
 397                     ; 196  INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
 397                     ; 197  {
 398                     .text:	section	.text,new
 399  0000               f_CAN_TX_IRQHandler:
 403                     ; 201  }
 406  0000 80            	iret	
 428                     ; 209 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 428                     ; 210 {
 429                     .text:	section	.text,new
 430  0000               f_SPI_IRQHandler:
 434                     ; 214 }
 437  0000 80            	iret	
 460                     ; 221 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 460                     ; 222 {
 461                     .text:	section	.text,new
 462  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 466                     ; 226 }
 469  0000 80            	iret	
 492                     ; 233 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 492                     ; 234 {
 493                     .text:	section	.text,new
 494  0000               f_TIM1_CAP_COM_IRQHandler:
 498                     ; 238 }
 501  0000 80            	iret	
 524                     ; 271  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 524                     ; 272  {
 525                     .text:	section	.text,new
 526  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 530                     ; 276  }
 533  0000 80            	iret	
 556                     ; 283  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 556                     ; 284  {
 557                     .text:	section	.text,new
 558  0000               f_TIM2_CAP_COM_IRQHandler:
 562                     ; 288  }
 565  0000 80            	iret	
 588                     ; 298  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 588                     ; 299  {
 589                     .text:	section	.text,new
 590  0000               f_TIM3_UPD_OVF_BRK_IRQHandler:
 594                     ; 303  }
 597  0000 80            	iret	
 620                     ; 310  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 620                     ; 311  {
 621                     .text:	section	.text,new
 622  0000               f_TIM3_CAP_COM_IRQHandler:
 626                     ; 315  }
 629  0000 80            	iret	
 652                     ; 325  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 652                     ; 326  {
 653                     .text:	section	.text,new
 654  0000               f_UART1_TX_IRQHandler:
 658                     ; 330  }
 661  0000 80            	iret	
 684                     ; 337  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 684                     ; 338  {
 685                     .text:	section	.text,new
 686  0000               f_UART1_RX_IRQHandler:
 690                     ; 342  }
 693  0000 80            	iret	
 715                     ; 350 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 715                     ; 351 {
 716                     .text:	section	.text,new
 717  0000               f_I2C_IRQHandler:
 721                     ; 355 }
 724  0000 80            	iret	
 747                     ; 389  INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
 747                     ; 390  {
 748                     .text:	section	.text,new
 749  0000               f_UART3_TX_IRQHandler:
 753                     ; 394  }
 756  0000 80            	iret	
 779                     ; 401  INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
 779                     ; 402  {
 780                     .text:	section	.text,new
 781  0000               f_UART3_RX_IRQHandler:
 785                     ; 406  }
 788  0000 80            	iret	
 810                     ; 415  INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
 810                     ; 416  {
 811                     .text:	section	.text,new
 812  0000               f_ADC2_IRQHandler:
 816                     ; 420  }
 819  0000 80            	iret	
 842                     ; 455  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 842                     ; 456  {
 843                     .text:	section	.text,new
 844  0000               f_TIM4_UPD_OVF_IRQHandler:
 848                     ; 460  }
 851  0000 80            	iret	
 874                     ; 468 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 874                     ; 469 {
 875                     .text:	section	.text,new
 876  0000               f_EEPROM_EEC_IRQHandler:
 880                     ; 473 }
 883  0000 80            	iret	
 895                     	xdef	f_EEPROM_EEC_IRQHandler
 896                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 897                     	xdef	f_ADC2_IRQHandler
 898                     	xdef	f_UART3_TX_IRQHandler
 899                     	xdef	f_UART3_RX_IRQHandler
 900                     	xdef	f_I2C_IRQHandler
 901                     	xdef	f_UART1_RX_IRQHandler
 902                     	xdef	f_UART1_TX_IRQHandler
 903                     	xdef	f_TIM3_CAP_COM_IRQHandler
 904                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 905                     	xdef	f_TIM2_CAP_COM_IRQHandler
 906                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 907                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 908                     	xdef	f_TIM1_CAP_COM_IRQHandler
 909                     	xdef	f_SPI_IRQHandler
 910                     	xdef	f_CAN_TX_IRQHandler
 911                     	xdef	f_CAN_RX_IRQHandler
 912                     	xdef	f_EXTI_PORTE_IRQHandler
 913                     	xdef	f_EXTI_PORTD_IRQHandler
 914                     	xdef	f_EXTI_PORTC_IRQHandler
 915                     	xdef	f_EXTI_PORTB_IRQHandler
 916                     	xdef	f_EXTI_PORTA_IRQHandler
 917                     	xdef	f_CLK_IRQHandler
 918                     	xdef	f_AWU_IRQHandler
 919                     	xdef	f_TLI_IRQHandler
 920                     	xdef	f_TRAP_IRQHandler
 921                     	xdef	f_NonHandledInterrupt
 940                     	end
