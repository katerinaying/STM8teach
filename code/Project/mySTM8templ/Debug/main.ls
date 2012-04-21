   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
  44                     ; 30 void main(void)
  44                     ; 31 {
  46                     	switch	.text
  47  0000               _main:
  51  0000               L12:
  52  0000 20fe          	jra	L12
  87                     ; 48 void assert_failed(u8* file, u32 line)
  87                     ; 49 { 
  88                     	switch	.text
  89  0002               _assert_failed:
  93  0002               L34:
  94  0002 20fe          	jra	L34
 107                     	xdef	_main
 108                     	xdef	_assert_failed
 127                     	end
