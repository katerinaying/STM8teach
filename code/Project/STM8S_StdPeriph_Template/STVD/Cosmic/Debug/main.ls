   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  50                     ; 30 void main(void)
  50                     ; 31 {
  52                     .text:	section	.text,new
  53  0000               _main:
  57  0000               L12:
  58  0000 20fe          	jra	L12
  93                     ; 48 void assert_failed(u8* file, u32 line)
  93                     ; 49 { 
  94                     .text:	section	.text,new
  95  0000               _assert_failed:
  99  0000               L34:
 100  0000 20fe          	jra	L34
 113                     	xdef	_main
 114                     	xdef	_assert_failed
 133                     	end
