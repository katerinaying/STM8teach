   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  16                     .const:	section	.text
  17  0000               __vectab:
  18  0000 82            	dc.b	130
  20  0001 00            	dc.b	page(__stext)
  21  0002 0000          	dc.w	__stext
  22  0004 82            	dc.b	130
  24  0005 00            	dc.b	page(f_TRAP_IRQHandler)
  25  0006 0000          	dc.w	f_TRAP_IRQHandler
  26  0008 82            	dc.b	130
  28  0009 00            	dc.b	page(f_TLI_IRQHandler)
  29  000a 0000          	dc.w	f_TLI_IRQHandler
  30  000c 82            	dc.b	130
  32  000d 00            	dc.b	page(f_AWU_IRQHandler)
  33  000e 0000          	dc.w	f_AWU_IRQHandler
  34  0010 82            	dc.b	130
  36  0011 00            	dc.b	page(f_CLK_IRQHandler)
  37  0012 0000          	dc.w	f_CLK_IRQHandler
  38  0014 82            	dc.b	130
  40  0015 00            	dc.b	page(f_EXTI_PORTA_IRQHandler)
  41  0016 0000          	dc.w	f_EXTI_PORTA_IRQHandler
  42  0018 82            	dc.b	130
  44  0019 00            	dc.b	page(f_EXTI_PORTB_IRQHandler)
  45  001a 0000          	dc.w	f_EXTI_PORTB_IRQHandler
  46  001c 82            	dc.b	130
  48  001d 00            	dc.b	page(f_EXTI_PORTC_IRQHandler)
  49  001e 0000          	dc.w	f_EXTI_PORTC_IRQHandler
  50  0020 82            	dc.b	130
  52  0021 00            	dc.b	page(f_EXTI_PORTD_IRQHandler)
  53  0022 0000          	dc.w	f_EXTI_PORTD_IRQHandler
  54  0024 82            	dc.b	130
  56  0025 00            	dc.b	page(f_EXTI_PORTE_IRQHandler)
  57  0026 0000          	dc.w	f_EXTI_PORTE_IRQHandler
  58  0028 82            	dc.b	130
  60  0029 00            	dc.b	page(f_CAN_RX_IRQHandler)
  61  002a 0000          	dc.w	f_CAN_RX_IRQHandler
  62  002c 82            	dc.b	130
  64  002d 00            	dc.b	page(f_CAN_TX_IRQHandler)
  65  002e 0000          	dc.w	f_CAN_TX_IRQHandler
  66  0030 82            	dc.b	130
  68  0031 00            	dc.b	page(f_SPI_IRQHandler)
  69  0032 0000          	dc.w	f_SPI_IRQHandler
  70  0034 82            	dc.b	130
  72  0035 00            	dc.b	page(f_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
  73  0036 0000          	dc.w	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
  74  0038 82            	dc.b	130
  76  0039 00            	dc.b	page(f_TIM1_CAP_COM_IRQHandler)
  77  003a 0000          	dc.w	f_TIM1_CAP_COM_IRQHandler
  78  003c 82            	dc.b	130
  80  003d 00            	dc.b	page(f_TIM2_UPD_OVF_BRK_IRQHandler)
  81  003e 0000          	dc.w	f_TIM2_UPD_OVF_BRK_IRQHandler
  82  0040 82            	dc.b	130
  84  0041 00            	dc.b	page(f_TIM2_CAP_COM_IRQHandler)
  85  0042 0000          	dc.w	f_TIM2_CAP_COM_IRQHandler
  86  0044 82            	dc.b	130
  88  0045 00            	dc.b	page(f_TIM3_UPD_OVF_BRK_IRQHandler)
  89  0046 0000          	dc.w	f_TIM3_UPD_OVF_BRK_IRQHandler
  90  0048 82            	dc.b	130
  92  0049 00            	dc.b	page(f_TIM3_CAP_COM_IRQHandler)
  93  004a 0000          	dc.w	f_TIM3_CAP_COM_IRQHandler
  94  004c 82            	dc.b	130
  96  004d 00            	dc.b	page(f_UART1_TX_IRQHandler)
  97  004e 0000          	dc.w	f_UART1_TX_IRQHandler
  98  0050 82            	dc.b	130
 100  0051 00            	dc.b	page(f_UART1_RX_IRQHandler)
 101  0052 0000          	dc.w	f_UART1_RX_IRQHandler
 102  0054 82            	dc.b	130
 104  0055 00            	dc.b	page(f_I2C_IRQHandler)
 105  0056 0000          	dc.w	f_I2C_IRQHandler
 106  0058 82            	dc.b	130
 108  0059 00            	dc.b	page(f_UART3_TX_IRQHandler)
 109  005a 0000          	dc.w	f_UART3_TX_IRQHandler
 110  005c 82            	dc.b	130
 112  005d 00            	dc.b	page(f_UART3_RX_IRQHandler)
 113  005e 0000          	dc.w	f_UART3_RX_IRQHandler
 114  0060 82            	dc.b	130
 116  0061 00            	dc.b	page(f_ADC2_IRQHandler)
 117  0062 0000          	dc.w	f_ADC2_IRQHandler
 118  0064 82            	dc.b	130
 120  0065 00            	dc.b	page(f_TIM4_UPD_OVF_IRQHandler)
 121  0066 0000          	dc.w	f_TIM4_UPD_OVF_IRQHandler
 122  0068 82            	dc.b	130
 124  0069 00            	dc.b	page(f_EEPROM_EEC_IRQHandler)
 125  006a 0000          	dc.w	f_EEPROM_EEC_IRQHandler
 126  006c 82            	dc.b	130
 128  006d 00            	dc.b	page(f_NonHandledInterrupt)
 129  006e 0000          	dc.w	f_NonHandledInterrupt
 130  0070 82            	dc.b	130
 132  0071 00            	dc.b	page(f_NonHandledInterrupt)
 133  0072 0000          	dc.w	f_NonHandledInterrupt
 134  0074 82            	dc.b	130
 136  0075 00            	dc.b	page(f_NonHandledInterrupt)
 137  0076 0000          	dc.w	f_NonHandledInterrupt
 138  0078 82            	dc.b	130
 140  0079 00            	dc.b	page(f_NonHandledInterrupt)
 141  007a 0000          	dc.w	f_NonHandledInterrupt
 142  007c 82            	dc.b	130
 144  007d 00            	dc.b	page(f_NonHandledInterrupt)
 145  007e 0000          	dc.w	f_NonHandledInterrupt
 205                     	xdef	__vectab
 206                     	xref	f_EEPROM_EEC_IRQHandler
 207                     	xref	f_TIM4_UPD_OVF_IRQHandler
 208                     	xref	f_ADC2_IRQHandler
 209                     	xref	f_UART3_TX_IRQHandler
 210                     	xref	f_UART3_RX_IRQHandler
 211                     	xref	f_I2C_IRQHandler
 212                     	xref	f_UART1_RX_IRQHandler
 213                     	xref	f_UART1_TX_IRQHandler
 214                     	xref	f_TIM3_CAP_COM_IRQHandler
 215                     	xref	f_TIM3_UPD_OVF_BRK_IRQHandler
 216                     	xref	f_TIM2_CAP_COM_IRQHandler
 217                     	xref	f_TIM2_UPD_OVF_BRK_IRQHandler
 218                     	xref	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 219                     	xref	f_TIM1_CAP_COM_IRQHandler
 220                     	xref	f_SPI_IRQHandler
 221                     	xref	f_CAN_TX_IRQHandler
 222                     	xref	f_CAN_RX_IRQHandler
 223                     	xref	f_EXTI_PORTE_IRQHandler
 224                     	xref	f_EXTI_PORTD_IRQHandler
 225                     	xref	f_EXTI_PORTC_IRQHandler
 226                     	xref	f_EXTI_PORTB_IRQHandler
 227                     	xref	f_EXTI_PORTA_IRQHandler
 228                     	xref	f_CLK_IRQHandler
 229                     	xref	f_AWU_IRQHandler
 230                     	xref	f_TLI_IRQHandler
 231                     	xref	f_TRAP_IRQHandler
 232                     	xref	f_NonHandledInterrupt
 233                     	xref	__stext
 252                     	end
