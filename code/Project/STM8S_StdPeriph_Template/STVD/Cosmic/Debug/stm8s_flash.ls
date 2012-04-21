   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  83                     ; 81 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  83                     ; 82 {
  85                     .text:	section	.text,new
  86  0000               _FLASH_Unlock:
  88  0000 88            	push	a
  89       00000000      OFST:	set	0
  92                     ; 84     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  94  0001 a1fd          	cp	a,#253
  95  0003 2712          	jreq	L21
  96  0005 a1f7          	cp	a,#247
  97  0007 270e          	jreq	L21
  98  0009 ae0054        	ldw	x,#84
  99  000c 89            	pushw	x
 100  000d 5f            	clrw	x
 101  000e 89            	pushw	x
 102  000f ae0010        	ldw	x,#L73
 103  0012 cd0000        	call	_assert_failed
 105  0015 5b04          	addw	sp,#4
 106  0017               L21:
 107                     ; 87     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
 109  0017 7b01          	ld	a,(OFST+1,sp)
 110  0019 a1fd          	cp	a,#253
 111  001b 260a          	jrne	L14
 112                     ; 89         FLASH->PUKR = FLASH_RASS_KEY1;
 114  001d 35565062      	mov	20578,#86
 115                     ; 90         FLASH->PUKR = FLASH_RASS_KEY2;
 117  0021 35ae5062      	mov	20578,#174
 119  0025 2008          	jra	L34
 120  0027               L14:
 121                     ; 95         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 123  0027 35ae5064      	mov	20580,#174
 124                     ; 96         FLASH->DUKR = FLASH_RASS_KEY1;
 126  002b 35565064      	mov	20580,#86
 127  002f               L34:
 128                     ; 98 }
 131  002f 84            	pop	a
 132  0030 81            	ret	
 168                     ; 106 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 168                     ; 107 {
 169                     .text:	section	.text,new
 170  0000               _FLASH_Lock:
 172  0000 88            	push	a
 173       00000000      OFST:	set	0
 176                     ; 109     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 178  0001 a1fd          	cp	a,#253
 179  0003 2712          	jreq	L42
 180  0005 a1f7          	cp	a,#247
 181  0007 270e          	jreq	L42
 182  0009 ae006d        	ldw	x,#109
 183  000c 89            	pushw	x
 184  000d 5f            	clrw	x
 185  000e 89            	pushw	x
 186  000f ae0010        	ldw	x,#L73
 187  0012 cd0000        	call	_assert_failed
 189  0015 5b04          	addw	sp,#4
 190  0017               L42:
 191                     ; 112   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 193  0017 c6505f        	ld	a,20575
 194  001a 1401          	and	a,(OFST+1,sp)
 195  001c c7505f        	ld	20575,a
 196                     ; 113 }
 199  001f 84            	pop	a
 200  0020 81            	ret	
 223                     ; 120 void FLASH_DeInit(void)
 223                     ; 121 {
 224                     .text:	section	.text,new
 225  0000               _FLASH_DeInit:
 229                     ; 122     FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 231  0000 725f505a      	clr	20570
 232                     ; 123     FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 234  0004 725f505b      	clr	20571
 235                     ; 124     FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 237  0008 35ff505c      	mov	20572,#255
 238                     ; 125     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 240  000c 7217505f      	bres	20575,#3
 241                     ; 126     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 243  0010 7213505f      	bres	20575,#1
 244                     ; 127     (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 246  0014 c6505f        	ld	a,20575
 247                     ; 128 }
 250  0017 81            	ret	
 306                     ; 136 void FLASH_ITConfig(FunctionalState NewState)
 306                     ; 137 {
 307                     .text:	section	.text,new
 308  0000               _FLASH_ITConfig:
 310  0000 88            	push	a
 311       00000000      OFST:	set	0
 314                     ; 139   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 316  0001 4d            	tnz	a
 317  0002 2711          	jreq	L04
 318  0004 4a            	dec	a
 319  0005 270e          	jreq	L04
 320  0007 ae008b        	ldw	x,#139
 321  000a 89            	pushw	x
 322  000b 5f            	clrw	x
 323  000c 89            	pushw	x
 324  000d ae0010        	ldw	x,#L73
 325  0010 cd0000        	call	_assert_failed
 327  0013 5b04          	addw	sp,#4
 328  0015               L04:
 329                     ; 141     if (NewState != DISABLE)
 331  0015 7b01          	ld	a,(OFST+1,sp)
 332  0017 2706          	jreq	L121
 333                     ; 143         FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 335  0019 7212505a      	bset	20570,#1
 337  001d 2004          	jra	L321
 338  001f               L121:
 339                     ; 147         FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 341  001f 7213505a      	bres	20570,#1
 342  0023               L321:
 343                     ; 149 }
 346  0023 84            	pop	a
 347  0024 81            	ret	
 380                     .const:	section	.text
 381  0000               L45:
 382  0000 00008000      	dc.l	32768
 383  0004               L65:
 384  0004 00028000      	dc.l	163840
 385  0008               L06:
 386  0008 00004000      	dc.l	16384
 387  000c               L26:
 388  000c 00004800      	dc.l	18432
 389                     ; 158 void FLASH_EraseByte(uint32_t Address)
 389                     ; 159 {
 390                     .text:	section	.text,new
 391  0000               _FLASH_EraseByte:
 393       00000000      OFST:	set	0
 396                     ; 161     assert_param(IS_FLASH_ADDRESS_OK(Address));
 398  0000 96            	ldw	x,sp
 399  0001 1c0003        	addw	x,#OFST+3
 400  0004 cd0000        	call	c_ltor
 402  0007 ae0000        	ldw	x,#L45
 403  000a cd0000        	call	c_lcmp
 405  000d 250f          	jrult	L25
 406  000f 96            	ldw	x,sp
 407  0010 1c0003        	addw	x,#OFST+3
 408  0013 cd0000        	call	c_ltor
 410  0016 ae0004        	ldw	x,#L65
 411  0019 cd0000        	call	c_lcmp
 413  001c 252c          	jrult	L46
 414  001e               L25:
 415  001e 96            	ldw	x,sp
 416  001f 1c0003        	addw	x,#OFST+3
 417  0022 cd0000        	call	c_ltor
 419  0025 ae0008        	ldw	x,#L06
 420  0028 cd0000        	call	c_lcmp
 422  002b 250f          	jrult	L64
 423  002d 96            	ldw	x,sp
 424  002e 1c0003        	addw	x,#OFST+3
 425  0031 cd0000        	call	c_ltor
 427  0034 ae000c        	ldw	x,#L26
 428  0037 cd0000        	call	c_lcmp
 430  003a 250e          	jrult	L46
 431  003c               L64:
 432  003c ae00a1        	ldw	x,#161
 433  003f 89            	pushw	x
 434  0040 5f            	clrw	x
 435  0041 89            	pushw	x
 436  0042 ae0010        	ldw	x,#L73
 437  0045 cd0000        	call	_assert_failed
 439  0048 5b04          	addw	sp,#4
 440  004a               L46:
 441                     ; 164    *(PointerAttr uint8_t*) (uint16_t)Address = FLASH_CLEAR_BYTE; 
 443  004a 7b05          	ld	a,(OFST+5,sp)
 444  004c 97            	ld	xl,a
 445  004d 7b06          	ld	a,(OFST+6,sp)
 446  004f 3f00          	clr	c_x
 447  0051 02            	rlwa	x,a
 448  0052 bf01          	ldw	c_x+1,x
 449  0054 4f            	clr	a
 450  0055 92bd0000      	ldf	[c_x.e],a
 451                     ; 166 }
 454  0059 81            	ret	
 494                     ; 176 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 494                     ; 177 {
 495                     .text:	section	.text,new
 496  0000               _FLASH_ProgramByte:
 498       00000000      OFST:	set	0
 501                     ; 179     assert_param(IS_FLASH_ADDRESS_OK(Address));
 503  0000 96            	ldw	x,sp
 504  0001 1c0003        	addw	x,#OFST+3
 505  0004 cd0000        	call	c_ltor
 507  0007 ae0000        	ldw	x,#L45
 508  000a cd0000        	call	c_lcmp
 510  000d 250f          	jrult	L67
 511  000f 96            	ldw	x,sp
 512  0010 1c0003        	addw	x,#OFST+3
 513  0013 cd0000        	call	c_ltor
 515  0016 ae0004        	ldw	x,#L65
 516  0019 cd0000        	call	c_lcmp
 518  001c 252c          	jrult	L001
 519  001e               L67:
 520  001e 96            	ldw	x,sp
 521  001f 1c0003        	addw	x,#OFST+3
 522  0022 cd0000        	call	c_ltor
 524  0025 ae0008        	ldw	x,#L06
 525  0028 cd0000        	call	c_lcmp
 527  002b 250f          	jrult	L27
 528  002d 96            	ldw	x,sp
 529  002e 1c0003        	addw	x,#OFST+3
 530  0031 cd0000        	call	c_ltor
 532  0034 ae000c        	ldw	x,#L26
 533  0037 cd0000        	call	c_lcmp
 535  003a 250e          	jrult	L001
 536  003c               L27:
 537  003c ae00b3        	ldw	x,#179
 538  003f 89            	pushw	x
 539  0040 5f            	clrw	x
 540  0041 89            	pushw	x
 541  0042 ae0010        	ldw	x,#L73
 542  0045 cd0000        	call	_assert_failed
 544  0048 5b04          	addw	sp,#4
 545  004a               L001:
 546                     ; 180     *(PointerAttr uint8_t*) (uint16_t)Address = Data;
 548  004a 7b05          	ld	a,(OFST+5,sp)
 549  004c 97            	ld	xl,a
 550  004d 7b06          	ld	a,(OFST+6,sp)
 551  004f 3f00          	clr	c_x
 552  0051 02            	rlwa	x,a
 553  0052 bf01          	ldw	c_x+1,x
 554  0054 7b07          	ld	a,(OFST+7,sp)
 555  0056 92bd0000      	ldf	[c_x.e],a
 556                     ; 181 }
 559  005a 81            	ret	
 592                     ; 190 uint8_t FLASH_ReadByte(uint32_t Address)
 592                     ; 191 {
 593                     .text:	section	.text,new
 594  0000               _FLASH_ReadByte:
 596       00000000      OFST:	set	0
 599                     ; 193     assert_param(IS_FLASH_ADDRESS_OK(Address));
 601  0000 96            	ldw	x,sp
 602  0001 1c0003        	addw	x,#OFST+3
 603  0004 cd0000        	call	c_ltor
 605  0007 ae0000        	ldw	x,#L45
 606  000a cd0000        	call	c_lcmp
 608  000d 250f          	jrult	L211
 609  000f 96            	ldw	x,sp
 610  0010 1c0003        	addw	x,#OFST+3
 611  0013 cd0000        	call	c_ltor
 613  0016 ae0004        	ldw	x,#L65
 614  0019 cd0000        	call	c_lcmp
 616  001c 252c          	jrult	L411
 617  001e               L211:
 618  001e 96            	ldw	x,sp
 619  001f 1c0003        	addw	x,#OFST+3
 620  0022 cd0000        	call	c_ltor
 622  0025 ae0008        	ldw	x,#L06
 623  0028 cd0000        	call	c_lcmp
 625  002b 250f          	jrult	L601
 626  002d 96            	ldw	x,sp
 627  002e 1c0003        	addw	x,#OFST+3
 628  0031 cd0000        	call	c_ltor
 630  0034 ae000c        	ldw	x,#L26
 631  0037 cd0000        	call	c_lcmp
 633  003a 250e          	jrult	L411
 634  003c               L601:
 635  003c ae00c1        	ldw	x,#193
 636  003f 89            	pushw	x
 637  0040 5f            	clrw	x
 638  0041 89            	pushw	x
 639  0042 ae0010        	ldw	x,#L73
 640  0045 cd0000        	call	_assert_failed
 642  0048 5b04          	addw	sp,#4
 643  004a               L411:
 644                     ; 196     return(*(PointerAttr uint8_t *) (uint16_t)Address); 
 646  004a 7b05          	ld	a,(OFST+5,sp)
 647  004c 97            	ld	xl,a
 648  004d 7b06          	ld	a,(OFST+6,sp)
 649  004f 3f00          	clr	c_x
 650  0051 02            	rlwa	x,a
 651  0052 bf01          	ldw	c_x+1,x
 652  0054 92bc0000      	ldf	a,[c_x.e]
 655  0058 81            	ret	
 695                     ; 207 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 695                     ; 208 {
 696                     .text:	section	.text,new
 697  0000               _FLASH_ProgramWord:
 699       00000000      OFST:	set	0
 702                     ; 210     assert_param(IS_FLASH_ADDRESS_OK(Address));
 704  0000 96            	ldw	x,sp
 705  0001 1c0003        	addw	x,#OFST+3
 706  0004 cd0000        	call	c_ltor
 708  0007 ae0000        	ldw	x,#L45
 709  000a cd0000        	call	c_lcmp
 711  000d 250f          	jrult	L621
 712  000f 96            	ldw	x,sp
 713  0010 1c0003        	addw	x,#OFST+3
 714  0013 cd0000        	call	c_ltor
 716  0016 ae0004        	ldw	x,#L65
 717  0019 cd0000        	call	c_lcmp
 719  001c 252c          	jrult	L031
 720  001e               L621:
 721  001e 96            	ldw	x,sp
 722  001f 1c0003        	addw	x,#OFST+3
 723  0022 cd0000        	call	c_ltor
 725  0025 ae0008        	ldw	x,#L06
 726  0028 cd0000        	call	c_lcmp
 728  002b 250f          	jrult	L221
 729  002d 96            	ldw	x,sp
 730  002e 1c0003        	addw	x,#OFST+3
 731  0031 cd0000        	call	c_ltor
 733  0034 ae000c        	ldw	x,#L26
 734  0037 cd0000        	call	c_lcmp
 736  003a 250e          	jrult	L031
 737  003c               L221:
 738  003c ae00d2        	ldw	x,#210
 739  003f 89            	pushw	x
 740  0040 5f            	clrw	x
 741  0041 89            	pushw	x
 742  0042 ae0010        	ldw	x,#L73
 743  0045 cd0000        	call	_assert_failed
 745  0048 5b04          	addw	sp,#4
 746  004a               L031:
 747                     ; 213     FLASH->CR2 |= FLASH_CR2_WPRG;
 749  004a 721c505b      	bset	20571,#6
 750                     ; 214     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 752  004e 721d505c      	bres	20572,#6
 753                     ; 217     *((PointerAttr uint8_t*)(uint16_t)Address)       = *((uint8_t*)(&Data));
 755  0052 7b05          	ld	a,(OFST+5,sp)
 756  0054 97            	ld	xl,a
 757  0055 7b06          	ld	a,(OFST+6,sp)
 758  0057 3f00          	clr	c_x
 759  0059 02            	rlwa	x,a
 760  005a bf01          	ldw	c_x+1,x
 761  005c 7b07          	ld	a,(OFST+7,sp)
 762  005e 92bd0000      	ldf	[c_x.e],a
 763                     ; 219     *(((PointerAttr uint8_t*)(uint16_t)Address) + 1) = *((uint8_t*)(&Data)+1); 
 765  0062 7b05          	ld	a,(OFST+5,sp)
 766  0064 97            	ld	xl,a
 767  0065 7b06          	ld	a,(OFST+6,sp)
 768  0067 02            	rlwa	x,a
 769  0068 90ae0001      	ldw	y,#1
 770  006c bf01          	ldw	c_x+1,x
 771  006e 93            	ldw	x,y
 772  006f 7b08          	ld	a,(OFST+8,sp)
 773  0071 92a70000      	ldf	([c_x.e],x),a
 774                     ; 221     *(((PointerAttr uint8_t*)(uint16_t)Address) + 2) = *((uint8_t*)(&Data)+2); 
 776  0075 7b05          	ld	a,(OFST+5,sp)
 777  0077 97            	ld	xl,a
 778  0078 7b06          	ld	a,(OFST+6,sp)
 779  007a 02            	rlwa	x,a
 780  007b 905c          	incw	y
 781  007d bf01          	ldw	c_x+1,x
 782  007f 93            	ldw	x,y
 783  0080 7b09          	ld	a,(OFST+9,sp)
 784  0082 92a70000      	ldf	([c_x.e],x),a
 785                     ; 223     *(((PointerAttr uint8_t*)(uint16_t)Address) + 3) = *((uint8_t*)(&Data)+3); 
 787  0086 7b05          	ld	a,(OFST+5,sp)
 788  0088 97            	ld	xl,a
 789  0089 7b06          	ld	a,(OFST+6,sp)
 790  008b 02            	rlwa	x,a
 791  008c 905c          	incw	y
 792  008e bf01          	ldw	c_x+1,x
 793  0090 93            	ldw	x,y
 794  0091 7b0a          	ld	a,(OFST+10,sp)
 795  0093 92a70000      	ldf	([c_x.e],x),a
 796                     ; 224 }
 799  0097 81            	ret	
 841                     ; 232 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 841                     ; 233 {
 842                     .text:	section	.text,new
 843  0000               _FLASH_ProgramOptionByte:
 845  0000 89            	pushw	x
 846       00000000      OFST:	set	0
 849                     ; 235     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 851  0001 a34800        	cpw	x,#18432
 852  0004 2505          	jrult	L631
 853  0006 a34880        	cpw	x,#18560
 854  0009 250e          	jrult	L041
 855  000b               L631:
 856  000b ae00eb        	ldw	x,#235
 857  000e 89            	pushw	x
 858  000f 5f            	clrw	x
 859  0010 89            	pushw	x
 860  0011 ae0010        	ldw	x,#L73
 861  0014 cd0000        	call	_assert_failed
 863  0017 5b04          	addw	sp,#4
 864  0019               L041:
 865                     ; 238     FLASH->CR2 |= FLASH_CR2_OPT;
 867  0019 721e505b      	bset	20571,#7
 868                     ; 239     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 870  001d 721f505c      	bres	20572,#7
 871                     ; 242     if (Address == 0x4800)
 873  0021 1e01          	ldw	x,(OFST+1,sp)
 874  0023 a34800        	cpw	x,#18432
 875  0026 2605          	jrne	L722
 876                     ; 245        *((NEAR uint8_t*)Address) = Data;
 878  0028 7b05          	ld	a,(OFST+5,sp)
 879  002a f7            	ld	(x),a
 881  002b 2006          	jra	L132
 882  002d               L722:
 883                     ; 250        *((NEAR uint8_t*)Address) = Data;
 885  002d 7b05          	ld	a,(OFST+5,sp)
 886  002f f7            	ld	(x),a
 887                     ; 251        *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 889  0030 43            	cpl	a
 890  0031 e701          	ld	(1,x),a
 891  0033               L132:
 892                     ; 253     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 894  0033 a6fd          	ld	a,#253
 895  0035 cd0000        	call	_FLASH_WaitForLastOperation
 897                     ; 256     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 899  0038 721f505b      	bres	20571,#7
 900                     ; 257     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 902                     ; 258 }
 905  003c 85            	popw	x
 906  003d 721e505c      	bset	20572,#7
 907  0041 81            	ret	
 942                     ; 265 void FLASH_EraseOptionByte(uint16_t Address)
 942                     ; 266 {
 943                     .text:	section	.text,new
 944  0000               _FLASH_EraseOptionByte:
 946  0000 89            	pushw	x
 947       00000000      OFST:	set	0
 950                     ; 268     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 952  0001 a34800        	cpw	x,#18432
 953  0004 2505          	jrult	L051
 954  0006 a34880        	cpw	x,#18560
 955  0009 250e          	jrult	L251
 956  000b               L051:
 957  000b ae010c        	ldw	x,#268
 958  000e 89            	pushw	x
 959  000f 5f            	clrw	x
 960  0010 89            	pushw	x
 961  0011 ae0010        	ldw	x,#L73
 962  0014 cd0000        	call	_assert_failed
 964  0017 5b04          	addw	sp,#4
 965  0019               L251:
 966                     ; 271     FLASH->CR2 |= FLASH_CR2_OPT;
 968  0019 721e505b      	bset	20571,#7
 969                     ; 272     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 971  001d 721f505c      	bres	20572,#7
 972                     ; 275      if (Address == 0x4800)
 974  0021 1e01          	ldw	x,(OFST+1,sp)
 975  0023 a34800        	cpw	x,#18432
 976  0026 2603          	jrne	L742
 977                     ; 278        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 979  0028 7f            	clr	(x)
 981  0029 2005          	jra	L152
 982  002b               L742:
 983                     ; 283        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 985  002b 7f            	clr	(x)
 986                     ; 284        *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 988  002c a6ff          	ld	a,#255
 989  002e e701          	ld	(1,x),a
 990  0030               L152:
 991                     ; 286     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 993  0030 a6fd          	ld	a,#253
 994  0032 cd0000        	call	_FLASH_WaitForLastOperation
 996                     ; 289     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 998  0035 721f505b      	bres	20571,#7
 999                     ; 290     FLASH->NCR2 |= FLASH_NCR2_NOPT;
1001                     ; 291 }
1004  0039 85            	popw	x
1005  003a 721e505c      	bset	20572,#7
1006  003e 81            	ret	
1062                     ; 297 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1062                     ; 298 {
1063                     .text:	section	.text,new
1064  0000               _FLASH_ReadOptionByte:
1066  0000 89            	pushw	x
1067  0001 5204          	subw	sp,#4
1068       00000004      OFST:	set	4
1071                     ; 299     uint8_t value_optbyte, value_optbyte_complement = 0;
1073                     ; 300     uint16_t res_value = 0;
1075                     ; 303     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1077  0003 a34800        	cpw	x,#18432
1078  0006 2505          	jrult	L261
1079  0008 a34880        	cpw	x,#18560
1080  000b 250e          	jrult	L461
1081  000d               L261:
1082  000d ae012f        	ldw	x,#303
1083  0010 89            	pushw	x
1084  0011 5f            	clrw	x
1085  0012 89            	pushw	x
1086  0013 ae0010        	ldw	x,#L73
1087  0016 cd0000        	call	_assert_failed
1089  0019 5b04          	addw	sp,#4
1090  001b               L461:
1091                     ; 306     value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1093  001b 1e05          	ldw	x,(OFST+1,sp)
1094  001d f6            	ld	a,(x)
1095  001e 6b02          	ld	(OFST-2,sp),a
1096                     ; 307     value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1098  0020 e601          	ld	a,(1,x)
1099  0022 6b01          	ld	(OFST-3,sp),a
1100                     ; 310     if (Address == 0x4800)	 
1102  0024 a34800        	cpw	x,#18432
1103  0027 2606          	jrne	L572
1104                     ; 312         res_value =	 value_optbyte;
1106  0029 7b02          	ld	a,(OFST-2,sp)
1107  002b 5f            	clrw	x
1108  002c 97            	ld	xl,a
1110  002d 201c          	jra	L772
1111  002f               L572:
1112                     ; 316         if (value_optbyte == (uint8_t)(~value_optbyte_complement))
1114  002f 43            	cpl	a
1115  0030 1102          	cp	a,(OFST-2,sp)
1116  0032 2614          	jrne	L103
1117                     ; 318             res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1119  0034 7b02          	ld	a,(OFST-2,sp)
1120  0036 97            	ld	xl,a
1121  0037 4f            	clr	a
1122  0038 02            	rlwa	x,a
1123  0039 1f03          	ldw	(OFST-1,sp),x
1124                     ; 319             res_value = res_value | (uint16_t)value_optbyte_complement;
1126  003b 5f            	clrw	x
1127  003c 7b01          	ld	a,(OFST-3,sp)
1128  003e 97            	ld	xl,a
1129  003f 01            	rrwa	x,a
1130  0040 1a04          	or	a,(OFST+0,sp)
1131  0042 01            	rrwa	x,a
1132  0043 1a03          	or	a,(OFST-1,sp)
1133  0045 01            	rrwa	x,a
1135  0046 2003          	jra	L772
1136  0048               L103:
1137                     ; 323             res_value = FLASH_OPTIONBYTE_ERROR;
1139  0048 ae5555        	ldw	x,#21845
1140  004b               L772:
1141                     ; 326     return(res_value);
1145  004b 5b06          	addw	sp,#6
1146  004d 81            	ret	
1221                     ; 335 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1221                     ; 336 {
1222                     .text:	section	.text,new
1223  0000               _FLASH_SetLowPowerMode:
1225  0000 88            	push	a
1226       00000000      OFST:	set	0
1229                     ; 338     assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1231  0001 a104          	cp	a,#4
1232  0003 2719          	jreq	L671
1233  0005 a108          	cp	a,#8
1234  0007 2715          	jreq	L671
1235  0009 4d            	tnz	a
1236  000a 2712          	jreq	L671
1237  000c a10c          	cp	a,#12
1238  000e 270e          	jreq	L671
1239  0010 ae0152        	ldw	x,#338
1240  0013 89            	pushw	x
1241  0014 5f            	clrw	x
1242  0015 89            	pushw	x
1243  0016 ae0010        	ldw	x,#L73
1244  0019 cd0000        	call	_assert_failed
1246  001c 5b04          	addw	sp,#4
1247  001e               L671:
1248                     ; 341     FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1250  001e c6505a        	ld	a,20570
1251  0021 a4f3          	and	a,#243
1252  0023 c7505a        	ld	20570,a
1253                     ; 344     FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1255  0026 c6505a        	ld	a,20570
1256  0029 1a01          	or	a,(OFST+1,sp)
1257  002b c7505a        	ld	20570,a
1258                     ; 345 }
1261  002e 84            	pop	a
1262  002f 81            	ret	
1321                     ; 353 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1321                     ; 354 {
1322                     .text:	section	.text,new
1323  0000               _FLASH_SetProgrammingTime:
1325  0000 88            	push	a
1326       00000000      OFST:	set	0
1329                     ; 356     assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1331  0001 4d            	tnz	a
1332  0002 2711          	jreq	L012
1333  0004 4a            	dec	a
1334  0005 270e          	jreq	L012
1335  0007 ae0164        	ldw	x,#356
1336  000a 89            	pushw	x
1337  000b 5f            	clrw	x
1338  000c 89            	pushw	x
1339  000d ae0010        	ldw	x,#L73
1340  0010 cd0000        	call	_assert_failed
1342  0013 5b04          	addw	sp,#4
1343  0015               L012:
1344                     ; 358     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1346  0015 7211505a      	bres	20570,#0
1347                     ; 359     FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1349  0019 c6505a        	ld	a,20570
1350  001c 1a01          	or	a,(OFST+1,sp)
1351  001e c7505a        	ld	20570,a
1352                     ; 360 }
1355  0021 84            	pop	a
1356  0022 81            	ret	
1381                     ; 367 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1381                     ; 368 {
1382                     .text:	section	.text,new
1383  0000               _FLASH_GetLowPowerMode:
1387                     ; 369     return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1389  0000 c6505a        	ld	a,20570
1390  0003 a40c          	and	a,#12
1393  0005 81            	ret	
1418                     ; 377 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1418                     ; 378 {
1419                     .text:	section	.text,new
1420  0000               _FLASH_GetProgrammingTime:
1424                     ; 379     return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1426  0000 c6505a        	ld	a,20570
1427  0003 a401          	and	a,#1
1430  0005 81            	ret	
1462                     ; 387 uint32_t FLASH_GetBootSize(void)
1462                     ; 388 {
1463                     .text:	section	.text,new
1464  0000               _FLASH_GetBootSize:
1466  0000 5204          	subw	sp,#4
1467       00000004      OFST:	set	4
1470                     ; 389     uint32_t temp = 0;
1472                     ; 392     temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1474  0002 c6505d        	ld	a,20573
1475  0005 5f            	clrw	x
1476  0006 97            	ld	xl,a
1477  0007 90ae0200      	ldw	y,#512
1478  000b cd0000        	call	c_umul
1480  000e 96            	ldw	x,sp
1481  000f 5c            	incw	x
1482  0010 cd0000        	call	c_rtol
1484                     ; 395     if (FLASH->FPR == 0xFF)
1486  0013 c6505d        	ld	a,20573
1487  0016 4c            	inc	a
1488  0017 260d          	jrne	L124
1489                     ; 397         temp += 512;
1491  0019 ae0200        	ldw	x,#512
1492  001c bf02          	ldw	c_lreg+2,x
1493  001e 5f            	clrw	x
1494  001f bf00          	ldw	c_lreg,x
1495  0021 96            	ldw	x,sp
1496  0022 5c            	incw	x
1497  0023 cd0000        	call	c_lgadd
1499  0026               L124:
1500                     ; 401     return(temp);
1502  0026 96            	ldw	x,sp
1503  0027 5c            	incw	x
1504  0028 cd0000        	call	c_ltor
1508  002b 5b04          	addw	sp,#4
1509  002d 81            	ret	
1619                     ; 412 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1619                     ; 413 {
1620                     .text:	section	.text,new
1621  0000               _FLASH_GetFlagStatus:
1623  0000 88            	push	a
1624  0001 88            	push	a
1625       00000001      OFST:	set	1
1628                     ; 414     FlagStatus status = RESET;
1630                     ; 416     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1632  0002 a140          	cp	a,#64
1633  0004 271d          	jreq	L032
1634  0006 a108          	cp	a,#8
1635  0008 2719          	jreq	L032
1636  000a a104          	cp	a,#4
1637  000c 2715          	jreq	L032
1638  000e a102          	cp	a,#2
1639  0010 2711          	jreq	L032
1640  0012 4a            	dec	a
1641  0013 270e          	jreq	L032
1642  0015 ae01a0        	ldw	x,#416
1643  0018 89            	pushw	x
1644  0019 5f            	clrw	x
1645  001a 89            	pushw	x
1646  001b ae0010        	ldw	x,#L73
1647  001e cd0000        	call	_assert_failed
1649  0021 5b04          	addw	sp,#4
1650  0023               L032:
1651                     ; 419     if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1653  0023 c6505f        	ld	a,20575
1654  0026 1502          	bcp	a,(OFST+1,sp)
1655  0028 2704          	jreq	L374
1656                     ; 421         status = SET; /* FLASH_FLAG is set */
1658  002a a601          	ld	a,#1
1660  002c 2001          	jra	L574
1661  002e               L374:
1662                     ; 425         status = RESET; /* FLASH_FLAG is reset*/
1664  002e 4f            	clr	a
1665  002f               L574:
1666                     ; 429     return status;
1670  002f 85            	popw	x
1671  0030 81            	ret	
1760                     ; 531 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1760                     ; 532 {
1761                     .text:	section	.text,new
1762  0000               _FLASH_WaitForLastOperation:
1764  0000 5205          	subw	sp,#5
1765       00000005      OFST:	set	5
1768                     ; 533     uint8_t flagstatus = 0x00;
1770  0002 0f05          	clr	(OFST+0,sp)
1771                     ; 534     uint32_t timeout = OPERATION_TIMEOUT;
1773  0004 aeffff        	ldw	x,#65535
1774  0007 1f03          	ldw	(OFST-2,sp),x
1775  0009 ae000f        	ldw	x,#15
1776  000c 1f01          	ldw	(OFST-4,sp),x
1777                     ; 539     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1779  000e a1fd          	cp	a,#253
1780  0010 262b          	jrne	L355
1782  0012 200e          	jra	L145
1783  0014               L735:
1784                     ; 543             flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1784                     ; 544                                               FLASH_IAPSR_WR_PG_DIS));
1786  0014 c6505f        	ld	a,20575
1787  0017 a405          	and	a,#5
1788  0019 6b05          	ld	(OFST+0,sp),a
1789                     ; 545             timeout--;
1791  001b 96            	ldw	x,sp
1792  001c 5c            	incw	x
1793  001d a601          	ld	a,#1
1794  001f cd0000        	call	c_lgsbc
1796  0022               L145:
1797                     ; 541         while ((flagstatus == 0x00) && (timeout != 0x00))
1799  0022 7b05          	ld	a,(OFST+0,sp)
1800  0024 2622          	jrne	L745
1802  0026 96            	ldw	x,sp
1803  0027 5c            	incw	x
1804  0028 cd0000        	call	c_lzmp
1806  002b 26e7          	jrne	L735
1807  002d 2019          	jra	L745
1808  002f               L155:
1809                     ; 552             flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1809                     ; 553                                               FLASH_IAPSR_WR_PG_DIS));
1811  002f c6505f        	ld	a,20575
1812  0032 a441          	and	a,#65
1813  0034 6b05          	ld	(OFST+0,sp),a
1814                     ; 554             timeout--;
1816  0036 96            	ldw	x,sp
1817  0037 5c            	incw	x
1818  0038 a601          	ld	a,#1
1819  003a cd0000        	call	c_lgsbc
1821  003d               L355:
1822                     ; 550         while ((flagstatus == 0x00) && (timeout != 0x00))
1824  003d 7b05          	ld	a,(OFST+0,sp)
1825  003f 2607          	jrne	L745
1827  0041 96            	ldw	x,sp
1828  0042 5c            	incw	x
1829  0043 cd0000        	call	c_lzmp
1831  0046 26e7          	jrne	L155
1832  0048               L745:
1833                     ; 566     if (timeout == 0x00 )
1835  0048 96            	ldw	x,sp
1836  0049 5c            	incw	x
1837  004a cd0000        	call	c_lzmp
1839  004d 2604          	jrne	L165
1840                     ; 568         flagstatus = FLASH_STATUS_TIMEOUT;
1842  004f a602          	ld	a,#2
1843  0051 6b05          	ld	(OFST+0,sp),a
1844  0053               L165:
1845                     ; 571     return((FLASH_Status_TypeDef)flagstatus);
1847  0053 7b05          	ld	a,(OFST+0,sp)
1850  0055 5b05          	addw	sp,#5
1851  0057 81            	ret	
1911                     ; 581 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1911                     ; 582 {
1912                     .text:	section	.text,new
1913  0000               _FLASH_EraseBlock:
1915  0000 89            	pushw	x
1916  0001 5207          	subw	sp,#7
1917       00000007      OFST:	set	7
1920                     ; 583   uint32_t startaddress = 0;
1922                     ; 593   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1924  0003 7b0c          	ld	a,(OFST+5,sp)
1925  0005 a1fd          	cp	a,#253
1926  0007 270b          	jreq	L442
1927  0009 a1f7          	cp	a,#247
1928  000b 2707          	jreq	L442
1929  000d ae0251        	ldw	x,#593
1930  0010 ad76          	call	LC001
1931  0012 7b0c          	ld	a,(OFST+5,sp)
1932  0014               L442:
1933                     ; 594   if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1935  0014 a1fd          	cp	a,#253
1936  0016 2611          	jrne	L116
1937                     ; 596       assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1939  0018 1e08          	ldw	x,(OFST+1,sp)
1940  001a a30400        	cpw	x,#1024
1941  001d 2505          	jrult	L252
1942  001f ae0254        	ldw	x,#596
1943  0022 ad64          	call	LC001
1944  0024               L252:
1945                     ; 597       startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1947  0024 ae8000        	ldw	x,#32768
1949  0027 200f          	jra	L316
1950  0029               L116:
1951                     ; 601       assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1953  0029 1e08          	ldw	x,(OFST+1,sp)
1954  002b a30010        	cpw	x,#16
1955  002e 2505          	jrult	L062
1956  0030 ae0259        	ldw	x,#601
1957  0033 ad53          	call	LC001
1958  0035               L062:
1959                     ; 602       startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1961  0035 ae4000        	ldw	x,#16384
1962  0038               L316:
1963  0038 1f03          	ldw	(OFST-4,sp),x
1964  003a 5f            	clrw	x
1965  003b 1f01          	ldw	(OFST-6,sp),x
1966                     ; 607     pwFlash = (PointerAttr uint8_t *)(uint32_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1968  003d a680          	ld	a,#128
1969  003f 1e08          	ldw	x,(OFST+1,sp)
1970  0041 cd0000        	call	c_cmulx
1972  0044 96            	ldw	x,sp
1973  0045 5c            	incw	x
1974  0046 cd0000        	call	c_ladd
1976  0049 450100        	mov	c_x,c_lreg+1
1977  004c b600          	ld	a,c_x
1978  004e be02          	ldw	x,c_lreg+2
1979  0050 6b05          	ld	(OFST-2,sp),a
1980  0052 1f06          	ldw	(OFST-1,sp),x
1981                     ; 614     FLASH->CR2 |= FLASH_CR2_ERASE;
1983  0054 721a505b      	bset	20571,#5
1984                     ; 615     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1986  0058 721b505c      	bres	20572,#5
1987                     ; 622   *pwFlash = (uint8_t)0;
1989  005c b700          	ld	c_x,a
1990  005e bf01          	ldw	c_x+1,x
1991  0060 4f            	clr	a
1992  0061 92bd0000      	ldf	[c_x.e],a
1993                     ; 623   *(pwFlash + 1) = (uint8_t)0;
1995  0065 7b05          	ld	a,(OFST-2,sp)
1996  0067 b700          	ld	c_x,a
1997  0069 90ae0001      	ldw	y,#1
1998  006d 93            	ldw	x,y
1999  006e 4f            	clr	a
2000  006f 92a70000      	ldf	([c_x.e],x),a
2001                     ; 624   *(pwFlash + 2) = (uint8_t)0;
2003  0073 1e06          	ldw	x,(OFST-1,sp)
2004  0075 bf01          	ldw	c_x+1,x
2005  0077 905c          	incw	y
2006  0079 93            	ldw	x,y
2007  007a 92a70000      	ldf	([c_x.e],x),a
2008                     ; 625   *(pwFlash + 3) = (uint8_t)0;    
2010  007e 905c          	incw	y
2011  0080 93            	ldw	x,y
2012  0081 92a70000      	ldf	([c_x.e],x),a
2013                     ; 627 }
2016  0085 5b09          	addw	sp,#9
2017  0087 81            	ret	
2018  0088               LC001:
2019  0088 89            	pushw	x
2020  0089 5f            	clrw	x
2021  008a 89            	pushw	x
2022  008b ae0010        	ldw	x,#L73
2023  008e cd0000        	call	_assert_failed
2025  0091 5b04          	addw	sp,#4
2026  0093 81            	ret	
2125                     ; 638 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2125                     ; 639                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2125                     ; 640 {
2126                     .text:	section	.text,new
2127  0000               _FLASH_ProgramBlock:
2129  0000 89            	pushw	x
2130  0001 5206          	subw	sp,#6
2131       00000006      OFST:	set	6
2134                     ; 641     uint16_t Count = 0;
2136                     ; 642     uint32_t startaddress = 0;
2138                     ; 645     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2140  0003 7b0b          	ld	a,(OFST+5,sp)
2141  0005 a1fd          	cp	a,#253
2142  0007 270a          	jreq	L272
2143  0009 a1f7          	cp	a,#247
2144  000b 2706          	jreq	L272
2145  000d ae0285        	ldw	x,#645
2146  0010 cd0095        	call	LC002
2147  0013               L272:
2148                     ; 646     assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2150  0013 7b0c          	ld	a,(OFST+6,sp)
2151  0015 2709          	jreq	L203
2152  0017 a110          	cp	a,#16
2153  0019 2705          	jreq	L203
2154  001b ae0286        	ldw	x,#646
2155  001e ad75          	call	LC002
2156  0020               L203:
2157                     ; 647     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
2159  0020 7b0b          	ld	a,(OFST+5,sp)
2160  0022 a1fd          	cp	a,#253
2161  0024 2611          	jrne	L166
2162                     ; 649         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2164  0026 1e07          	ldw	x,(OFST+1,sp)
2165  0028 a30400        	cpw	x,#1024
2166  002b 2505          	jrult	L013
2167  002d ae0289        	ldw	x,#649
2168  0030 ad63          	call	LC002
2169  0032               L013:
2170                     ; 650         startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2172  0032 ae8000        	ldw	x,#32768
2174  0035 200f          	jra	L366
2175  0037               L166:
2176                     ; 654         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2178  0037 1e07          	ldw	x,(OFST+1,sp)
2179  0039 a30010        	cpw	x,#16
2180  003c 2505          	jrult	L613
2181  003e ae028e        	ldw	x,#654
2182  0041 ad52          	call	LC002
2183  0043               L613:
2184                     ; 655         startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2186  0043 ae4000        	ldw	x,#16384
2187  0046               L366:
2188  0046 1f03          	ldw	(OFST-3,sp),x
2189  0048 5f            	clrw	x
2190  0049 1f01          	ldw	(OFST-5,sp),x
2191                     ; 659     startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2193  004b a680          	ld	a,#128
2194  004d 1e07          	ldw	x,(OFST+1,sp)
2195  004f cd0000        	call	c_cmulx
2197  0052 96            	ldw	x,sp
2198  0053 5c            	incw	x
2199  0054 cd0000        	call	c_lgadd
2201                     ; 662     if (FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2203  0057 7b0c          	ld	a,(OFST+6,sp)
2204  0059 260a          	jrne	L566
2205                     ; 665         FLASH->CR2 |= FLASH_CR2_PRG;
2207  005b 7210505b      	bset	20571,#0
2208                     ; 666         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2210  005f 7211505c      	bres	20572,#0
2212  0063 2008          	jra	L766
2213  0065               L566:
2214                     ; 671         FLASH->CR2 |= FLASH_CR2_FPRG;
2216  0065 7218505b      	bset	20571,#4
2217                     ; 672         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2219  0069 7219505c      	bres	20572,#4
2220  006d               L766:
2221                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2223  006d 5f            	clrw	x
2224  006e 1f05          	ldw	(OFST-1,sp),x
2225  0070               L176:
2226                     ; 680   *((PointerAttr uint8_t*) (uint16_t)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2228  0070 7b03          	ld	a,(OFST-3,sp)
2229  0072 97            	ld	xl,a
2230  0073 7b04          	ld	a,(OFST-2,sp)
2231  0075 3f00          	clr	c_x
2232  0077 02            	rlwa	x,a
2233  0078 1605          	ldw	y,(OFST-1,sp)
2234  007a bf01          	ldw	c_x+1,x
2235  007c 93            	ldw	x,y
2236  007d 160d          	ldw	y,(OFST+7,sp)
2237  007f 72f905        	addw	y,(OFST-1,sp)
2238  0082 90f6          	ld	a,(y)
2239  0084 92a70000      	ldf	([c_x.e],x),a
2240                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2242  0088 1e05          	ldw	x,(OFST-1,sp)
2243  008a 5c            	incw	x
2244  008b 1f05          	ldw	(OFST-1,sp),x
2247  008d a30080        	cpw	x,#128
2248  0090 25de          	jrult	L176
2249                     ; 685 }
2252  0092 5b08          	addw	sp,#8
2253  0094 81            	ret	
2254  0095               LC002:
2255  0095 89            	pushw	x
2256  0096 5f            	clrw	x
2257  0097 89            	pushw	x
2258  0098 ae0010        	ldw	x,#L73
2259  009b cd0000        	call	_assert_failed
2261  009e 5b04          	addw	sp,#4
2262  00a0 81            	ret	
2275                     	xdef	_FLASH_WaitForLastOperation
2276                     	xdef	_FLASH_ProgramBlock
2277                     	xdef	_FLASH_EraseBlock
2278                     	xdef	_FLASH_GetFlagStatus
2279                     	xdef	_FLASH_GetBootSize
2280                     	xdef	_FLASH_GetProgrammingTime
2281                     	xdef	_FLASH_GetLowPowerMode
2282                     	xdef	_FLASH_SetProgrammingTime
2283                     	xdef	_FLASH_SetLowPowerMode
2284                     	xdef	_FLASH_EraseOptionByte
2285                     	xdef	_FLASH_ProgramOptionByte
2286                     	xdef	_FLASH_ReadOptionByte
2287                     	xdef	_FLASH_ProgramWord
2288                     	xdef	_FLASH_ReadByte
2289                     	xdef	_FLASH_ProgramByte
2290                     	xdef	_FLASH_EraseByte
2291                     	xdef	_FLASH_ITConfig
2292                     	xdef	_FLASH_DeInit
2293                     	xdef	_FLASH_Lock
2294                     	xdef	_FLASH_Unlock
2295                     	xref	_assert_failed
2296                     	switch	.const
2297  0010               L73:
2298  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2299  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2300  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2301  0046 5f666c617368  	dc.b	"_flash.c",0
2302                     	xref.b	c_lreg
2303                     	xref.b	c_x
2304                     	xref.b	c_y
2324                     	xref	c_ladd
2325                     	xref	c_cmulx
2326                     	xref	c_lzmp
2327                     	xref	c_lgsbc
2328                     	xref	c_lgadd
2329                     	xref	c_rtol
2330                     	xref	c_umul
2331                     	xref	c_lcmp
2332                     	xref	c_ltor
2333                     	end
