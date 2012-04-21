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
 233                     ; 121 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 233                     ; 122 {
 234                     	switch	.text
 235  0006               f_EXTI_PORTB_IRQHandler:
 239                     ; 126 }
 242  0006 80            	iret
 265                     ; 133 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 265                     ; 134 {
 266                     	switch	.text
 267  0007               f_EXTI_PORTC_IRQHandler:
 271                     ; 138 }
 274  0007 80            	iret
 297                     ; 145 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 297                     ; 146 {
 298                     	switch	.text
 299  0008               f_EXTI_PORTD_IRQHandler:
 303                     ; 150 }
 306  0008 80            	iret
 329                     ; 157 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 329                     ; 158 {
 330                     	switch	.text
 331  0009               f_EXTI_PORTE_IRQHandler:
 335                     ; 162 }
 338  0009 80            	iret
 360                     ; 184  INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
 360                     ; 185  {
 361                     	switch	.text
 362  000a               f_CAN_RX_IRQHandler:
 366                     ; 189  }
 369  000a 80            	iret
 391                     ; 196  INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
 391                     ; 197  {
 392                     	switch	.text
 393  000b               f_CAN_TX_IRQHandler:
 397                     ; 201  }
 400  000b 80            	iret
 422                     ; 209 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 422                     ; 210 {
 423                     	switch	.text
 424  000c               f_SPI_IRQHandler:
 428                     ; 214 }
 431  000c 80            	iret
 454                     ; 221 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 454                     ; 222 {
 455                     	switch	.text
 456  000d               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 460                     ; 226 }
 463  000d 80            	iret
 486                     ; 233 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 486                     ; 234 {
 487                     	switch	.text
 488  000e               f_TIM1_CAP_COM_IRQHandler:
 492                     ; 238 }
 495  000e 80            	iret
 518                     ; 271  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 518                     ; 272  {
 519                     	switch	.text
 520  000f               f_TIM2_UPD_OVF_BRK_IRQHandler:
 524                     ; 276  }
 527  000f 80            	iret
 550                     ; 283  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 550                     ; 284  {
 551                     	switch	.text
 552  0010               f_TIM2_CAP_COM_IRQHandler:
 556                     ; 288  }
 559  0010 80            	iret
 582                     ; 298  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 582                     ; 299  {
 583                     	switch	.text
 584  0011               f_TIM3_UPD_OVF_BRK_IRQHandler:
 588                     ; 303  }
 591  0011 80            	iret
 614                     ; 310  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 614                     ; 311  {
 615                     	switch	.text
 616  0012               f_TIM3_CAP_COM_IRQHandler:
 620                     ; 315  }
 623  0012 80            	iret
 646                     ; 325  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 646                     ; 326  {
 647                     	switch	.text
 648  0013               f_UART1_TX_IRQHandler:
 652                     ; 330  }
 655  0013 80            	iret
 678                     ; 337  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 678                     ; 338  {
 679                     	switch	.text
 680  0014               f_UART1_RX_IRQHandler:
 684                     ; 342  }
 687  0014 80            	iret
 709                     ; 350 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 709                     ; 351 {
 710                     	switch	.text
 711  0015               f_I2C_IRQHandler:
 715                     ; 355 }
 718  0015 80            	iret
 741                     ; 389  INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
 741                     ; 390  {
 742                     	switch	.text
 743  0016               f_UART3_TX_IRQHandler:
 747                     ; 394  }
 750  0016 80            	iret
 773                     ; 401  INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
 773                     ; 402  {
 774                     	switch	.text
 775  0017               f_UART3_RX_IRQHandler:
 779                     ; 406  }
 782  0017 80            	iret
 804                     ; 415  INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
 804                     ; 416  {
 805                     	switch	.text
 806  0018               f_ADC2_IRQHandler:
 810                     ; 420  }
 813  0018 80            	iret
 836                     ; 455  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 836                     ; 456  {
 837                     	switch	.text
 838  0019               f_TIM4_UPD_OVF_IRQHandler:
 842                     ; 460  }
 845  0019 80            	iret
 868                     ; 468 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 868                     ; 469 {
 869                     	switch	.text
 870  001a               f_EEPROM_EEC_IRQHandler:
 874                     ; 473 }
 877  001a 80            	iret
 889                     	xdef	f_EEPROM_EEC_IRQHandler
 890                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 891                     	xdef	f_ADC2_IRQHandler
 892                     	xdef	f_UART3_TX_IRQHandler
 893                     	xdef	f_UART3_RX_IRQHandler
 894                     	xdef	f_I2C_IRQHandler
 895                     	xdef	f_UART1_RX_IRQHandler
 896                     	xdef	f_UART1_TX_IRQHandler
 897                     	xdef	f_TIM3_CAP_COM_IRQHandler
 898                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 899                     	xdef	f_TIM2_CAP_COM_IRQHandler
 900                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 901                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 902                     	xdef	f_TIM1_CAP_COM_IRQHandler
 903                     	xdef	f_SPI_IRQHandler
 904                     	xdef	f_CAN_TX_IRQHandler
 905                     	xdef	f_CAN_RX_IRQHandler
 906                     	xdef	f_EXTI_PORTE_IRQHandler
 907                     	xdef	f_EXTI_PORTD_IRQHandler
 908                     	xdef	f_EXTI_PORTC_IRQHandler
 909                     	xdef	f_EXTI_PORTB_IRQHandler
 910                     	xdef	f_EXTI_PORTA_IRQHandler
 911                     	xdef	f_CLK_IRQHandler
 912                     	xdef	f_AWU_IRQHandler
 913                     	xdef	f_TLI_IRQHandler
 914                     	xdef	f_TRAP_IRQHandler
 915                     	xdef	f_NonHandledInterrupt
 934                     	end
