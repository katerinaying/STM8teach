   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.9.10 - 10 Feb 2011
   3                     ; Generator (Limited) V4.3.6 - 15 Feb 2011
   4                     ; Optimizer V4.3.5 - 15 Feb 2011
  22                     	switch	.data
  23  0000               __Id:
  24  0000 00000000      	dc.l	0
  25  0004               __IDE:
  26  0004 00            	dc.b	0
  27  0005               __RTR:
  28  0005 00            	dc.b	0
  29  0006               __DLC:
  30  0006 00            	dc.b	0
  31  0007               __Data:
  32  0007 00            	dc.b	0
  33  0008 000000000000  	ds.b	7
  34  000f               __FMI:
  35  000f 00            	dc.b	0
  65                     ; 56 void CAN_DeInit(void)
  65                     ; 57 {
  67                     .text:	section	.text,new
  68  0000               _CAN_DeInit:
  72                     ; 59     CAN->MCR = CAN_MCR_INRQ;
  74  0000 35015420      	mov	21536,#1
  75                     ; 60     CAN->PSR = CAN_Page_Config;
  77  0004 35065427      	mov	21543,#6
  78                     ; 61     CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
  80  0008 4f            	clr	a
  81  0009 cd0000        	call	_CAN_OperatingModeRequest
  83                     ; 62     CAN->Page.Config.ESR = CAN_ESR_RESET_VALUE;
  85  000c 725f5428      	clr	21544
  86                     ; 63     CAN->Page.Config.EIER = CAN_EIER_RESET_VALUE;
  88  0010 725f5429      	clr	21545
  89                     ; 64     CAN->Page.Config.BTR1 = CAN_BTR1_RESET_VALUE;
  91  0014 3540542c      	mov	21548,#64
  92                     ; 65     CAN->Page.Config.BTR2 = CAN_BTR2_RESET_VALUE;
  94  0018 3523542d      	mov	21549,#35
  95                     ; 66     CAN->Page.Config.FMR1 = CAN_FMR1_RESET_VALUE;
  97  001c 725f5430      	clr	21552
  98                     ; 67     CAN->Page.Config.FMR2 = CAN_FMR2_RESET_VALUE;
 100  0020 725f5431      	clr	21553
 101                     ; 68     CAN->Page.Config.FCR1 = CAN_FCR_RESET_VALUE;
 103  0024 725f5432      	clr	21554
 104                     ; 69     CAN->Page.Config.FCR2 = CAN_FCR_RESET_VALUE;
 106  0028 725f5433      	clr	21555
 107                     ; 70     CAN->Page.Config.FCR3 = CAN_FCR_RESET_VALUE;
 109  002c 725f5434      	clr	21556
 110                     ; 71     CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
 112  0030 a601          	ld	a,#1
 113  0032 cd0000        	call	_CAN_OperatingModeRequest
 115                     ; 72     CAN->PSR = CAN_Page_RxFifo;
 117  0035 35075427      	mov	21543,#7
 118                     ; 73     CAN->Page.RxFIFO.MDLCR = CAN_MDLC_RESET_VALUE;
 120  0039 725f5429      	clr	21545
 121                     ; 74     CAN->PSR = CAN_Page_TxMailBox0;
 123  003d 725f5427      	clr	21543
 124                     ; 75     CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 126  0041 725f5429      	clr	21545
 127                     ; 76     CAN->PSR = CAN_Page_TxMailBox1;
 129  0045 35015427      	mov	21543,#1
 130                     ; 77     CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 132  0049 725f5429      	clr	21545
 133                     ; 78     CAN->PSR = CAN_Page_TxMailBox2;
 135  004d 35055427      	mov	21543,#5
 136                     ; 79     CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 138  0051 725f5429      	clr	21545
 139                     ; 81     CAN->MCR = CAN_MCR_RESET_VALUE;
 141  0055 35025420      	mov	21536,#2
 142                     ; 82     CAN->MSR = (uint8_t)(~CAN_MSR_RESET_VALUE);/* rc_w1 */
 144  0059 35fd5421      	mov	21537,#253
 145                     ; 83     CAN->TSR = (uint8_t)(~CAN_TSR_RESET_VALUE);/* rc_w1 */
 147  005d 35ff5422      	mov	21538,#255
 148                     ; 84     CAN->RFR = (uint8_t)(~CAN_RFR_RESET_VALUE);/* rc_w1 */
 150  0061 35ff5424      	mov	21540,#255
 151                     ; 85     CAN->IER = CAN_IER_RESET_VALUE;
 153  0065 725f5425      	clr	21541
 154                     ; 86     CAN->DGR = CAN_DGR_RESET_VALUE;
 156  0069 350c5426      	mov	21542,#12
 157                     ; 87     CAN->PSR = CAN_PSR_RESET_VALUE;
 159  006d 725f5427      	clr	21543
 160                     ; 88 }
 163  0071 81            	ret	
 710                     ; 100 CAN_InitStatus_TypeDef CAN_Init(CAN_MasterCtrl_TypeDef CAN_MasterCtrl,
 710                     ; 101                                 CAN_Mode_TypeDef CAN_Mode,
 710                     ; 102                                 CAN_SynJumpWidth_TypeDef CAN_SynJumpWidth,
 710                     ; 103                                 CAN_BitSeg1_TypeDef CAN_BitSeg1,
 710                     ; 104                                 CAN_BitSeg2_TypeDef CAN_BitSeg2,
 710                     ; 105                                 uint8_t CAN_Prescaler)
 710                     ; 106 {
 711                     .text:	section	.text,new
 712  0000               _CAN_Init:
 714  0000 89            	pushw	x
 715  0001 5204          	subw	sp,#4
 716       00000004      OFST:	set	4
 719                     ; 107     CAN_InitStatus_TypeDef InitStatus =  CAN_InitStatus_Failed;
 721                     ; 108     uint16_t timeout = CAN_ACKNOWLEDGE_TIMEOUT;
 723  0003 aeffff        	ldw	x,#65535
 724  0006 1f03          	ldw	(OFST-1,sp),x
 725                     ; 109     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 727  0008 cd0000        	call	_CAN_GetSelectedPage
 729  000b 6b01          	ld	(OFST-3,sp),a
 730                     ; 113     assert_param(IS_CAN_MASTERCTRL_OK(CAN_MasterCtrl));
 732  000d 7b05          	ld	a,(OFST+1,sp)
 733  000f 270e          	jreq	L22
 734  0011 a1fd          	cp	a,#253
 735  0013 2404          	jruge	L61
 736  0015 a104          	cp	a,#4
 737  0017 2406          	jruge	L22
 738  0019               L61:
 739  0019 ae0071        	ldw	x,#113
 740  001c cd00dd        	call	LC002
 741  001f               L22:
 742                     ; 114     assert_param(IS_CAN_MODE_OK(CAN_Mode));
 744  001f 7b06          	ld	a,(OFST+2,sp)
 745  0021 2712          	jreq	L23
 746  0023 a101          	cp	a,#1
 747  0025 270e          	jreq	L23
 748  0027 a102          	cp	a,#2
 749  0029 270a          	jreq	L23
 750  002b a103          	cp	a,#3
 751  002d 2706          	jreq	L23
 752  002f ae0072        	ldw	x,#114
 753  0032 cd00dd        	call	LC002
 754  0035               L23:
 755                     ; 115     assert_param(IS_CAN_SYNJUMPWIDTH_OK(CAN_SynJumpWidth));
 757  0035 7b09          	ld	a,(OFST+5,sp)
 758  0037 2712          	jreq	L24
 759  0039 a140          	cp	a,#64
 760  003b 270e          	jreq	L24
 761  003d a180          	cp	a,#128
 762  003f 270a          	jreq	L24
 763  0041 a1c0          	cp	a,#192
 764  0043 2706          	jreq	L24
 765  0045 ae0073        	ldw	x,#115
 766  0048 cd00dd        	call	LC002
 767  004b               L24:
 768                     ; 116     assert_param(IS_CAN_BITSEG1_OK(CAN_BitSeg1));
 770  004b 7b0a          	ld	a,(OFST+6,sp)
 771  004d a110          	cp	a,#16
 772  004f 2506          	jrult	L05
 773  0051 ae0074        	ldw	x,#116
 774  0054 cd00dd        	call	LC002
 775  0057               L05:
 776                     ; 117     assert_param(IS_CAN_BITSEG2_OK(CAN_BitSeg2));
 778  0057 7b0b          	ld	a,(OFST+7,sp)
 779  0059 a110          	cp	a,#16
 780  005b 2504          	jrult	L06
 781  005d a171          	cp	a,#113
 782  005f 2509          	jrult	L26
 783  0061               L06:
 784  0061 7b0b          	ld	a,(OFST+7,sp)
 785  0063 2705          	jreq	L26
 786  0065 ae0075        	ldw	x,#117
 787  0068 ad73          	call	LC002
 788  006a               L26:
 789                     ; 118     assert_param(IS_CAN_PRESCALER_OK(CAN_Prescaler));
 791  006a 7b0c          	ld	a,(OFST+8,sp)
 792  006c 2704          	jreq	L66
 793  006e a141          	cp	a,#65
 794  0070 2505          	jrult	L07
 795  0072               L66:
 796  0072 ae0076        	ldw	x,#118
 797  0075 ad66          	call	LC002
 798  0077               L07:
 799                     ; 121     CAN->MCR = CAN_MCR_INRQ;
 801  0077 35015420      	mov	21536,#1
 803  007b 2003          	jra	L303
 804  007d               L772:
 805                     ; 125         timeout--;
 807  007d 5a            	decw	x
 808  007e 1f03          	ldw	(OFST-1,sp),x
 809  0080               L303:
 810                     ; 123     while (((uint8_t)(CAN->MSR & CAN_MSR_INAK) != 0x01) && ((uint16_t)timeout != 0))
 812  0080 7200542104    	btjt	21537,#0,L703
 814  0085 1e03          	ldw	x,(OFST-1,sp)
 815  0087 26f4          	jrne	L772
 816  0089               L703:
 817                     ; 129     if ((CAN->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
 819  0089 720054210c    	btjt	21537,#0,L113
 820                     ; 132         InitStatus =  CAN_InitStatus_Failed;
 822  008e               LC001:
 824  008e 0f02          	clr	(OFST-2,sp)
 826  0090               L313:
 827                     ; 166     CAN_SelectPage(can_page);
 829  0090 7b01          	ld	a,(OFST-3,sp)
 830  0092 cd0000        	call	_CAN_SelectPage
 832                     ; 169     return (CAN_InitStatus_TypeDef)InitStatus;
 834  0095 7b02          	ld	a,(OFST-2,sp)
 837  0097 5b06          	addw	sp,#6
 838  0099 81            	ret	
 839  009a               L113:
 840                     ; 139         CAN->MCR |= (uint8_t)CAN_MasterCtrl;
 842  009a c65420        	ld	a,21536
 843  009d 1a05          	or	a,(OFST+1,sp)
 844  009f c75420        	ld	21536,a
 845                     ; 142         CAN->DGR |= (uint8_t)CAN_Mode ;
 847  00a2 c65426        	ld	a,21542
 848  00a5 1a06          	or	a,(OFST+2,sp)
 849  00a7 c75426        	ld	21542,a
 850                     ; 143         CAN->PSR = CAN_Page_Config;
 852  00aa 35065427      	mov	21543,#6
 853                     ; 144         CAN->Page.Config.BTR1 = (uint8_t)((uint8_t)(CAN_Prescaler - (uint8_t)1) | CAN_SynJumpWidth);
 855  00ae 7b0c          	ld	a,(OFST+8,sp)
 856  00b0 4a            	dec	a
 857  00b1 1a09          	or	a,(OFST+5,sp)
 858  00b3 c7542c        	ld	21548,a
 859                     ; 145         CAN->Page.Config.BTR2 = (uint8_t)(CAN_BitSeg1 | (uint8_t)CAN_BitSeg2);
 861  00b6 7b0a          	ld	a,(OFST+6,sp)
 862  00b8 1a0b          	or	a,(OFST+7,sp)
 863  00ba c7542d        	ld	21549,a
 864                     ; 148         CAN->MCR &= (uint8_t)(~CAN_MCR_INRQ);
 866                     ; 150         timeout = 0xFFFF;
 868  00bd aeffff        	ldw	x,#65535
 869  00c0 72115420      	bres	21536,#0
 871  00c4 2001          	jra	L123
 872  00c6               L513:
 873                     ; 153             timeout--;
 873                     ; 154         }
 873                     ; 155         /* Check acknowledged */
 873                     ; 156         if ((CAN->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
 873                     ; 157         {
 873                     ; 158             InitStatus = CAN_InitStatus_Failed;
 873                     ; 159         }
 873                     ; 160         else
 873                     ; 161         {
 873                     ; 162             InitStatus = CAN_InitStatus_Success;
 873                     ; 163         }
 873                     ; 164     }
 873                     ; 165     /*Restore Last Page*/
 873                     ; 166     CAN_SelectPage(can_page);
 873                     ; 167 
 873                     ; 168     /* Return the status of initialization */
 873                     ; 169     return (CAN_InitStatus_TypeDef)InitStatus;
 873                     ; 170 }
 873                     ; 171 
 873                     ; 172 /**
 873                     ; 173   * @brief  Initializes the CAN peripheral Filter according to the specified parameters.
 873                     ; 174   * @param   CAN_FilterNumber : CAN Filter number , can be one of @ref CAN_FilterNumber_TypeDef
 873                     ; 175   * @param   CAN_FilterActivation : CAN Filter Activation state , can be one of @ref FunctionalState
 873                     ; 176   * @param   CAN_FilterMode : CAN Filter Mode , can be one of @ref CAN_FilterMode_TypeDef
 873                     ; 177   * @param   CAN_FilterScale : CAN Filter Scale , can be one of @ref CAN_FilterScale_TypeDef
 873                     ; 178   * @param   CAN_FilterID1 : CAN Filter ID 1 , can be a value from 0x00 to 0xFF
 873                     ; 179   * @param   CAN_FilterID2 : CAN Filter ID 2 , can be a value from 0x00 to 0xFF
 873                     ; 180   * @param   CAN_FilterID3 : CAN Filter ID 3 , can be a value from 0x00 to 0xFF
 873                     ; 181   * @param   CAN_FilterID4 : CAN Filter ID 4 , can be a value from 0x00 to 0xFF
 873                     ; 182   * @param   CAN_FilterIDMask1 : CAN Filter ID 1/ Mask 1  , can be a value from 0x00 to 0xFF depending of CAN_FilterMode parameter
 873                     ; 183   * @param   CAN_FilterIDMask2 : CAN Filter ID 2/ Mask 2 , can be a value from 0x00 to 0xFF depending of CAN_FilterMode parameter
 873                     ; 184   * @param   CAN_FilterIDMask3 : CAN Filter ID 3/ Mask 3 , can be a value from 0x00 to 0xFF depending of CAN_FilterMode parameter
 873                     ; 185   * @param   CAN_FilterIDMask4 : CAN Filter ID 4/ Mask 4 , can be a value from 0x00 to 0xFF depending of CAN_FilterMode parameter
 873                     ; 186   * @retval None
 873                     ; 187   */
 873                     ; 188 void CAN_FilterInit(CAN_FilterNumber_TypeDef CAN_FilterNumber,
 873                     ; 189                     FunctionalState CAN_FilterActivation,
 873                     ; 190                     CAN_FilterMode_TypeDef CAN_FilterMode,
 873                     ; 191                     CAN_FilterScale_TypeDef CAN_FilterScale,
 873                     ; 192                     uint8_t CAN_FilterID1,
 873                     ; 193                     uint8_t CAN_FilterID2,
 873                     ; 194                     uint8_t CAN_FilterID3,
 873                     ; 195                     uint8_t CAN_FilterID4,
 873                     ; 196                     uint8_t CAN_FilterIDMask1,
 873                     ; 197                     uint8_t CAN_FilterIDMask2,
 873                     ; 198                     uint8_t CAN_FilterIDMask3,
 873                     ; 199                     uint8_t CAN_FilterIDMask4)
 873                     ; 200 {
 873                     ; 201     uint8_t fact = 0;
 873                     ; 202     uint8_t fsc  = 0;
 873                     ; 203     uint8_t fmhl = 0;
 873                     ; 204 
 873                     ; 205     CAN_Page_TypeDef can_page_filter = CAN_Page_Filter01;
 873                     ; 206     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 207 
 873                     ; 208     /* Check the parameters */
 873                     ; 209     assert_param(IS_CAN_FILTER_NUMBER_OK(CAN_FilterNumber));
 873                     ; 210     assert_param(IS_FUNCTIONALSTATE_OK(CAN_FilterActivation));
 873                     ; 211     assert_param(IS_CAN_FILTER_MODE_OK(CAN_FilterMode));
 873                     ; 212     assert_param(IS_CAN_FILTER_SCALE_OK(CAN_FilterScale));
 873                     ; 213 
 873                     ; 214 
 873                     ; 215     if (CAN_FilterNumber == CAN_FilterNumber_0)
 873                     ; 216     {
 873                     ; 217         fact = 0x01;
 873                     ; 218         fsc  = 0x00;
 873                     ; 219         fmhl = 0x03;
 873                     ; 220 
 873                     ; 221         can_page_filter = CAN_Page_Filter01;
 873                     ; 222     }
 873                     ; 223     else if (CAN_FilterNumber == CAN_FilterNumber_1)
 873                     ; 224     {
 873                     ; 225         fact = 0x10;
 873                     ; 226         fsc  = 0x04;
 873                     ; 227         fmhl = 0x0C;
 873                     ; 228 
 873                     ; 229         can_page_filter = CAN_Page_Filter01;
 873                     ; 230     }
 873                     ; 231     else if (CAN_FilterNumber == CAN_FilterNumber_2)
 873                     ; 232     {
 873                     ; 233         fact = 0x01;
 873                     ; 234         fsc  = 0x00;
 873                     ; 235         fmhl = 0x30;
 873                     ; 236 
 873                     ; 237         can_page_filter = CAN_Page_Filter23;
 873                     ; 238     }
 873                     ; 239     else if (CAN_FilterNumber == CAN_FilterNumber_3)
 873                     ; 240     {
 873                     ; 241         fact = 0x10;
 873                     ; 242         fsc  = 0x04;
 873                     ; 243         fmhl = 0xC0;
 873                     ; 244 
 873                     ; 245         can_page_filter = CAN_Page_Filter23;
 873                     ; 246     }
 873                     ; 247     else if (CAN_FilterNumber == CAN_FilterNumber_4)
 873                     ; 248     {
 873                     ; 249         fact = 0x01;
 873                     ; 250         fsc  = 0x00;
 873                     ; 251         fmhl = 0x03;
 873                     ; 252 
 873                     ; 253         can_page_filter = CAN_Page_Filter45;
 873                     ; 254     }
 873                     ; 255     else /*if (CAN_FilterNumber == CAN_FilterNumber_5)*/
 873                     ; 256     {
 873                     ; 257         fact = 0x10;
 873                     ; 258         fsc  = 0x04;
 873                     ; 259         fmhl = 0x0C;
 873                     ; 260 
 873                     ; 261         can_page_filter = CAN_Page_Filter45;
 873                     ; 262     }
 873                     ; 263 
 873                     ; 264 
 873                     ; 265     CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
 873                     ; 266 
 873                     ; 267     CAN->PSR = CAN_Page_Config;
 873                     ; 268     /*---------------------------------------------------------*/
 873                     ; 269     /*Configuration of Filter Scale                            */
 873                     ; 270     /*---------------------------------------------------------*/
 873                     ; 271 
 873                     ; 272     if (can_page_filter == CAN_Page_Filter01) /* FCR1 */
 873                     ; 273     {
 873                     ; 274         /* Filter Deactivation  & Reset the Filter Scale */
 873                     ; 275         CAN->Page.Config.FCR1 &= (uint8_t)(~(uint8_t)(fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc )));
 873                     ; 276         /* Set the new Filter Scale */
 873                     ; 277         CAN->Page.Config.FCR1 |= (uint8_t)(CAN_FilterScale << fsc);
 873                     ; 278     }
 873                     ; 279     else if (can_page_filter == CAN_Page_Filter23) /* FCR2*/
 873                     ; 280     {
 873                     ; 281         /* Filter Deactivation  & Reset the Filter Scale */
 873                     ; 282         CAN->Page.Config.FCR2 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
 873                     ; 283 
 873                     ; 284         /* Set the new Filter Scale */
 873                     ; 285         CAN->Page.Config.FCR2 |= (uint8_t)(CAN_FilterScale << fsc);
 873                     ; 286 
 873                     ; 287     }
 873                     ; 288     else /*if(can_page_filter == CAN_Page_Filter45)*/ /* FCR3*/
 873                     ; 289     {
 873                     ; 290         /* Filter Deactivation  & Reset the Filter Scale */
 873                     ; 291         CAN->Page.Config.FCR3 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
 873                     ; 292 
 873                     ; 293         /* Set the new Filter Scale */
 873                     ; 294         CAN->Page.Config.FCR3 |= (uint8_t)(CAN_FilterScale << fsc);
 873                     ; 295     }
 873                     ; 296 
 873                     ; 297     /*---------------------------------------------------------*/
 873                     ; 298     /*Configuration of Filter Mode                             */
 873                     ; 299     /*---------------------------------------------------------*/
 873                     ; 300     if (can_page_filter != CAN_Page_Filter45) /* FMR1*/
 873                     ; 301     {
 873                     ; 302         /* Filter Mode */
 873                     ; 303         if (CAN_FilterMode == CAN_FilterMode_IdMask)
 873                     ; 304         {
 873                     ; 305             /*Id/Mask mode for the filter*/
 873                     ; 306             CAN->Page.Config.FMR1 &= (uint8_t)~(fmhl);
 873                     ; 307         }
 873                     ; 308         else if ( CAN_FilterMode == CAN_FilterMode_IdList)
 873                     ; 309         {
 873                     ; 310             /*Identifier list mode for the filter*/
 873                     ; 311             CAN->Page.Config.FMR1 |= (uint8_t)(fmhl);
 873                     ; 312         }
 873                     ; 313         else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
 873                     ; 314         {
 873                     ; 315             /*Identifier list mode is first  for the filter*/
 873                     ; 316             CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
 873                     ; 317         }
 873                     ; 318         else /* ( CAN_FilterMode == CAN_FilterMode_IdMask_IdList)*/
 873                     ; 319         {
 873                     ; 320             /*Id Mask mode is first  for the filter*/
 873                     ; 321             CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
 873                     ; 322         }
 873                     ; 323 
 873                     ; 324 
 873                     ; 325     }
 873                     ; 326     else /* FMR2 */
 873                     ; 327     {
 873                     ; 328 
 873                     ; 329         /* Filter Mode */
 873                     ; 330         if (CAN_FilterMode == CAN_FilterMode_IdMask)
 873                     ; 331         {
 873                     ; 332             /*Id/Mask mode for the filter*/
 873                     ; 333             CAN->Page.Config.FMR2 &= (uint8_t)~(fmhl);
 873                     ; 334         }
 873                     ; 335         else if ( CAN_FilterMode == CAN_FilterMode_IdList)
 873                     ; 336         {
 873                     ; 337             /*Identifier list mode for the filter*/
 873                     ; 338             CAN->Page.Config.FMR2 |= (uint8_t)(fmhl);
 873                     ; 339         }
 873                     ; 340         else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
 873                     ; 341         {
 873                     ; 342             /*Identifier list mode is first  for the filter*/
 873                     ; 343             CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
 873                     ; 344         }
 873                     ; 345         else /* ( CAN_FilterMode == CAN_FilterMode_IdMask_IdList)*/
 873                     ; 346         {
 873                     ; 347             /*Id Mask mode is first  for the filter*/
 873                     ; 348             CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
 873                     ; 349         }
 873                     ; 350     }
 873                     ; 351     /*---------------------------------------------------------*/
 873                     ; 352     /*Configuration of Filter IDs                              */
 873                     ; 353     /*---------------------------------------------------------*/
 873                     ; 354     CAN->PSR = (uint8_t)can_page_filter;
 873                     ; 355     if (fsc != 0)
 873                     ; 356     {
 873                     ; 357         /* Filter Scale */
 873                     ; 358         if (CAN_FilterScale == CAN_FilterScale_8Bit)
 873                     ; 359         {
 873                     ; 360             CAN->Page.Filter.FR09 = CAN_FilterID1;
 873                     ; 361             CAN->Page.Filter.FR10 = CAN_FilterIDMask1;
 873                     ; 362             CAN->Page.Filter.FR11 = CAN_FilterID2;
 873                     ; 363             CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
 873                     ; 364             CAN->Page.Filter.FR13 = CAN_FilterID3;
 873                     ; 365             CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
 873                     ; 366             CAN->Page.Filter.FR15 = CAN_FilterID4;
 873                     ; 367             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
 873                     ; 368         }
 873                     ; 369         else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
 873                     ; 370         {
 873                     ; 371             CAN->Page.Filter.FR09 = CAN_FilterID1;
 873                     ; 372             CAN->Page.Filter.FR10 = CAN_FilterID2;
 873                     ; 373             CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
 873                     ; 374             CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
 873                     ; 375             CAN->Page.Filter.FR13 = CAN_FilterID3;
 873                     ; 376             CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
 873                     ; 377             CAN->Page.Filter.FR15 = CAN_FilterID4;
 873                     ; 378             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
 873                     ; 379         }
 873                     ; 380         else if (CAN_FilterScale == CAN_FilterScale_16Bit)
 873                     ; 381         {
 873                     ; 382             CAN->Page.Filter.FR09 = CAN_FilterID1;
 873                     ; 383             CAN->Page.Filter.FR10 = CAN_FilterID2;
 873                     ; 384             CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
 873                     ; 385             CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
 873                     ; 386             CAN->Page.Filter.FR13 = CAN_FilterID3;
 873                     ; 387             CAN->Page.Filter.FR14 = CAN_FilterID4;
 873                     ; 388             CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
 873                     ; 389             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
 873                     ; 390         }
 873                     ; 391         else if (CAN_FilterScale == CAN_FilterScale_32Bit)
 873                     ; 392         {
 873                     ; 393             CAN->Page.Filter.FR09 = CAN_FilterID1;
 873                     ; 394             CAN->Page.Filter.FR10 = CAN_FilterID2;
 873                     ; 395             CAN->Page.Filter.FR11 = CAN_FilterID3;
 873                     ; 396             CAN->Page.Filter.FR12 = CAN_FilterID4;
 873                     ; 397             CAN->Page.Filter.FR13 = CAN_FilterIDMask1;
 873                     ; 398             CAN->Page.Filter.FR14 = CAN_FilterIDMask2;
 873                     ; 399             CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
 873                     ; 400             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
 873                     ; 401         }
 873                     ; 402     }
 873                     ; 403     else
 873                     ; 404     {
 873                     ; 405         /* Filter Scale */
 873                     ; 406         if (CAN_FilterScale == CAN_FilterScale_8Bit)
 873                     ; 407         {
 873                     ; 408             CAN->Page.Filter.FR01 = CAN_FilterID1;
 873                     ; 409             CAN->Page.Filter.FR02 = CAN_FilterIDMask1;
 873                     ; 410             CAN->Page.Filter.FR03 = CAN_FilterID2;
 873                     ; 411             CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
 873                     ; 412             CAN->Page.Filter.FR05 = CAN_FilterID3;
 873                     ; 413             CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
 873                     ; 414             CAN->Page.Filter.FR07 = CAN_FilterID4;
 873                     ; 415             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
 873                     ; 416         }
 873                     ; 417         else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
 873                     ; 418         {
 873                     ; 419             CAN->Page.Filter.FR01 = CAN_FilterID1;
 873                     ; 420             CAN->Page.Filter.FR02 = CAN_FilterID2;
 873                     ; 421             CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
 873                     ; 422             CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
 873                     ; 423             CAN->Page.Filter.FR05 = CAN_FilterID3;
 873                     ; 424             CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
 873                     ; 425             CAN->Page.Filter.FR07 = CAN_FilterID4;
 873                     ; 426             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
 873                     ; 427         }
 873                     ; 428         else if (CAN_FilterScale == CAN_FilterScale_16Bit)
 873                     ; 429         {
 873                     ; 430             CAN->Page.Filter.FR01 = CAN_FilterID1;
 873                     ; 431             CAN->Page.Filter.FR02 = CAN_FilterID2;
 873                     ; 432             CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
 873                     ; 433             CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
 873                     ; 434             CAN->Page.Filter.FR05 = CAN_FilterID3;
 873                     ; 435             CAN->Page.Filter.FR06 = CAN_FilterID4;
 873                     ; 436             CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
 873                     ; 437             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
 873                     ; 438         }
 873                     ; 439         else if (CAN_FilterScale == CAN_FilterScale_32Bit)
 873                     ; 440         {
 873                     ; 441             CAN->Page.Filter.FR01 = CAN_FilterID1;
 873                     ; 442             CAN->Page.Filter.FR02 = CAN_FilterID2;
 873                     ; 443             CAN->Page.Filter.FR03 = CAN_FilterID3;
 873                     ; 444             CAN->Page.Filter.FR04 = CAN_FilterID4;
 873                     ; 445             CAN->Page.Filter.FR05 = CAN_FilterIDMask1;
 873                     ; 446             CAN->Page.Filter.FR06 = CAN_FilterIDMask2;
 873                     ; 447             CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
 873                     ; 448             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
 873                     ; 449         }
 873                     ; 450     }
 873                     ; 451 
 873                     ; 452 
 873                     ; 453     /*---------------------------------------------------------*/
 873                     ; 454     /*Configuration of Filter Activation                       */
 873                     ; 455     /*---------------------------------------------------------*/
 873                     ; 456     /* Filter activation */
 873                     ; 457     CAN->PSR = CAN_Page_Config;
 873                     ; 458     if (CAN_FilterActivation != DISABLE)
 873                     ; 459     {
 873                     ; 460         if ((CAN_FilterNumber & 0x06) == 0x00) /* FCR1*/
 873                     ; 461         {   CAN->Page.Config.FCR1 |= (uint8_t)fact;
 873                     ; 462         }
 873                     ; 463         else if ((CAN_FilterNumber & 0x06) == 0x02) /*FCR2*/
 873                     ; 464         { CAN->Page.Config.FCR2 |= (uint8_t)fact;
 873                     ; 465         }
 873                     ; 466         else /*if((CAN_FilterNumber & 0x06) == 0x04)*/ /*FCR3*/
 873                     ; 467         { CAN->Page.Config.FCR3 |= (uint8_t)fact;
 873                     ; 468         }
 873                     ; 469     }
 873                     ; 470     CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
 873                     ; 471     /*Restore Last Page*/
 873                     ; 472     CAN_SelectPage(can_page);
 873                     ; 473 }
 873                     ; 474 
 873                     ; 475 /**
 873                     ; 476   * @brief   Enables or disables the specified CAN interrupts.
 873                     ; 477   * @param    CAN_IT: specifies the CAN interrupt sources to be enabled or disabled.
 873                     ; 478   * @param   NewState : CAN_IT new state , can be one of @ref FunctionalState
 873                     ; 479   * @retval None
 873                     ; 480   */
 873                     ; 481 void CAN_ITConfig(CAN_IT_TypeDef CAN_IT, FunctionalState NewState)
 873                     ; 482 {
 873                     ; 483     uint8_t tmperrorinterrupt = 0;
 873                     ; 484     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 485 
 873                     ; 486 
 873                     ; 487     /* Check the parameters */
 873                     ; 488     assert_param(IS_CAN_IT_CONFIG_OK(CAN_IT));
 873                     ; 489     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 873                     ; 490 
 873                     ; 491     tmperrorinterrupt = (uint8_t)(((uint16_t)CAN_IT) >>7);
 873                     ; 492     tmperrorinterrupt = (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0xF0) | 
 873                     ; 493                                   (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0x0F) >>1));
 873                     ; 494 
 873                     ; 495     CAN->PSR = CAN_Page_Config;
 873                     ; 496     if (NewState != DISABLE)
 873                     ; 497     {
 873                     ; 498         /* Enable the selected CAN interrupt */
 873                     ; 499         CAN->IER |= (uint8_t)(CAN_IT);
 873                     ; 500         CAN->Page.Config.EIER |= (uint8_t)(tmperrorinterrupt);
 873                     ; 501     }
 873                     ; 502     else
 873                     ; 503     {
 873                     ; 504         /* Disable the selected CAN interrupt */
 873                     ; 505         CAN->IER &= (uint8_t)~(uint8_t)((uint16_t)CAN_IT);
 873                     ; 506         CAN->Page.Config.EIER &= (uint8_t)~(tmperrorinterrupt);
 873                     ; 507     }
 873                     ; 508     /*Restore Last Page*/
 873                     ; 509     CAN_SelectPage(can_page);
 873                     ; 510 }
 873                     ; 511 
 873                     ; 512 /**
 873                     ; 513   * @brief   Enables or Disables the ST7 CAN Compatibility.
 873                     ; 514   * if the ST7 compatibility is Enabled, CAN provides only 2 mailboxes.
 873                     ; 515   * if the ST7 compatibility is Disabled, CAN provides 3 mailboxes.
 873                     ; 516   * @param   CAN_ST7Compatibility : CAN ST7 Compatibility , this parameter can be one of @ref CAN_ST7Compatibility_TypeDef enumeration.
 873                     ; 517   * @retval None
 873                     ; 518   */
 873                     ; 519 void CAN_ST7CompatibilityCmd(CAN_ST7Compatibility_TypeDef CAN_ST7Compatibility)
 873                     ; 520 {
 873                     ; 521     /* Check the parameters */
 873                     ; 522     assert_param(IS_CAN_ST7_COMPATIBILITY_OK(CAN_ST7Compatibility));
 873                     ; 523     /*Reset the old configuration of TXM2E */
 873                     ; 524     CAN->DGR &= (uint8_t)(~CAN_DGR_TXM2E);
 873                     ; 525 
 873                     ; 526     /*Set the old configuration of TXM2E */
 873                     ; 527     CAN->DGR |= (uint8_t)CAN_ST7Compatibility;
 873                     ; 528 }
 873                     ; 529 
 873                     ; 530 /**
 873                     ; 531   * @brief  Enables or disables the CAN Time TriggerOperation communication mode.
 873                     ; 532   * @param   NewState : Mode new state , can be one of @ref FunctionalState
 873                     ; 533   * @retval None
 873                     ; 534   */
 873                     ; 535 void CAN_TTComModeCmd(FunctionalState NewState)
 873                     ; 536 {
 873                     ; 537     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 538     /* Check the parameters */
 873                     ; 539     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 873                     ; 540     if (NewState != DISABLE)
 873                     ; 541     {
 873                     ; 542         /*Enable the TTCM mode */
 873                     ; 543         CAN->MCR |= CAN_MCR_TTCM;
 873                     ; 544         /*Set TGT bits setting in Tx and FIFO pages*/
 873                     ; 545         CAN->PSR = CAN_Page_TxMailBox0;
 873                     ; 546         CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
 873                     ; 547         CAN->PSR = CAN_Page_TxMailBox1;
 873                     ; 548         CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
 873                     ; 549         CAN->PSR = CAN_Page_TxMailBox2;
 873                     ; 550         CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
 873                     ; 551         CAN->PSR = CAN_Page_RxFifo;
 873                     ; 552         CAN->Page.RxFIFO.MDLCR |= CAN_MDLCR_TGT;
 873                     ; 553     }
 873                     ; 554     else
 873                     ; 555     {
 873                     ; 556         /*Disable the TTCM mode */
 873                     ; 557         CAN->MCR &= ((uint8_t)~CAN_MCR_TTCM);
 873                     ; 558         /*Reset TGT bits setting in Tx and FIFO pages*/
 873                     ; 559         CAN->PSR = CAN_Page_TxMailBox0;
 873                     ; 560         CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
 873                     ; 561         CAN->PSR = CAN_Page_TxMailBox1;
 873                     ; 562         CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
 873                     ; 563         CAN->PSR = CAN_Page_TxMailBox2;
 873                     ; 564         CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
 873                     ; 565         CAN->PSR = CAN_Page_RxFifo;
 873                     ; 566         CAN->Page.RxFIFO.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
 873                     ; 567     }
 873                     ; 568     /*Restore Last Page*/
 873                     ; 569     CAN_SelectPage(can_page);
 873                     ; 570 }
 873                     ; 571 
 873                     ; 572 /**
 873                     ; 573   * @brief  Initiates the transmission of a message.
 873                     ; 574   * @param   CAN_Id the ID number of the message, its size depends on @ref CAN_IDE value.
 873                     ; 575   * @param[in] CAN_IDE the ID type of the message, this parameter can be one of the @ref CAN_Id_TypeDef enumeration.
 873                     ; 576   * @param[in] CAN_RTR the message type, this parameter can be one of the @ref CAN_RTR_TypeDef enumeration.
 873                     ; 577   * @param[in] CAN_DLC the number of data in the message type, this parameter can be a value between 0 to 7.
 873                     ; 578   * @param[in] CAN_Data pointer to a the @ref uint8_t table which contains data to sent.
 873                     ; 579   * @retval Transmit Status, this returned value can be one of the @ref CAN_TxStatus_TypeDef enumeration.
 873                     ; 580   */
 873                     ; 581 CAN_TxStatus_TypeDef CAN_Transmit(uint32_t CAN_Id,
 873                     ; 582                                   CAN_Id_TypeDef CAN_IDE,
 873                     ; 583                                   CAN_RTR_TypeDef CAN_RTR,
 873                     ; 584                                   uint8_t CAN_DLC,
 873                     ; 585                                   uint8_t *CAN_Data)
 873                     ; 586 {
 873                     ; 587     CAN_TxStatus_TypeDef CAN_TxStatus = CAN_TxStatus_NoMailBox;
 873                     ; 588     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 589     /* Check the parameters */
 873                     ; 590     assert_param(IS_CAN_IDTYPE_OK(CAN_IDE));
 873                     ; 591     if (CAN_IDE != CAN_Id_Standard)
 873                     ; 592     {
 873                     ; 593         assert_param(IS_CAN_EXTID_OK(CAN_Id));
 873                     ; 594     }
 873                     ; 595     else
 873                     ; 596     {
 873                     ; 597         assert_param(IS_CAN_STDID_OK(CAN_Id));
 873                     ; 598     }
 873                     ; 599     assert_param(IS_CAN_RTR_OK(CAN_RTR));
 873                     ; 600     assert_param(IS_CAN_DLC_OK(CAN_DLC));
 873                     ; 601     /* Select one empty transmit mailbox */
 873                     ; 602     if ((CAN->TPR & CAN_TPR_TME0) == CAN_TPR_TME0)
 873                     ; 603     {
 873                     ; 604         CAN_TxStatus = CAN_TxStatus_MailBox0Ok;
 873                     ; 605     }
 873                     ; 606     else if ((CAN->TPR & CAN_TPR_TME1) == CAN_TPR_TME1)
 873                     ; 607     {
 873                     ; 608         CAN_TxStatus = CAN_TxStatus_MailBox1Ok;
 873                     ; 609     }
 873                     ; 610     else if ((CAN->TPR & CAN_TPR_TME2) == CAN_TPR_TME2)
 873                     ; 611     {
 873                     ; 612         CAN_TxStatus = CAN_TxStatus_MailBox2Ok;
 873                     ; 613     }
 873                     ; 614     else
 873                     ; 615     {
 873                     ; 616         CAN_TxStatus = CAN_TxStatus_NoMailBox;
 873                     ; 617     }
 873                     ; 618     if (CAN_TxStatus != CAN_TxStatus_NoMailBox)
 873                     ; 619     {
 873                     ; 620         CAN->PSR = (uint8_t)CAN_TxStatus;
 873                     ; 621         /* Set up the Id */
 873                     ; 622         if (CAN_IDE != CAN_Id_Standard)
 873                     ; 623         {
 873                     ; 624             CAN_Id &= (uint32_t)CAN_EXTID_SIZE;
 873                     ; 625             CAN->Page.TxMailbox.MIDR4 = (uint8_t)(CAN_Id);
 873                     ; 626             CAN_Id = CAN_Id>>8;
 873                     ; 627             CAN->Page.TxMailbox.MIDR3 = (uint8_t)(CAN_Id);
 873                     ; 628             CAN_Id = CAN_Id>>8;
 873                     ; 629             CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id);
 873                     ; 630             CAN_Id = CAN_Id>>8;
 873                     ; 631             CAN->Page.TxMailbox.MIDR1 = (uint8_t)(CAN_Id |CAN_IDE | CAN_RTR);
 873                     ; 632         }
 873                     ; 633         else
 873                     ; 634         {
 873                     ; 635             CAN_Id &= (uint16_t)CAN_STDID_SIZE;
 873                     ; 636             CAN->Page.TxMailbox.MIDR1 = (uint8_t)((CAN_Id>>6) | (CAN_RTR)) ;
 873                     ; 637             CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id<<2);
 873                     ; 638         }
 873                     ; 639         /* Set up the DLC                 */
 873                     ; 640         /*clear old DLC value*/
 873                     ; 641         CAN->Page.TxMailbox.MDLCR &= (uint8_t)0xF0;
 873                     ; 642         /*set the new value of DLC*/
 873                     ; 643         CAN->Page.TxMailbox.MDLCR |= CAN_DLC;
 873                     ; 644         /* Set up the data field */
 873                     ; 645         CAN->Page.TxMailbox.MDAR1 = CAN_Data[0];
 873                     ; 646         CAN->Page.TxMailbox.MDAR2 = CAN_Data[1];
 873                     ; 647         CAN->Page.TxMailbox.MDAR3 = CAN_Data[2];
 873                     ; 648         CAN->Page.TxMailbox.MDAR4 = CAN_Data[3];
 873                     ; 649         CAN->Page.TxMailbox.MDAR5 = CAN_Data[4];
 873                     ; 650         CAN->Page.TxMailbox.MDAR6 = CAN_Data[5];
 873                     ; 651         CAN->Page.TxMailbox.MDAR7 = CAN_Data[6];
 873                     ; 652         CAN->Page.TxMailbox.MDAR8 = CAN_Data[7];
 873                     ; 653         /* Request transmission */
 873                     ; 654         CAN->Page.TxMailbox.MCSR |= CAN_MCSR_TXRQ;
 873                     ; 655     }
 873                     ; 656     /*Restore Last Page*/
 873                     ; 657     CAN_SelectPage(can_page);
 873                     ; 658     return (CAN_TxStatus_TypeDef)CAN_TxStatus;
 873                     ; 659 }
 873                     ; 660 
 873                     ; 661 /**
 873                     ; 662   * @brief  Checks the transmission of a message.
 873                     ; 663   * @param   TransmitMailbox: the number of the mailbox that is used for transmission, can be on of  @ref CAN_TransmitMailBox_TypeDef.
 873                     ; 664   * @retval CAN_TxStatus_Ok if the CAN driver transmits the message, CAN_TxStatus_Failed in an other case.
 873                     ; 665   */
 873                     ; 666 CAN_TxStatus_TypeDef CAN_TransmitStatus(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
 873                     ; 667 {
 873                     ; 668     /* RQCP, TXOK and TME bits */
 873                     ; 669     CAN_TxStatus_TypeDef tstate = CAN_TxStatus_Failed;
 873                     ; 670     uint8_t tmpstate=0;
 873                     ; 671 
 873                     ; 672     /* Check the parameters */
 873                     ; 673     assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
 873                     ; 674 
 873                     ; 675     switch (CAN_TransmitMailbox)
 873                     ; 676     {
 873                     ; 677     case (CAN_TransmitMailBox_0): tmpstate = (uint8_t)((CAN->TSR & (uint8_t)(CAN_TSR_RQCP0|CAN_TSR_TXOK0)));
 873                     ; 678         tmpstate |= (uint8_t)((CAN->TPR & CAN_TPR_TME0));
 873                     ; 679         break;
 873                     ; 680     case (CAN_TransmitMailBox_1): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP1|CAN_TSR_TXOK1))>>1);
 873                     ; 681         tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME1) >> 1);
 873                     ; 682         break;
 873                     ; 683     case (CAN_TransmitMailBox_2): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP2|CAN_TSR_TXOK2))>>2);
 873                     ; 684         tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME2) >> 2);
 873                     ; 685         break;
 873                     ; 686     default:
 873                     ; 687         tstate = CAN_TxStatus_Failed;
 873                     ; 688         break;
 873                     ; 689     }
 873                     ; 690 
 873                     ; 691     switch (tmpstate)
 873                     ; 692     {
 873                     ; 693         /*transmit pending  */
 873                     ; 694     case (0x00): tstate = CAN_TxStatus_Pending;
 873                     ; 695         break;
 873                     ; 696         /* transmit failed  */
 873                     ; 697     case (0x05): tstate = CAN_TxStatus_Failed;
 873                     ; 698         break;
 873                     ; 699         /* transmit succeeded */
 873                     ; 700     case (0x15): tstate = CAN_TxStatus_Ok;
 873                     ; 701         break;
 873                     ; 702         /* transmit mailbox is empty : no activity on this TX mail box */
 873                     ; 703     case (0x04): tstate = CAN_TxStatus_MailBoxEmpty;
 873                     ; 704         break;
 873                     ; 705     default:
 873                     ; 706         tstate = CAN_TxStatus_Failed;
 873                     ; 707         break;
 873                     ; 708     }
 873                     ; 709 
 873                     ; 710     return (CAN_TxStatus_TypeDef)tstate;
 873                     ; 711 }
 873                     ; 712 
 873                     ; 713 /**
 873                     ; 714   * @brief  Cancels a transmit request.
 873                     ; 715   * @param   TransmitMailbox : the Transmission mailbox, can be one of CAN_TransmitMailBox_TypeDef
 873                     ; 716   * @retval None
 873                     ; 717   */
 873                     ; 718 void CAN_CancelTransmit(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
 873                     ; 719 {
 873                     ; 720     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 721     /* Check the parameters */
 873                     ; 722     assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
 873                     ; 723     /*switch to the specific page */
 873                     ; 724     CAN->PSR = (uint8_t)CAN_TransmitMailbox;
 873                     ; 725     /* abort transmission */
 873                     ; 726     CAN->Page.TxMailbox.MCSR |= CAN_MCSR_ABRQ;
 873                     ; 727     /*Restore Last Page*/
 873                     ; 728     CAN_SelectPage(can_page);
 873                     ; 729 }
 873                     ; 730 
 873                     ; 731 /**
 873                     ; 732   * @brief   Releases the CAN FIFO.
 873                     ; 733   * @param  None
 873                     ; 734   * @retval None
 873                     ; 735   */
 873                     ; 736 void CAN_FIFORelease(void)
 873                     ; 737 {
 873                     ; 738     /* Release FIFO*/
 873                     ; 739     CAN->RFR = CAN_RFR_RFOM; /*rc-w1*/
 873                     ; 740 }
 873                     ; 741 
 873                     ; 742 /**
 873                     ; 743   * @brief  Returns the number of pending messages.
 873                     ; 744   * @retval Number of pending messages.
 873                     ; 745   */
 873                     ; 746 CAN_NbrPendingMessage_TypeDef CAN_MessagePending(void)
 873                     ; 747 {
 873                     ; 748     CAN_NbrPendingMessage_TypeDef msgpending = CAN_NbrPendingMessage_0;
 873                     ; 749     msgpending = (CAN_NbrPendingMessage_TypeDef)(CAN->RFR & CAN_RFR_FMP01);
 873                     ; 750     return (CAN_NbrPendingMessage_TypeDef)msgpending;
 873                     ; 751 }
 873                     ; 752 
 873                     ; 753 /**
 873                     ; 754   * @brief   Receives a message which contains CAN Id, IDE, RTR
 873                     ; 755   * DLC, datas and FMI number.
 873                     ; 756   * In order to get these data, use CAN_GetReceivedId(), CAN_GetReceivedIDE(), CAN_GetReceivedRTR(),
 873                     ; 757   * CAN_GetReceivedDLC(), CAN_GetReceivedFMI() and CAN_GetReceivedData() functions.
 873                     ; 758   * @param  None
 873                     ; 759   * @retval None
 873                     ; 760   */
 873                     ; 761 void CAN_Receive(void)
 873                     ; 762 {
 873                     ; 763     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 764     uint32_t temp1 = 0, temp2 = 0, temp3 = 0;
 873                     ; 765 
 873                     ; 766     /* select Fifo page*/
 873                     ; 767     CAN->PSR = CAN_Page_RxFifo;
 873                     ; 768 
 873                     ; 769     /* Get the Id */
 873                     ; 770     _IDE = (uint8_t)(CAN->Page.RxFIFO.MIDR1 & CAN_Id_Extended);
 873                     ; 771     if (_IDE != CAN_Id_Standard)
 873                     ; 772     {
 873                     ; 773       temp1 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR3) << 8);
 873                     ; 774       temp2 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR2) << 16);  
 873                     ; 775       temp3 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 24);
 873                     ; 776 
 873                     ; 777       _Id = (uint32_t)CAN_EXTID_SIZE & ((CAN->Page.RxFIFO.MIDR4) | temp1 | temp2 | temp3 );
 873                     ; 778     }
 873                     ; 779     else
 873                     ; 780     {
 873                     ; 781         temp1 = (uint16_t)((uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 6));
 873                     ; 782         temp2 = (uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR2 >> 2)&0x3F);
 873                     ; 783 
 873                     ; 784       _Id = (uint16_t)CAN_STDID_SIZE & (temp1 | temp2 );
 873                     ; 785     }
 873                     ; 786 
 873                     ; 787     _RTR = (uint8_t)((uint8_t)0x20 & CAN->Page.RxFIFO.MIDR1);
 873                     ; 788 
 873                     ; 789     /* Get the DLC */
 873                     ; 790     _DLC = (uint8_t)(CAN->Page.RxFIFO.MDLCR & (uint8_t)0x0F);
 873                     ; 791 
 873                     ; 792     /* Get the FMI */
 873                     ; 793     _FMI = CAN->Page.RxFIFO.MFMI;
 873                     ; 794 
 873                     ; 795     /* Get the data field */
 873                     ; 796     _Data[0] = CAN->Page.RxFIFO.MDAR1;
 873                     ; 797     _Data[1] = CAN->Page.RxFIFO.MDAR2;
 873                     ; 798     _Data[2] = CAN->Page.RxFIFO.MDAR3;
 873                     ; 799     _Data[3] = CAN->Page.RxFIFO.MDAR4;
 873                     ; 800     _Data[4] = CAN->Page.RxFIFO.MDAR5;
 873                     ; 801     _Data[5] = CAN->Page.RxFIFO.MDAR6;
 873                     ; 802     _Data[6] = CAN->Page.RxFIFO.MDAR7;
 873                     ; 803     _Data[7] = CAN->Page.RxFIFO.MDAR8;
 873                     ; 804 
 873                     ; 805     /* Release the FIFO */
 873                     ; 806     CAN_FIFORelease();
 873                     ; 807     /*Restore Last Page*/
 873                     ; 808     CAN_SelectPage(can_page);
 873                     ; 809 }
 873                     ; 810 
 873                     ; 811 /**
 873                     ; 812   * @brief  Gets the  CAN Id of the received message.
 873                     ; 813   * @param  None
 873                     ; 814   * @retval the received CAN message Id.
 873                     ; 815   * @par Required preconditions:
 873                     ; 816   * This function is used to get data loaded by CAN_Receive function.
 873                     ; 817   * Before using this function, CAN_Receive function must be called.
 873                     ; 818   */
 873                     ; 819 uint32_t CAN_GetReceivedId(void)
 873                     ; 820 {
 873                     ; 821     return (_Id);
 873                     ; 822 }
 873                     ; 823 
 873                     ; 824 /**
 873                     ; 825   * @brief  Gets the  CAN IDE of the received message.
 873                     ; 826   * @param  None
 873                     ; 827   * @retval the received CAN message IDE.
 873                     ; 828   * @par Required preconditions:
 873                     ; 829   * This function is used to get data loaded by CAN_Receive function.
 873                     ; 830   * Before using this function, CAN_Receive function must be called.
 873                     ; 831   */
 873                     ; 832 CAN_Id_TypeDef CAN_GetReceivedIDE(void)
 873                     ; 833 {
 873                     ; 834     return (CAN_Id_TypeDef)(_IDE);
 873                     ; 835 }
 873                     ; 836 
 873                     ; 837 /**
 873                     ; 838   * @brief  Gets the  CAN RTR of the received message.
 873                     ; 839   * @param  None
 873                     ; 840   * @retval the received CAN message RTR.
 873                     ; 841   * @par Required preconditions:
 873                     ; 842   * This function is used to get data loaded by CAN_Receive function.
 873                     ; 843   * Before using this function, CAN_Receive function must be called.
 873                     ; 844   */
 873                     ; 845 CAN_RTR_TypeDef CAN_GetReceivedRTR(void)
 873                     ; 846 {
 873                     ; 847     return (CAN_RTR_TypeDef)(_RTR);
 873                     ; 848 }
 873                     ; 849 
 873                     ; 850 /**
 873                     ; 851   * @brief  Gets the  CAN DLC of the received message.
 873                     ; 852   * @param  None
 873                     ; 853   * @retval the received CAN message DLC.
 873                     ; 854   * @par Required preconditions:
 873                     ; 855   * This function is used to get data loaded by CAN_Receive function.
 873                     ; 856   * Before using this function, CAN_Receive function must be called.
 873                     ; 857   */
 873                     ; 858 uint8_t CAN_GetReceivedDLC(void)
 873                     ; 859 {
 873                     ; 860     return (_DLC);
 873                     ; 861 }
 873                     ; 862 
 873                     ; 863 /**
 873                     ; 864   * @brief  Gets the  CAN Data of the received message.
 873                     ; 865   * @param   CAN_DataIndexe : number of the received Data, it can
 873                     ; 866   *  be an integer between 0 to 7.
 873                     ; 867   * @retval the received CAN message ith Data.
 873                     ; 868   * @par Required preconditions:
 873                     ; 869   * This function is used to get data loaded by CAN_Receive function.
 873                     ; 870   * Before using this function, CAN_Receive function must be called.
 873                     ; 871   */
 873                     ; 872 uint8_t CAN_GetReceivedData(uint8_t CAN_DataIndex)
 873                     ; 873 {
 873                     ; 874     assert_param(IS_CAN_DLC_OK(CAN_DataIndex));
 873                     ; 875     return (_Data[CAN_DataIndex]);
 873                     ; 876 }
 873                     ; 877 
 873                     ; 878 /**
 873                     ; 879   * @brief  Gets the  CAN FMI of the received message.
 873                     ; 880   * @param  None
 873                     ; 881   * @retval the received CAN message FMI.
 873                     ; 882   * @par Required preconditions:
 873                     ; 883   * This function is used to get data loaded by CAN_Receive function.
 873                     ; 884   * Before using this function, CAN_Receive function must be called.
 873                     ; 885   */
 873                     ; 886 uint8_t CAN_GetReceivedFMI(void)
 873                     ; 887 {
 873                     ; 888     return (_FMI);
 873                     ; 889 }
 873                     ; 890 
 873                     ; 891 /**
 873                     ; 892   * @brief  Returns the Received time stamp.
 873                     ; 893   * @param  None
 873                     ; 894   * @retval uint16_t the received  time stamp.
 873                     ; 895   */
 873                     ; 896 uint16_t CAN_GetMessageTimeStamp(void)
 873                     ; 897 {
 873                     ; 898     uint16_t timestamp = 0;
 873                     ; 899     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 900 
 873                     ; 901     /*switch to the specific page */
 873                     ; 902     CAN->PSR = CAN_Page_RxFifo;
 873                     ; 903     /* Get the Received Time stamp */
 873                     ; 904     timestamp = CAN->Page.RxFIFO.MTSRL;
 873                     ; 905     timestamp |= (uint16_t)(((uint16_t)CAN->Page.RxFIFO.MTSRH)<<8);
 873                     ; 906 
 873                     ; 907     /*Restore Last Page*/
 873                     ; 908     CAN_SelectPage(can_page);
 873                     ; 909 
 873                     ; 910     return (uint16_t)(timestamp);
 873                     ; 911 }
 873                     ; 912 
 873                     ; 913 /**
 873                     ; 914   * @brief  Enters the Sleep low power mode.
 873                     ; 915   * @param  None
 873                     ; 916   * @retval  CAN_Sleep_Ok if sleep entered, CAN_Sleep_Failed in an other case.
 873                     ; 917   */
 873                     ; 918 CAN_Sleep_TypeDef CAN_Sleep(void)
 873                     ; 919 {
 873                     ; 920 
 873                     ; 921     CAN_Sleep_TypeDef sleepstatus = CAN_Sleep_Failed;
 873                     ; 922 
 873                     ; 923     /* Request Sleep mode */
 873                     ; 924     CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
 873                     ; 925 
 873                     ; 926     /* Sleep mode status */
 873                     ; 927     if ((CAN->MSR & (CAN_MSR_SLAK|CAN_MSR_INAK)) == CAN_MSR_SLAK)
 873                     ; 928     {
 873                     ; 929         /* Sleep mode not entered */
 873                     ; 930         sleepstatus =  CAN_Sleep_Ok;
 873                     ; 931     }
 873                     ; 932 
 873                     ; 933     /* At this step, sleep mode status */
 873                     ; 934     return (CAN_Sleep_TypeDef) sleepstatus;
 873                     ; 935 }
 873                     ; 936 
 873                     ; 937 /**
 873                     ; 938   * @brief  Wakes the CAN up.
 873                     ; 939   * @param  None
 873                     ; 940   * @retval CAN_WakeUp_Ok if sleep mode left, CAN_WakeUp_Failed in an other  case.
 873                     ; 941   */
 873                     ; 942 CAN_WakeUp_TypeDef CAN_WakeUp(void)
 873                     ; 943 {
 873                     ; 944     CAN_WakeUp_TypeDef wakeupstatus = CAN_WakeUp_Failed;
 873                     ; 945 
 873                     ; 946     /* Wake up request */
 873                     ; 947     CAN->MCR &= (uint8_t)(~CAN_MCR_SLEEP);
 873                     ; 948 
 873                     ; 949     /* Sleep mode status */
 873                     ; 950     if ((CAN->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
 873                     ; 951     {
 873                     ; 952         /* Sleep mode exited */
 873                     ; 953         wakeupstatus = CAN_WakeUp_Ok;
 873                     ; 954     }
 873                     ; 955 
 873                     ; 956     /* At this step, sleep mode status */
 873                     ; 957     return (CAN_WakeUp_TypeDef)wakeupstatus;
 873                     ; 958 }
 873                     ; 959 
 873                     ; 960 /**
 873                     ; 961   * @brief  Select the CAN Operation mode.
 873                     ; 962   * @param  CAN_OperatingMode CAN Operating Mode ,
 873                     ; 963   *         this parameter can be one of @ref CAN_OperatingMode_TypeDef enumeration.
 873                     ; 964   * @retval the status of the requested mode which can be 
 873                     ; 965   *         - CAN_ModeStatus_Failed    CAN failed entring the specific mode
 873                     ; 966   *         - CAN_ModeStatus_Success  CAN Succeed entring the specific mode 
 873                     ; 967 
 873                     ; 968   */
 873                     ; 969 CAN_ModeStatus_TypeDef CAN_OperatingModeRequest(CAN_OperatingMode_TypeDef CAN_OperatingMode)
 873                     ; 970 {
 873                     ; 971 
 873                     ; 972     uint16_t timeout = CAN_ACKNOWLEDGE_TIMEOUT;
 873                     ; 973     uint8_t modestatus = 0;
 873                     ; 974 
 873                     ; 975     assert_param(IS_CAN_OPERATINGMODE_OK(CAN_OperatingMode));
 873                     ; 976 
 873                     ; 977     if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
 873                     ; 978     {
 873                     ; 979         /* Request initialisation */
 873                     ; 980         CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_SLEEP)) | CAN_MCR_INRQ);
 873                     ; 981 
 873                     ; 982         /* Wait the acknowledge */
 873                     ; 983         while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
 873                     ; 984         {
 873                     ; 985             timeout--;
 873                     ; 986         }
 873                     ; 987         if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
 873                     ; 988         {
 873                     ; 989           modestatus = CAN_ModeStatus_Failed;
 873                     ; 990         }
 873                     ; 991         else
 873                     ; 992         {
 873                     ; 993           modestatus = CAN_ModeStatus_Success;  
 873                     ; 994         }
 873                     ; 995 
 873                     ; 996     }
 873                     ; 997     else  if (CAN_OperatingMode == CAN_OperatingMode_Normal)
 873                     ; 998     {
 873                     ; 999         /* Request leave initialisation and sleep mode  and enter Normal mode */
 873                     ; 1000         CAN->MCR &= (uint8_t)(~(CAN_MCR_SLEEP|CAN_MCR_INRQ));
 873                     ; 1001 
 873                     ; 1002         /* Wait the acknowledge */
 873                     ; 1003         while (((CAN->MSR & CAN_MODE_MASK) != 0) && (timeout!=0))
 873                     ; 1004         {
 873                     ; 1005             timeout--;
 873                     ; 1006         }
 873                     ; 1007         if ((CAN->MSR & CAN_MODE_MASK) != 0)
 873                     ; 1008         {
 873                     ; 1009           modestatus = CAN_ModeStatus_Failed;
 873                     ; 1010         }
 873                     ; 1011         else
 873                     ; 1012         {
 873                     ; 1013           modestatus = CAN_ModeStatus_Success;  
 873                     ; 1014         }
 873                     ; 1015     }
 873                     ; 1016     else  if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
 873                     ; 1017     {
 873                     ; 1018         /* Request Sleep mode */
 873                     ; 1019         CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
 873                     ; 1020 
 873                     ; 1021         /* Wait the acknowledge */
 873                     ; 1022         while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout!=0))
 873                     ; 1023         {
 873                     ; 1024             timeout--;
 873                     ; 1025         }
 873                     ; 1026         if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
 873                     ; 1027         {
 873                     ; 1028            modestatus = CAN_ModeStatus_Failed;  
 873                     ; 1029         }
 873                     ; 1030         else
 873                     ; 1031         {
 873                     ; 1032            modestatus = CAN_ModeStatus_Success;  
 873                     ; 1033         }
 873                     ; 1034     }
 873                     ; 1035     else
 873                     ; 1036     {
 873                     ; 1037          modestatus = CAN_ModeStatus_Failed;
 873                     ; 1038     }
 873                     ; 1039   return (CAN_ModeStatus_TypeDef)(modestatus);
 873                     ; 1040 }
 873                     ; 1041 
 873                     ; 1042 /**
 873                     ; 1043   * @brief  Gets the  Last Error Code.
 873                     ; 1044   * @param  None
 873                     ; 1045   * @retval Error Code.
 873                     ; 1046   */
 873                     ; 1047 CAN_ErrorCode_TypeDef CAN_GetLastErrorCode(void)
 873                     ; 1048 {
 873                     ; 1049     CAN_ErrorCode_TypeDef errcode = CAN_ErrorCode_NoErr;
 873                     ; 1050     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 1051 
 873                     ; 1052     CAN->PSR = CAN_Page_Config;
 873                     ; 1053     errcode = (CAN_ErrorCode_TypeDef)((CAN->Page.Config.ESR) & (CAN_ESR_LEC));
 873                     ; 1054 
 873                     ; 1055     /*Restore Last Page*/
 873                     ; 1056     CAN_SelectPage(can_page);
 873                     ; 1057 
 873                     ; 1058     return (CAN_ErrorCode_TypeDef)(errcode);
 873                     ; 1059 }
 873                     ; 1060 
 873                     ; 1061 /**
 873                     ; 1062   * @brief  Clears the CAN's pending flags.
 873                     ; 1063   * @param   CAN_FLAG : Flag to be cleared, can be one of the following parameters:
 873                     ; 1064   *          CAN_FLAG_RQCP0            Request MailBox0  Flag
 873                     ; 1065   *          CAN_FLAG_RQCP1            Request MailBox1  Flag
 873                     ; 1066   *          CAN_FLAG_RQCP2            Request MailBox2  Flag
 873                     ; 1067   *       CAN_FLAG_FF               FIFO Full  Flag
 873                     ; 1068   *       CAN_FLAG_FOV              FIFO Overrun  Flag
 873                     ; 1069   *       CAN_FLAG_WKU              wake up   Flag
 873                     ; 1070   *          CAN_FLAG_LEC               Last error code Flag
 873                     ; 1071   * @retval None
 873                     ; 1072   */
 873                     ; 1073 void CAN_ClearFlag(CAN_FLAG_TypeDef CAN_Flag)
 873                     ; 1074 {
 873                     ; 1075     CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
 873                     ; 1076     /* Check the parameters */
 873                     ; 1077     assert_param(IS_CAN_FLAG_CLEAR_OK(CAN_Flag));
 873                     ; 1078     if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
 873                     ; 1079     {
 873                     ; 1080         if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
 873                     ; 1081         {
 873                     ; 1082             /*Receive Flags*/
 873                     ; 1083             CAN->RFR = (uint8_t)(CAN_Flag);
 873                     ; 1084         }
 873                     ; 1085         else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
 873                     ; 1086         {
 873                     ; 1087             /*Transmit Flags*/
 873                     ; 1088             CAN->TSR = (uint8_t)(CAN_Flag);
 873                     ; 1089         }
 873                     ; 1090         else /*if((CAN_Flag & 0x0108)!=(uint16_t)RESET)*/
 873                     ; 1091         {
 873                     ; 1092             /*wake up Flags*/
 873                     ; 1093             CAN->MSR = (uint8_t)(CAN_Flag);
 873                     ; 1094         }
 873                     ; 1095     }
 873                     ; 1096     else
 873                     ; 1097     {
 873                     ; 1098         /*Error Flags*/
 873                     ; 1099         can_page = CAN_GetSelectedPage();
 873                     ; 1100 
 873                     ; 1101         /* Clear the selected CAN flags */
 873                     ; 1102         CAN->PSR = CAN_Page_Config;
 873                     ; 1103         CAN->Page.Config.ESR = (uint8_t)RESET;
 873                     ; 1104 
 873                     ; 1105         /*Restore Last Page*/
 873                     ; 1106         CAN_SelectPage(can_page);
 873                     ; 1107     }
 873                     ; 1108 }
 873                     ; 1109 
 873                     ; 1110 /**
 873                     ; 1111   * @brief  Checks whether the specified CAN flag is set or not.
 873                     ; 1112   * @param   CAN_FLAG: specifies the flag to check, can be one of @ref CAN_FLAG_TypeDef enumeration.
 873                     ; 1113   * @retval The new state of CAN_FLAG which can be one of @ref FlagStatus.
 873                     ; 1114   */
 873                     ; 1115 FlagStatus CAN_GetFlagStatus(CAN_FLAG_TypeDef CAN_Flag)
 873                     ; 1116 {
 873                     ; 1117     FlagStatus bitstatus = RESET;
 873                     ; 1118     CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
 873                     ; 1119 
 873                     ; 1120     /* Check the parameters */
 873                     ; 1121     assert_param(IS_CAN_FLAG_STATUS_OK(CAN_Flag));
 873                     ; 1122 
 873                     ; 1123     if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
 873                     ; 1124     {
 873                     ; 1125         if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
 873                     ; 1126         {
 873                     ; 1127             /*Receive Flags*/
 873                     ; 1128             if ((CAN->RFR & (uint16_t)CAN_Flag )!= RESET)
 873                     ; 1129             {
 873                     ; 1130                 /* CAN_FLAG is set */
 873                     ; 1131                 bitstatus = SET;
 873                     ; 1132             }
 873                     ; 1133             else
 873                     ; 1134             {
 873                     ; 1135                 /* CAN_FLAG is reset */
 873                     ; 1136                 bitstatus = RESET;
 873                     ; 1137             }
 873                     ; 1138 
 873                     ; 1139         }
 873                     ; 1140         else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
 873                     ; 1141         {
 873                     ; 1142             /*Transmit Flags*/
 873                     ; 1143             if ((CAN->TSR & (uint16_t)CAN_Flag )!= RESET)
 873                     ; 1144             {
 873                     ; 1145                 /* CAN_FLAG is set */
 873                     ; 1146                 bitstatus = SET;
 873                     ; 1147             }
 873                     ; 1148             else
 873                     ; 1149             {
 873                     ; 1150                 /* CAN_FLAG is reset */
 873                     ; 1151                 bitstatus = RESET;
 873                     ; 1152             }
 873                     ; 1153         }
 873                     ; 1154         else /*if((CAN_Flag & 0x0108)!=(uint16_t)RESET)*/
 873                     ; 1155         {
 873                     ; 1156             /*wake up Flags*/
 873                     ; 1157             if ((CAN->MSR & (uint16_t)CAN_Flag )!= RESET)
 873                     ; 1158             {
 873                     ; 1159                 /* CAN_FLAG is set */
 873                     ; 1160                 bitstatus = SET;
 873                     ; 1161             }
 873                     ; 1162             else
 873                     ; 1163             {
 873                     ; 1164                 /* CAN_FLAG is reset */
 873                     ; 1165                 bitstatus = RESET;
 873                     ; 1166             }
 873                     ; 1167         }
 873                     ; 1168     }
 873                     ; 1169     else
 873                     ; 1170     {
 873                     ; 1171         /*Error Flags*/
 873                     ; 1172         can_page = CAN_GetSelectedPage();
 873                     ; 1173 
 873                     ; 1174         CAN->PSR = CAN_Page_Config;
 873                     ; 1175         if ((CAN->Page.Config.ESR & (uint16_t)CAN_Flag) != RESET)
 873                     ; 1176         {
 873                     ; 1177             /* CAN_FLAG is set */
 873                     ; 1178             bitstatus = SET;
 873                     ; 1179         }
 873                     ; 1180         else
 873                     ; 1181         {
 873                     ; 1182             /* CAN_FLAG is reset */
 873                     ; 1183             bitstatus = RESET;
 873                     ; 1184         }
 873                     ; 1185         /*Restore Last Page*/
 873                     ; 1186         CAN_SelectPage(can_page);
 873                     ; 1187     }
 873                     ; 1188 
 873                     ; 1189 
 873                     ; 1190     /* Return the CAN_FLAG status */
 873                     ; 1191     return  (FlagStatus)bitstatus;
 873                     ; 1192 }
 873                     ; 1193 
 873                     ; 1194 /**
 873                     ; 1195   * @brief  Checks whether the specified CAN interrupt has occurred or not.
 873                     ; 1196   * @param   CAN_IT: specifies the CAN interrupt source to check, can be one of @ref CAN_IT_TypeDef.
 873                     ; 1197   * @retval The new state of CAN_IT, which can be one of @ref ITStatus.
 873                     ; 1198   */
 873                     ; 1199 ITStatus CAN_GetITStatus(CAN_IT_TypeDef CAN_IT)
 873                     ; 1200 {
 873                     ; 1201     ITStatus pendingbitstatus = RESET;
 873                     ; 1202     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 1203 
 873                     ; 1204     /* Check the parameters */
 873                     ; 1205     assert_param(IS_CAN_IT_STATUS_OK(CAN_IT));
 873                     ; 1206 
 873                     ; 1207 
 873                     ; 1208     switch (CAN_IT)
 873                     ; 1209     {
 873                     ; 1210     case CAN_IT_TME:
 873                     ; 1211         if ((CAN->IER & CAN_IER_TMEIE) !=RESET)
 873                     ; 1212         {
 873                     ; 1213             pendingbitstatus = CheckITStatus(CAN->TSR, CAN_TSR_RQCP012);
 873                     ; 1214         }
 873                     ; 1215         else
 873                     ; 1216         {
 873                     ; 1217             pendingbitstatus = RESET;
 873                     ; 1218         }
 873                     ; 1219         break;
 873                     ; 1220 
 873                     ; 1221     case CAN_IT_FMP:
 873                     ; 1222         if ((CAN->IER & CAN_IER_FMPIE) !=RESET)
 873                     ; 1223         {
 873                     ; 1224             pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FMP01);
 873                     ; 1225         }
 873                     ; 1226         else
 873                     ; 1227         {
 873                     ; 1228             pendingbitstatus = RESET;
 873                     ; 1229         }
 873                     ; 1230         break;
 873                     ; 1231     case CAN_IT_FF:
 873                     ; 1232         if ((CAN->IER & CAN_IER_FFIE) !=RESET)
 873                     ; 1233         {
 873                     ; 1234             pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FULL);
 873                     ; 1235         }
 873                     ; 1236         else
 873                     ; 1237         {
 873                     ; 1238             pendingbitstatus = RESET;
 873                     ; 1239         }
 873                     ; 1240         break;
 873                     ; 1241     case CAN_IT_FOV:
 873                     ; 1242         if ((CAN->IER & CAN_IER_FOVIE) !=RESET)
 873                     ; 1243         {
 873                     ; 1244             pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FOVR);
 873                     ; 1245         }
 873                     ; 1246         else
 873                     ; 1247         {
 873                     ; 1248             pendingbitstatus = RESET;
 873                     ; 1249         }
 873                     ; 1250         break;
 873                     ; 1251     case CAN_IT_WKU:
 873                     ; 1252         if ((CAN->IER & CAN_IER_WKUIE) !=RESET)
 873                     ; 1253         {
 873                     ; 1254             pendingbitstatus = CheckITStatus(CAN->MSR, CAN_MSR_WKUI);
 873                     ; 1255         }
 873                     ; 1256         else
 873                     ; 1257         {
 873                     ; 1258             pendingbitstatus = RESET;
 873                     ; 1259         }
 873                     ; 1260         break;
 873                     ; 1261 
 873                     ; 1262     case CAN_IT_ERR:
 873                     ; 1263         CAN->PSR = CAN_Page_Config;
 873                     ; 1264         if ((CAN->Page.Config.EIER & CAN_EIER_ERRIE) !=RESET)
 873                     ; 1265         {
 873                     ; 1266             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF|CAN_ESR_EPVF|CAN_ESR_BOFF|CAN_ESR_LEC);
 873                     ; 1267         }
 873                     ; 1268         else
 873                     ; 1269         {
 873                     ; 1270             pendingbitstatus = RESET;
 873                     ; 1271         }
 873                     ; 1272         break;
 873                     ; 1273 
 873                     ; 1274     case CAN_IT_EWG:
 873                     ; 1275         CAN->PSR = CAN_Page_Config;
 873                     ; 1276         if ((CAN->Page.Config.EIER & CAN_EIER_EWGIE) !=RESET)
 873                     ; 1277         {
 873                     ; 1278             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF);
 873                     ; 1279         }
 873                     ; 1280         else
 873                     ; 1281         {
 873                     ; 1282             pendingbitstatus = RESET;
 873                     ; 1283         }
 873                     ; 1284         break;
 873                     ; 1285 
 873                     ; 1286     case CAN_IT_EPV:
 873                     ; 1287         CAN->PSR = CAN_Page_Config;
 873                     ; 1288         if ((CAN->Page.Config.EIER & CAN_EIER_EPVIE) !=RESET)
 873                     ; 1289         {
 873                     ; 1290             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EPVF);
 873                     ; 1291         }
 873                     ; 1292         else
 873                     ; 1293         {
 873                     ; 1294             pendingbitstatus = RESET;
 873                     ; 1295         }
 873                     ; 1296         break;
 873                     ; 1297     case CAN_IT_BOF:
 873                     ; 1298         CAN->PSR = CAN_Page_Config;
 873                     ; 1299         if ((CAN->Page.Config.EIER & CAN_EIER_BOFIE) !=RESET)
 873                     ; 1300         {
 873                     ; 1301             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_BOFF);
 873                     ; 1302         }
 873                     ; 1303         else
 873                     ; 1304         {
 873                     ; 1305             pendingbitstatus = RESET;
 873                     ; 1306         }
 873                     ; 1307         break;
 873                     ; 1308     case CAN_IT_LEC:
 873                     ; 1309         CAN->PSR = CAN_Page_Config;
 873                     ; 1310         if ((CAN->Page.Config.EIER & CAN_EIER_LECIE) !=RESET)
 873                     ; 1311         {
 873                     ; 1312             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_LEC);
 873                     ; 1313         }
 873                     ; 1314         else
 873                     ; 1315         {
 873                     ; 1316             pendingbitstatus = RESET;
 873                     ; 1317         }
 873                     ; 1318         break;
 873                     ; 1319     default :
 873                     ; 1320         pendingbitstatus = RESET;
 873                     ; 1321         break;
 873                     ; 1322     }
 873                     ; 1323     /*Restore Last Page*/
 873                     ; 1324     CAN_SelectPage(can_page);
 873                     ; 1325     /* Return the CAN_IT status */
 873                     ; 1326     return  (ITStatus)pendingbitstatus;
 873                     ; 1327 }
 873                     ; 1328 
 873                     ; 1329 /**
 873                     ; 1330   * @brief   Clears the CAN’s interrupt pending bits.
 873                     ; 1331   * @param   CAN_IT: specifies the interrupt pending bit to clear,
 873                     ; 1332   *  can be one of the following parameters:
 873                     ; 1333   *                            CAN_IT_TME = Transmit mailbox empty interrupt
 873                     ; 1334   *                             CAN_IT_FF =FIFO  full    interrupt
 873                     ; 1335   *                            CAN_IT_FOV =FIFO  overrun  interrupt
 873                     ; 1336   *                             CAN_IT_WKU =Wake-up interrupt
 873                     ; 1337   *                             CAN_IT_ERR =General Error interrupt
 873                     ; 1338   *                             CAN_IT_EWG =Error warning interrupt
 873                     ; 1339   *                             CAN_IT_EPV  =Error passive  interrupt
 873                     ; 1340   *                             CAN_IT_BOF = Bus-off   interrupt
 873                     ; 1341   *                             CAN_IT_LEC  =Last error code interrupt
 873                     ; 1342   * @retval None
 873                     ; 1343   */
 873                     ; 1344 void CAN_ClearITPendingBit(CAN_IT_TypeDef CAN_IT)
 873                     ; 1345 {
 873                     ; 1346     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 873                     ; 1347     /* Check the parameters */
 873                     ; 1348     assert_param(IS_CAN_IT_PENDING_BIT_OK(CAN_IT));
 873                     ; 1349 
 873                     ; 1350     switch (CAN_IT)
 873                     ; 1351     {
 873                     ; 1352     case CAN_IT_TME:
 873                     ; 1353         CAN->TSR = CAN_TSR_RQCP012;/* rc_w1*/
 873                     ; 1354         break;
 873                     ; 1355 
 873                     ; 1356     case CAN_IT_FF:
 873                     ; 1357         CAN->RFR = CAN_RFR_FULL; /* rc_w1*/
 873                     ; 1358         break;
 873                     ; 1359 
 873                     ; 1360     case CAN_IT_FOV:
 873                     ; 1361         CAN->RFR = CAN_RFR_FOVR; /* rc_w1*/
 873                     ; 1362         break;
 873                     ; 1363 
 873                     ; 1364     case CAN_IT_WKU:
 873                     ; 1365         CAN->MSR = CAN_MSR_WKUI;  /* rc_w1*/
 873                     ; 1366         break;
 873                     ; 1367 
 873                     ; 1368     case CAN_IT_ERR:
 873                     ; 1369         CAN->PSR = CAN_Page_Config;
 873                     ; 1370         CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
 873                     ; 1371         CAN->MSR = CAN_MSR_ERRI;
 873                     ; 1372         break;
 873                     ; 1373 
 873                     ; 1374     case CAN_IT_EWG:
 873                     ; 1375         CAN->MSR = CAN_MSR_ERRI;
 873                     ; 1376         break;
 873                     ; 1377 
 873                     ; 1378     case CAN_IT_EPV:
 873                     ; 1379         CAN->MSR = CAN_MSR_ERRI;
 873                     ; 1380         break;
 873                     ; 1381 
 873                     ; 1382     case CAN_IT_BOF:
 873                     ; 1383         CAN->MSR = CAN_MSR_ERRI;
 873                     ; 1384         break;
 873                     ; 1385 
 873                     ; 1386     case CAN_IT_LEC:
 873                     ; 1387         CAN->PSR = CAN_Page_Config;
 873                     ; 1388         CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
 873                     ; 1389         break;
 873                     ; 1390 
 873                     ; 1391 
 873                     ; 1392 
 873                     ; 1393     default :
 873                     ; 1394         break;
 873                     ; 1395     }
 873                     ; 1396     /*Restore Last Page*/
 873                     ; 1397     CAN_SelectPage(can_page);
 873                     ; 1398 }
 873                     ; 1399 
 873                     ; 1400 /**
 873                     ; 1401   * @brief  Gets the selected registers page.
 873                     ; 1402   * @param  None
 873                     ; 1403   * @retval the selected page which can be one of the @ref CAN_Page_TypeDef.
 873                     ; 1404   */
 873                     ; 1405 CAN_Page_TypeDef CAN_GetSelectedPage(void)
 873                     ; 1406 {
 873                     ; 1407     return (CAN_Page_TypeDef)(CAN->PSR);
 873                     ; 1408 }
 873                     ; 1409 
 873                     ; 1410 /**
 873                     ; 1411   * @brief  Sets the registers page to be selected.
 873                     ; 1412   * @param   the selected page which can be one of the @ref CAN_Page_TypeDef.
 873                     ; 1413   * @retval None
 873                     ; 1414   */
 873                     ; 1415 void CAN_SelectPage(CAN_Page_TypeDef CAN_Page)
 873                     ; 1416 {
 873                     ; 1417     CAN->PSR = (uint8_t)CAN_Page;
 873                     ; 1418 }
 873                     ; 1419 
 873                     ; 1420 /**
 873                     ; 1421   * @brief  Checks whether the CAN interrupt has occurred or not.
 873                     ; 1422   * @param   CAN_Reg: specifies the CAN interrupt register to check.
 873                     ; 1423   * @param   It_Bit: specifies the interrupt source bit to check.
 873                     ; 1424   * @retval The new state of the CAN Interrupt, which can be one of ITStatus.
 873                     ; 1425   */
 873                     ; 1426 static ITStatus CheckITStatus(uint8_t CAN_Reg, uint8_t It_Bit)
 873                     ; 1427 {
 873                     ; 1428     ITStatus pendingbitstatus = RESET;
 873                     ; 1429     if ((CAN_Reg & It_Bit) != (uint8_t)RESET)
 873                     ; 1430     {
 873                     ; 1431         /* CAN_IT is set */
 873                     ; 1432         pendingbitstatus = SET;
 873                     ; 1433     }
 873                     ; 1434     else
 873                     ; 1435     {
 873                     ; 1436         /* CAN_IT is reset */
 873                     ; 1437         pendingbitstatus = RESET;
 873                     ; 1438     }
 873                     ; 1439     return (ITStatus)pendingbitstatus;
 873                     ; 1440 }
 873                     ; 1441 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
 875  00c6 5a            	decw	x
 876  00c7               L123:
 877  00c7 1f03          	ldw	(OFST-1,sp),x
 878                     ; 151         while ((((uint8_t)(CAN->MSR & CAN_MSR_INAK) == 0x01))&&(timeout != 0))
 878                     ; 152         {
 878                     ; 153             timeout--;
 880  00c9 7201542102    	btjf	21537,#0,L523
 882  00ce 26f6          	jrne	L513
 883  00d0               L523:
 884                     ; 156         if ((CAN->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
 886  00d0 7201542102    	btjf	21537,#0,L723
 887                     ; 158             InitStatus = CAN_InitStatus_Failed;
 889  00d5 20b7          	jp	LC001
 890  00d7               L723:
 891                     ; 162             InitStatus = CAN_InitStatus_Success;
 893  00d7 a601          	ld	a,#1
 894  00d9 6b02          	ld	(OFST-2,sp),a
 895  00db 20b3          	jra	L313
 896  00dd               LC002:
 897  00dd 89            	pushw	x
 898  00de 5f            	clrw	x
 899  00df 89            	pushw	x
 900  00e0 ae0008        	ldw	x,#L572
 901  00e3 cd0000        	call	_assert_failed
 903  00e6 5b04          	addw	sp,#4
 904  00e8 81            	ret	
1215                     ; 188 void CAN_FilterInit(CAN_FilterNumber_TypeDef CAN_FilterNumber,
1215                     ; 189                     FunctionalState CAN_FilterActivation,
1215                     ; 190                     CAN_FilterMode_TypeDef CAN_FilterMode,
1215                     ; 191                     CAN_FilterScale_TypeDef CAN_FilterScale,
1215                     ; 192                     uint8_t CAN_FilterID1,
1215                     ; 193                     uint8_t CAN_FilterID2,
1215                     ; 194                     uint8_t CAN_FilterID3,
1215                     ; 195                     uint8_t CAN_FilterID4,
1215                     ; 196                     uint8_t CAN_FilterIDMask1,
1215                     ; 197                     uint8_t CAN_FilterIDMask2,
1215                     ; 198                     uint8_t CAN_FilterIDMask3,
1215                     ; 199                     uint8_t CAN_FilterIDMask4)
1215                     ; 200 {
1216                     .text:	section	.text,new
1217  0000               _CAN_FilterInit:
1219  0000 89            	pushw	x
1220  0001 5205          	subw	sp,#5
1221       00000005      OFST:	set	5
1224                     ; 201     uint8_t fact = 0;
1226                     ; 202     uint8_t fsc  = 0;
1228                     ; 203     uint8_t fmhl = 0;
1230                     ; 205     CAN_Page_TypeDef can_page_filter = CAN_Page_Filter01;
1232                     ; 206     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
1234  0003 cd0000        	call	_CAN_GetSelectedPage
1236  0006 6b01          	ld	(OFST-4,sp),a
1237                     ; 209     assert_param(IS_CAN_FILTER_NUMBER_OK(CAN_FilterNumber));
1239  0008 7b06          	ld	a,(OFST+1,sp)
1240  000a 271a          	jreq	L601
1241  000c a101          	cp	a,#1
1242  000e 2716          	jreq	L601
1243  0010 a102          	cp	a,#2
1244  0012 2712          	jreq	L601
1245  0014 a103          	cp	a,#3
1246  0016 270e          	jreq	L601
1247  0018 a104          	cp	a,#4
1248  001a 270a          	jreq	L601
1249  001c a105          	cp	a,#5
1250  001e 2706          	jreq	L601
1251  0020 ae00d1        	ldw	x,#209
1252  0023 cd030c        	call	LC013
1253  0026               L601:
1254                     ; 210     assert_param(IS_FUNCTIONALSTATE_OK(CAN_FilterActivation));
1256  0026 7b07          	ld	a,(OFST+2,sp)
1257  0028 2709          	jreq	L611
1258  002a 4a            	dec	a
1259  002b 2706          	jreq	L611
1260  002d ae00d2        	ldw	x,#210
1261  0030 cd030c        	call	LC013
1262  0033               L611:
1263                     ; 211     assert_param(IS_CAN_FILTER_MODE_OK(CAN_FilterMode));
1265  0033 7b0a          	ld	a,(OFST+5,sp)
1266  0035 2711          	jreq	L621
1267  0037 a110          	cp	a,#16
1268  0039 270d          	jreq	L621
1269  003b a111          	cp	a,#17
1270  003d 2709          	jreq	L621
1271  003f 4a            	dec	a
1272  0040 2706          	jreq	L621
1273  0042 ae00d3        	ldw	x,#211
1274  0045 cd030c        	call	LC013
1275  0048               L621:
1276                     ; 212     assert_param(IS_CAN_FILTER_SCALE_OK(CAN_FilterScale));
1278  0048 7b0b          	ld	a,(OFST+6,sp)
1279  004a 2712          	jreq	L631
1280  004c a102          	cp	a,#2
1281  004e 270e          	jreq	L631
1282  0050 a104          	cp	a,#4
1283  0052 270a          	jreq	L631
1284  0054 a106          	cp	a,#6
1285  0056 2706          	jreq	L631
1286  0058 ae00d4        	ldw	x,#212
1287  005b cd030c        	call	LC013
1288  005e               L631:
1289                     ; 215     if (CAN_FilterNumber == CAN_FilterNumber_0)
1291  005e 7b06          	ld	a,(OFST+1,sp)
1292  0060 260d          	jrne	L305
1293                     ; 217         fact = 0x01;
1295  0062 4c            	inc	a
1296  0063 6b03          	ld	(OFST-2,sp),a
1297                     ; 218         fsc  = 0x00;
1299  0065 0f04          	clr	(OFST-1,sp)
1300                     ; 219         fmhl = 0x03;
1302  0067 a603          	ld	a,#3
1303  0069 6b05          	ld	(OFST+0,sp),a
1304                     ; 221         can_page_filter = CAN_Page_Filter01;
1306  006b a602          	ld	a,#2
1308  006d 2059          	jra	L505
1309  006f               L305:
1310                     ; 223     else if (CAN_FilterNumber == CAN_FilterNumber_1)
1312  006f a101          	cp	a,#1
1313  0071 2610          	jrne	L705
1314                     ; 225         fact = 0x10;
1316  0073 a610          	ld	a,#16
1317  0075 6b03          	ld	(OFST-2,sp),a
1318                     ; 226         fsc  = 0x04;
1320  0077 a604          	ld	a,#4
1321  0079 6b04          	ld	(OFST-1,sp),a
1322                     ; 227         fmhl = 0x0C;
1324  007b a60c          	ld	a,#12
1325  007d 6b05          	ld	(OFST+0,sp),a
1326                     ; 229         can_page_filter = CAN_Page_Filter01;
1328  007f a602          	ld	a,#2
1330  0081 2045          	jra	L505
1331  0083               L705:
1332                     ; 231     else if (CAN_FilterNumber == CAN_FilterNumber_2)
1334  0083 a102          	cp	a,#2
1335  0085 260e          	jrne	L315
1336                     ; 233         fact = 0x01;
1338  0087 a601          	ld	a,#1
1339  0089 6b03          	ld	(OFST-2,sp),a
1340                     ; 234         fsc  = 0x00;
1342  008b 0f04          	clr	(OFST-1,sp)
1343                     ; 235         fmhl = 0x30;
1345  008d a630          	ld	a,#48
1346  008f 6b05          	ld	(OFST+0,sp),a
1347                     ; 237         can_page_filter = CAN_Page_Filter23;
1349  0091 a603          	ld	a,#3
1351  0093 2033          	jra	L505
1352  0095               L315:
1353                     ; 239     else if (CAN_FilterNumber == CAN_FilterNumber_3)
1355  0095 a103          	cp	a,#3
1356  0097 2610          	jrne	L715
1357                     ; 241         fact = 0x10;
1359  0099 a610          	ld	a,#16
1360  009b 6b03          	ld	(OFST-2,sp),a
1361                     ; 242         fsc  = 0x04;
1363  009d a604          	ld	a,#4
1364  009f 6b04          	ld	(OFST-1,sp),a
1365                     ; 243         fmhl = 0xC0;
1367  00a1 a6c0          	ld	a,#192
1368  00a3 6b05          	ld	(OFST+0,sp),a
1369                     ; 245         can_page_filter = CAN_Page_Filter23;
1371  00a5 a603          	ld	a,#3
1373  00a7 201f          	jra	L505
1374  00a9               L715:
1375                     ; 247     else if (CAN_FilterNumber == CAN_FilterNumber_4)
1377  00a9 a104          	cp	a,#4
1378  00ab 260d          	jrne	L325
1379                     ; 249         fact = 0x01;
1381  00ad a601          	ld	a,#1
1382  00af 6b03          	ld	(OFST-2,sp),a
1383                     ; 250         fsc  = 0x00;
1385  00b1 0f04          	clr	(OFST-1,sp)
1386                     ; 251         fmhl = 0x03;
1388  00b3 a603          	ld	a,#3
1389  00b5 6b05          	ld	(OFST+0,sp),a
1390                     ; 253         can_page_filter = CAN_Page_Filter45;
1392  00b7 4c            	inc	a
1394  00b8 200e          	jra	L505
1395  00ba               L325:
1396                     ; 257         fact = 0x10;
1398  00ba a610          	ld	a,#16
1399  00bc 6b03          	ld	(OFST-2,sp),a
1400                     ; 258         fsc  = 0x04;
1402  00be a604          	ld	a,#4
1403  00c0 6b04          	ld	(OFST-1,sp),a
1404                     ; 259         fmhl = 0x0C;
1406  00c2 a60c          	ld	a,#12
1407  00c4 6b05          	ld	(OFST+0,sp),a
1408                     ; 261         can_page_filter = CAN_Page_Filter45;
1410  00c6 a604          	ld	a,#4
1411  00c8               L505:
1412  00c8 6b02          	ld	(OFST-3,sp),a
1413                     ; 265     CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
1415  00ca 4f            	clr	a
1416  00cb cd0000        	call	_CAN_OperatingModeRequest
1418                     ; 267     CAN->PSR = CAN_Page_Config;
1420  00ce 35065427      	mov	21543,#6
1421                     ; 272     if (can_page_filter == CAN_Page_Filter01) /* FCR1 */
1423  00d2 7b02          	ld	a,(OFST-3,sp)
1424  00d4 a102          	cp	a,#2
1425  00d6 2629          	jrne	L725
1426                     ; 275         CAN->Page.Config.FCR1 &= (uint8_t)(~(uint8_t)(fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc )));
1428  00d8 7b04          	ld	a,(OFST-1,sp)
1429  00da cd0318        	call	LC014
1430  00dd 2704          	jreq	L441
1431  00df               L641:
1432  00df 48            	sll	a
1433  00e0 5a            	decw	x
1434  00e1 26fc          	jrne	L641
1435  00e3               L441:
1436  00e3 1a03          	or	a,(OFST-2,sp)
1437  00e5 43            	cpl	a
1438  00e6 c45432        	and	a,21554
1439  00e9 c75432        	ld	21554,a
1440                     ; 277         CAN->Page.Config.FCR1 |= (uint8_t)(CAN_FilterScale << fsc);
1442  00ec 5f            	clrw	x
1443  00ed 7b04          	ld	a,(OFST-1,sp)
1444  00ef 97            	ld	xl,a
1445  00f0 7b0b          	ld	a,(OFST+6,sp)
1446  00f2 5d            	tnzw	x
1447  00f3 2704          	jreq	L051
1448  00f5               L251:
1449  00f5 48            	sll	a
1450  00f6 5a            	decw	x
1451  00f7 26fc          	jrne	L251
1452  00f9               L051:
1453  00f9 ca5432        	or	a,21554
1454  00fc c75432        	ld	21554,a
1456  00ff 2054          	jra	L135
1457  0101               L725:
1458                     ; 279     else if (can_page_filter == CAN_Page_Filter23) /* FCR2*/
1460  0101 a103          	cp	a,#3
1461  0103 2629          	jrne	L335
1462                     ; 282         CAN->Page.Config.FCR2 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
1464  0105 7b04          	ld	a,(OFST-1,sp)
1465  0107 cd0318        	call	LC014
1466  010a 2704          	jreq	L451
1467  010c               L651:
1468  010c 48            	sll	a
1469  010d 5a            	decw	x
1470  010e 26fc          	jrne	L651
1471  0110               L451:
1472  0110 1a03          	or	a,(OFST-2,sp)
1473  0112 43            	cpl	a
1474  0113 c45433        	and	a,21555
1475  0116 c75433        	ld	21555,a
1476                     ; 285         CAN->Page.Config.FCR2 |= (uint8_t)(CAN_FilterScale << fsc);
1478  0119 5f            	clrw	x
1479  011a 7b04          	ld	a,(OFST-1,sp)
1480  011c 97            	ld	xl,a
1481  011d 7b0b          	ld	a,(OFST+6,sp)
1482  011f 5d            	tnzw	x
1483  0120 2704          	jreq	L061
1484  0122               L261:
1485  0122 48            	sll	a
1486  0123 5a            	decw	x
1487  0124 26fc          	jrne	L261
1488  0126               L061:
1489  0126 ca5433        	or	a,21555
1490  0129 c75433        	ld	21555,a
1492  012c 2027          	jra	L135
1493  012e               L335:
1494                     ; 291         CAN->Page.Config.FCR3 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
1496  012e 7b04          	ld	a,(OFST-1,sp)
1497  0130 cd0318        	call	LC014
1498  0133 2704          	jreq	L461
1499  0135               L661:
1500  0135 48            	sll	a
1501  0136 5a            	decw	x
1502  0137 26fc          	jrne	L661
1503  0139               L461:
1504  0139 1a03          	or	a,(OFST-2,sp)
1505  013b 43            	cpl	a
1506  013c c45434        	and	a,21556
1507  013f c75434        	ld	21556,a
1508                     ; 294         CAN->Page.Config.FCR3 |= (uint8_t)(CAN_FilterScale << fsc);
1510  0142 5f            	clrw	x
1511  0143 7b04          	ld	a,(OFST-1,sp)
1512  0145 97            	ld	xl,a
1513  0146 7b0b          	ld	a,(OFST+6,sp)
1514  0148 5d            	tnzw	x
1515  0149 2704          	jreq	L071
1516  014b               L271:
1517  014b 48            	sll	a
1518  014c 5a            	decw	x
1519  014d 26fc          	jrne	L271
1520  014f               L071:
1521  014f ca5434        	or	a,21556
1522  0152 c75434        	ld	21556,a
1523  0155               L135:
1524                     ; 300     if (can_page_filter != CAN_Page_Filter45) /* FMR1*/
1526  0155 7b02          	ld	a,(OFST-3,sp)
1527  0157 a104          	cp	a,#4
1528  0159 272d          	jreq	L735
1529                     ; 303         if (CAN_FilterMode == CAN_FilterMode_IdMask)
1531  015b 7b0a          	ld	a,(OFST+5,sp)
1532  015d 2608          	jrne	L145
1533                     ; 306             CAN->Page.Config.FMR1 &= (uint8_t)~(fmhl);
1535  015f 7b05          	ld	a,(OFST+0,sp)
1536  0161 43            	cpl	a
1537  0162 c45430        	and	a,21552
1539  0165 201c          	jp	LC005
1540  0167               L145:
1541                     ; 308         else if ( CAN_FilterMode == CAN_FilterMode_IdList)
1543  0167 a101          	cp	a,#1
1544  0169 2607          	jrne	L545
1545                     ; 311             CAN->Page.Config.FMR1 |= (uint8_t)(fmhl);
1547  016b c65430        	ld	a,21552
1548  016e 1a05          	or	a,(OFST+0,sp)
1550  0170 2011          	jp	LC005
1551  0172               L545:
1552                     ; 313         else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
1554  0172 a111          	cp	a,#17
1555  0174 2606          	jrne	L155
1556                     ; 316             CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
1558  0176 7b05          	ld	a,(OFST+0,sp)
1559  0178 a455          	and	a,#85
1561  017a 2004          	jp	LC006
1562  017c               L155:
1563                     ; 321             CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
1565  017c 7b05          	ld	a,(OFST+0,sp)
1566  017e a4aa          	and	a,#170
1567  0180               LC006:
1568  0180 ca5430        	or	a,21552
1569  0183               LC005:
1570  0183 c75430        	ld	21552,a
1571  0186 202b          	jra	L555
1572  0188               L735:
1573                     ; 330         if (CAN_FilterMode == CAN_FilterMode_IdMask)
1575  0188 7b0a          	ld	a,(OFST+5,sp)
1576  018a 2608          	jrne	L755
1577                     ; 333             CAN->Page.Config.FMR2 &= (uint8_t)~(fmhl);
1579  018c 7b05          	ld	a,(OFST+0,sp)
1580  018e 43            	cpl	a
1581  018f c45431        	and	a,21553
1583  0192 201c          	jp	LC003
1584  0194               L755:
1585                     ; 335         else if ( CAN_FilterMode == CAN_FilterMode_IdList)
1587  0194 a101          	cp	a,#1
1588  0196 2607          	jrne	L365
1589                     ; 338             CAN->Page.Config.FMR2 |= (uint8_t)(fmhl);
1591  0198 c65431        	ld	a,21553
1592  019b 1a05          	or	a,(OFST+0,sp)
1594  019d 2011          	jp	LC003
1595  019f               L365:
1596                     ; 340         else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
1598  019f a111          	cp	a,#17
1599  01a1 2606          	jrne	L765
1600                     ; 343             CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
1602  01a3 7b05          	ld	a,(OFST+0,sp)
1603  01a5 a455          	and	a,#85
1605  01a7 2004          	jp	LC004
1606  01a9               L765:
1607                     ; 348             CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
1609  01a9 7b05          	ld	a,(OFST+0,sp)
1610  01ab a4aa          	and	a,#170
1611  01ad               LC004:
1612  01ad ca5431        	or	a,21553
1613  01b0               LC003:
1614  01b0 c75431        	ld	21553,a
1615  01b3               L555:
1616                     ; 354     CAN->PSR = (uint8_t)can_page_filter;
1618  01b3 7b02          	ld	a,(OFST-3,sp)
1619  01b5 c75427        	ld	21543,a
1620                     ; 355     if (fsc != 0)
1622  01b8 7b04          	ld	a,(OFST-1,sp)
1623  01ba 2603cc024a    	jreq	L375
1624                     ; 358         if (CAN_FilterScale == CAN_FilterScale_8Bit)
1626  01bf 7b0b          	ld	a,(OFST+6,sp)
1627  01c1 260e          	jrne	L575
1628                     ; 360             CAN->Page.Filter.FR09 = CAN_FilterID1;
1630  01c3 7b0c          	ld	a,(OFST+7,sp)
1631  01c5 c75430        	ld	21552,a
1632                     ; 361             CAN->Page.Filter.FR10 = CAN_FilterIDMask1;
1634  01c8 7b10          	ld	a,(OFST+11,sp)
1635  01ca c75431        	ld	21553,a
1636                     ; 362             CAN->Page.Filter.FR11 = CAN_FilterID2;
1638  01cd 7b0d          	ld	a,(OFST+8,sp)
1639                     ; 363             CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1640                     ; 364             CAN->Page.Filter.FR13 = CAN_FilterID3;
1641                     ; 365             CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
1642                     ; 366             CAN->Page.Filter.FR15 = CAN_FilterID4;
1643                     ; 367             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1645  01cf 2010          	jp	LC012
1646  01d1               L575:
1647                     ; 369         else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
1649  01d1 a102          	cp	a,#2
1650  01d3 2622          	jrne	L106
1651                     ; 371             CAN->Page.Filter.FR09 = CAN_FilterID1;
1653  01d5 7b0c          	ld	a,(OFST+7,sp)
1654  01d7 c75430        	ld	21552,a
1655                     ; 372             CAN->Page.Filter.FR10 = CAN_FilterID2;
1657  01da 7b0d          	ld	a,(OFST+8,sp)
1658  01dc c75431        	ld	21553,a
1659                     ; 373             CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
1661  01df 7b10          	ld	a,(OFST+11,sp)
1662                     ; 374             CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1664                     ; 375             CAN->Page.Filter.FR13 = CAN_FilterID3;
1666                     ; 376             CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
1668                     ; 377             CAN->Page.Filter.FR15 = CAN_FilterID4;
1670  01e1               LC012:
1671  01e1 c75432        	ld	21554,a
1673  01e4 7b11          	ld	a,(OFST+12,sp)
1674  01e6 c75433        	ld	21555,a
1676  01e9 7b0e          	ld	a,(OFST+9,sp)
1677  01eb c75434        	ld	21556,a
1679  01ee 7b12          	ld	a,(OFST+13,sp)
1680  01f0 c75435        	ld	21557,a
1682  01f3 7b0f          	ld	a,(OFST+10,sp)
1683                     ; 378             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1685  01f5 2048          	jp	LC010
1686  01f7               L106:
1687                     ; 380         else if (CAN_FilterScale == CAN_FilterScale_16Bit)
1689  01f7 a104          	cp	a,#4
1690  01f9 261d          	jrne	L506
1691                     ; 382             CAN->Page.Filter.FR09 = CAN_FilterID1;
1693  01fb 7b0c          	ld	a,(OFST+7,sp)
1694  01fd c75430        	ld	21552,a
1695                     ; 383             CAN->Page.Filter.FR10 = CAN_FilterID2;
1697  0200 7b0d          	ld	a,(OFST+8,sp)
1698  0202 c75431        	ld	21553,a
1699                     ; 384             CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
1701  0205 7b10          	ld	a,(OFST+11,sp)
1702  0207 c75432        	ld	21554,a
1703                     ; 385             CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1705  020a 7b11          	ld	a,(OFST+12,sp)
1706  020c c75433        	ld	21555,a
1707                     ; 386             CAN->Page.Filter.FR13 = CAN_FilterID3;
1709  020f 7b0e          	ld	a,(OFST+9,sp)
1710  0211 c75434        	ld	21556,a
1711                     ; 387             CAN->Page.Filter.FR14 = CAN_FilterID4;
1713  0214 7b0f          	ld	a,(OFST+10,sp)
1714                     ; 388             CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
1715                     ; 389             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1717  0216 2022          	jp	LC011
1718  0218               L506:
1719                     ; 391         else if (CAN_FilterScale == CAN_FilterScale_32Bit)
1721  0218 a106          	cp	a,#6
1722  021a 2703cc02cf    	jrne	L316
1723                     ; 393             CAN->Page.Filter.FR09 = CAN_FilterID1;
1725  021f 7b0c          	ld	a,(OFST+7,sp)
1726  0221 c75430        	ld	21552,a
1727                     ; 394             CAN->Page.Filter.FR10 = CAN_FilterID2;
1729  0224 7b0d          	ld	a,(OFST+8,sp)
1730  0226 c75431        	ld	21553,a
1731                     ; 395             CAN->Page.Filter.FR11 = CAN_FilterID3;
1733  0229 7b0e          	ld	a,(OFST+9,sp)
1734  022b c75432        	ld	21554,a
1735                     ; 396             CAN->Page.Filter.FR12 = CAN_FilterID4;
1737  022e 7b0f          	ld	a,(OFST+10,sp)
1738  0230 c75433        	ld	21555,a
1739                     ; 397             CAN->Page.Filter.FR13 = CAN_FilterIDMask1;
1741  0233 7b10          	ld	a,(OFST+11,sp)
1742  0235 c75434        	ld	21556,a
1743                     ; 398             CAN->Page.Filter.FR14 = CAN_FilterIDMask2;
1745  0238 7b11          	ld	a,(OFST+12,sp)
1746                     ; 399             CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
1748  023a               LC011:
1749  023a c75435        	ld	21557,a
1751  023d 7b12          	ld	a,(OFST+13,sp)
1752                     ; 400             CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1754  023f               LC010:
1755  023f c75436        	ld	21558,a
1759  0242 7b13          	ld	a,(OFST+14,sp)
1760  0244 c75437        	ld	21559,a
1761  0247 cc02cf        	jra	L316
1762  024a               L375:
1763                     ; 406         if (CAN_FilterScale == CAN_FilterScale_8Bit)
1765  024a 7b0b          	ld	a,(OFST+6,sp)
1766  024c 260e          	jrne	L516
1767                     ; 408             CAN->Page.Filter.FR01 = CAN_FilterID1;
1769  024e 7b0c          	ld	a,(OFST+7,sp)
1770  0250 c75428        	ld	21544,a
1771                     ; 409             CAN->Page.Filter.FR02 = CAN_FilterIDMask1;
1773  0253 7b10          	ld	a,(OFST+11,sp)
1774  0255 c75429        	ld	21545,a
1775                     ; 410             CAN->Page.Filter.FR03 = CAN_FilterID2;
1777  0258 7b0d          	ld	a,(OFST+8,sp)
1778                     ; 411             CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1779                     ; 412             CAN->Page.Filter.FR05 = CAN_FilterID3;
1780                     ; 413             CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
1781                     ; 414             CAN->Page.Filter.FR07 = CAN_FilterID4;
1782                     ; 415             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1784  025a 2010          	jp	LC009
1785  025c               L516:
1786                     ; 417         else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
1788  025c a102          	cp	a,#2
1789  025e 2622          	jrne	L126
1790                     ; 419             CAN->Page.Filter.FR01 = CAN_FilterID1;
1792  0260 7b0c          	ld	a,(OFST+7,sp)
1793  0262 c75428        	ld	21544,a
1794                     ; 420             CAN->Page.Filter.FR02 = CAN_FilterID2;
1796  0265 7b0d          	ld	a,(OFST+8,sp)
1797  0267 c75429        	ld	21545,a
1798                     ; 421             CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
1800  026a 7b10          	ld	a,(OFST+11,sp)
1801                     ; 422             CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1803                     ; 423             CAN->Page.Filter.FR05 = CAN_FilterID3;
1805                     ; 424             CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
1807                     ; 425             CAN->Page.Filter.FR07 = CAN_FilterID4;
1809  026c               LC009:
1810  026c c7542a        	ld	21546,a
1812  026f 7b11          	ld	a,(OFST+12,sp)
1813  0271 c7542b        	ld	21547,a
1815  0274 7b0e          	ld	a,(OFST+9,sp)
1816  0276 c7542c        	ld	21548,a
1818  0279 7b12          	ld	a,(OFST+13,sp)
1819  027b c7542d        	ld	21549,a
1821  027e 7b0f          	ld	a,(OFST+10,sp)
1822                     ; 426             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1824  0280 2045          	jp	LC007
1825  0282               L126:
1826                     ; 428         else if (CAN_FilterScale == CAN_FilterScale_16Bit)
1828  0282 a104          	cp	a,#4
1829  0284 261d          	jrne	L526
1830                     ; 430             CAN->Page.Filter.FR01 = CAN_FilterID1;
1832  0286 7b0c          	ld	a,(OFST+7,sp)
1833  0288 c75428        	ld	21544,a
1834                     ; 431             CAN->Page.Filter.FR02 = CAN_FilterID2;
1836  028b 7b0d          	ld	a,(OFST+8,sp)
1837  028d c75429        	ld	21545,a
1838                     ; 432             CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
1840  0290 7b10          	ld	a,(OFST+11,sp)
1841  0292 c7542a        	ld	21546,a
1842                     ; 433             CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1844  0295 7b11          	ld	a,(OFST+12,sp)
1845  0297 c7542b        	ld	21547,a
1846                     ; 434             CAN->Page.Filter.FR05 = CAN_FilterID3;
1848  029a 7b0e          	ld	a,(OFST+9,sp)
1849  029c c7542c        	ld	21548,a
1850                     ; 435             CAN->Page.Filter.FR06 = CAN_FilterID4;
1852  029f 7b0f          	ld	a,(OFST+10,sp)
1853                     ; 436             CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
1854                     ; 437             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1856  02a1 201f          	jp	LC008
1857  02a3               L526:
1858                     ; 439         else if (CAN_FilterScale == CAN_FilterScale_32Bit)
1860  02a3 a106          	cp	a,#6
1861  02a5 2628          	jrne	L316
1862                     ; 441             CAN->Page.Filter.FR01 = CAN_FilterID1;
1864  02a7 7b0c          	ld	a,(OFST+7,sp)
1865  02a9 c75428        	ld	21544,a
1866                     ; 442             CAN->Page.Filter.FR02 = CAN_FilterID2;
1868  02ac 7b0d          	ld	a,(OFST+8,sp)
1869  02ae c75429        	ld	21545,a
1870                     ; 443             CAN->Page.Filter.FR03 = CAN_FilterID3;
1872  02b1 7b0e          	ld	a,(OFST+9,sp)
1873  02b3 c7542a        	ld	21546,a
1874                     ; 444             CAN->Page.Filter.FR04 = CAN_FilterID4;
1876  02b6 7b0f          	ld	a,(OFST+10,sp)
1877  02b8 c7542b        	ld	21547,a
1878                     ; 445             CAN->Page.Filter.FR05 = CAN_FilterIDMask1;
1880  02bb 7b10          	ld	a,(OFST+11,sp)
1881  02bd c7542c        	ld	21548,a
1882                     ; 446             CAN->Page.Filter.FR06 = CAN_FilterIDMask2;
1884  02c0 7b11          	ld	a,(OFST+12,sp)
1885                     ; 447             CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
1887  02c2               LC008:
1888  02c2 c7542d        	ld	21549,a
1890  02c5 7b12          	ld	a,(OFST+13,sp)
1891                     ; 448             CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1893  02c7               LC007:
1894  02c7 c7542e        	ld	21550,a
1898  02ca 7b13          	ld	a,(OFST+14,sp)
1899  02cc c7542f        	ld	21551,a
1900  02cf               L316:
1901                     ; 457     CAN->PSR = CAN_Page_Config;
1903  02cf 35065427      	mov	21543,#6
1904                     ; 458     if (CAN_FilterActivation != DISABLE)
1906  02d3 7b07          	ld	a,(OFST+2,sp)
1907  02d5 2728          	jreq	L336
1908                     ; 460         if ((CAN_FilterNumber & 0x06) == 0x00) /* FCR1*/
1910  02d7 7b06          	ld	a,(OFST+1,sp)
1911  02d9 a506          	bcp	a,#6
1912  02db 260a          	jrne	L536
1913                     ; 461         {   CAN->Page.Config.FCR1 |= (uint8_t)fact;
1915  02dd c65432        	ld	a,21554
1916  02e0 1a03          	or	a,(OFST-2,sp)
1917  02e2 c75432        	ld	21554,a
1919  02e5 2018          	jra	L336
1920  02e7               L536:
1921                     ; 463         else if ((CAN_FilterNumber & 0x06) == 0x02) /*FCR2*/
1923  02e7 a406          	and	a,#6
1924  02e9 a102          	cp	a,#2
1925  02eb 260a          	jrne	L146
1926                     ; 464         { CAN->Page.Config.FCR2 |= (uint8_t)fact;
1928  02ed c65433        	ld	a,21555
1929  02f0 1a03          	or	a,(OFST-2,sp)
1930  02f2 c75433        	ld	21555,a
1932  02f5 2008          	jra	L336
1933  02f7               L146:
1934                     ; 467         { CAN->Page.Config.FCR3 |= (uint8_t)fact;
1936  02f7 c65434        	ld	a,21556
1937  02fa 1a03          	or	a,(OFST-2,sp)
1938  02fc c75434        	ld	21556,a
1939  02ff               L336:
1940                     ; 470     CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
1942  02ff a601          	ld	a,#1
1943  0301 cd0000        	call	_CAN_OperatingModeRequest
1945                     ; 472     CAN_SelectPage(can_page);
1947  0304 7b01          	ld	a,(OFST-4,sp)
1948  0306 cd0000        	call	_CAN_SelectPage
1950                     ; 473 }
1953  0309 5b07          	addw	sp,#7
1954  030b 81            	ret	
1955  030c               LC013:
1956  030c 89            	pushw	x
1957  030d 5f            	clrw	x
1958  030e 89            	pushw	x
1959  030f ae0008        	ldw	x,#L572
1960  0312 cd0000        	call	_assert_failed
1962  0315 5b04          	addw	sp,#4
1963  0317 81            	ret	
1964  0318               LC014:
1965  0318 5f            	clrw	x
1966  0319 97            	ld	xl,a
1967  031a a606          	ld	a,#6
1968  031c 5d            	tnzw	x
1969  031d 81            	ret	
2110                     ; 481 void CAN_ITConfig(CAN_IT_TypeDef CAN_IT, FunctionalState NewState)
2110                     ; 482 {
2111                     .text:	section	.text,new
2112  0000               _CAN_ITConfig:
2114  0000 89            	pushw	x
2115  0001 5203          	subw	sp,#3
2116       00000003      OFST:	set	3
2119                     ; 483     uint8_t tmperrorinterrupt = 0;
2121                     ; 484     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2123  0003 cd0000        	call	_CAN_GetSelectedPage
2125  0006 6b02          	ld	(OFST-1,sp),a
2126                     ; 488     assert_param(IS_CAN_IT_CONFIG_OK(CAN_IT));
2128  0008 1e04          	ldw	x,(OFST+1,sp)
2129  000a 270a          	jreq	L402
2130  000c 01            	rrwa	x,a
2131  000d a470          	and	a,#112
2132  000f 01            	rrwa	x,a
2133  0010 a4b0          	and	a,#176
2134  0012 01            	rrwa	x,a
2135  0013 5d            	tnzw	x
2136  0014 2705          	jreq	L602
2137  0016               L402:
2138  0016 ae01e8        	ldw	x,#488
2139  0019 ad53          	call	LC015
2140  001b               L602:
2141                     ; 489     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2143  001b 7b08          	ld	a,(OFST+5,sp)
2144  001d 2708          	jreq	L612
2145  001f 4a            	dec	a
2146  0020 2705          	jreq	L612
2147  0022 ae01e9        	ldw	x,#489
2148  0025 ad47          	call	LC015
2149  0027               L612:
2150                     ; 491     tmperrorinterrupt = (uint8_t)(((uint16_t)CAN_IT) >>7);
2152  0027 1e04          	ldw	x,(OFST+1,sp)
2153  0029 4f            	clr	a
2154  002a 01            	rrwa	x,a
2155  002b 48            	sll	a
2156  002c 59            	rlcw	x
2157  002d 9f            	ld	a,xl
2158  002e 6b03          	ld	(OFST+0,sp),a
2159                     ; 492     tmperrorinterrupt = (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0xF0) | 
2159                     ; 493                                   (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0x0F) >>1));
2161  0030 a40f          	and	a,#15
2162  0032 44            	srl	a
2163  0033 6b01          	ld	(OFST-2,sp),a
2164  0035 7b03          	ld	a,(OFST+0,sp)
2165  0037 a4f0          	and	a,#240
2166  0039 1a01          	or	a,(OFST-2,sp)
2167  003b 6b03          	ld	(OFST+0,sp),a
2168                     ; 495     CAN->PSR = CAN_Page_Config;
2170  003d 35065427      	mov	21543,#6
2171                     ; 496     if (NewState != DISABLE)
2173  0041 7b08          	ld	a,(OFST+5,sp)
2174  0043 270f          	jreq	L527
2175                     ; 499         CAN->IER |= (uint8_t)(CAN_IT);
2177  0045 c65425        	ld	a,21541
2178  0048 1a05          	or	a,(OFST+2,sp)
2179  004a c75425        	ld	21541,a
2180                     ; 500         CAN->Page.Config.EIER |= (uint8_t)(tmperrorinterrupt);
2182  004d c65429        	ld	a,21545
2183  0050 1a03          	or	a,(OFST+0,sp)
2185  0052 200f          	jra	L727
2186  0054               L527:
2187                     ; 505         CAN->IER &= (uint8_t)~(uint8_t)((uint16_t)CAN_IT);
2189  0054 7b05          	ld	a,(OFST+2,sp)
2190  0056 43            	cpl	a
2191  0057 c45425        	and	a,21541
2192  005a c75425        	ld	21541,a
2193                     ; 506         CAN->Page.Config.EIER &= (uint8_t)~(tmperrorinterrupt);
2195  005d 7b03          	ld	a,(OFST+0,sp)
2196  005f 43            	cpl	a
2197  0060 c45429        	and	a,21545
2198  0063               L727:
2199  0063 c75429        	ld	21545,a
2200                     ; 509     CAN_SelectPage(can_page);
2202  0066 7b02          	ld	a,(OFST-1,sp)
2203  0068 cd0000        	call	_CAN_SelectPage
2205                     ; 510 }
2208  006b 5b05          	addw	sp,#5
2209  006d 81            	ret	
2210  006e               LC015:
2211  006e 89            	pushw	x
2212  006f 5f            	clrw	x
2213  0070 89            	pushw	x
2214  0071 ae0008        	ldw	x,#L572
2215  0074 cd0000        	call	_assert_failed
2217  0077 5b04          	addw	sp,#4
2218  0079 81            	ret	
2278                     ; 519 void CAN_ST7CompatibilityCmd(CAN_ST7Compatibility_TypeDef CAN_ST7Compatibility)
2278                     ; 520 {
2279                     .text:	section	.text,new
2280  0000               _CAN_ST7CompatibilityCmd:
2282  0000 88            	push	a
2283       00000000      OFST:	set	0
2286                     ; 522     assert_param(IS_CAN_ST7_COMPATIBILITY_OK(CAN_ST7Compatibility));
2288  0001 4d            	tnz	a
2289  0002 2712          	jreq	L232
2290  0004 a110          	cp	a,#16
2291  0006 270e          	jreq	L232
2292  0008 ae020a        	ldw	x,#522
2293  000b 89            	pushw	x
2294  000c 5f            	clrw	x
2295  000d 89            	pushw	x
2296  000e ae0008        	ldw	x,#L572
2297  0011 cd0000        	call	_assert_failed
2299  0014 5b04          	addw	sp,#4
2300  0016               L232:
2301                     ; 524     CAN->DGR &= (uint8_t)(~CAN_DGR_TXM2E);
2303  0016 72195426      	bres	21542,#4
2304                     ; 527     CAN->DGR |= (uint8_t)CAN_ST7Compatibility;
2306  001a c65426        	ld	a,21542
2307  001d 1a01          	or	a,(OFST+1,sp)
2308  001f c75426        	ld	21542,a
2309                     ; 528 }
2312  0022 84            	pop	a
2313  0023 81            	ret	
2361                     ; 535 void CAN_TTComModeCmd(FunctionalState NewState)
2361                     ; 536 {
2362                     .text:	section	.text,new
2363  0000               _CAN_TTComModeCmd:
2365  0000 88            	push	a
2366  0001 88            	push	a
2367       00000001      OFST:	set	1
2370                     ; 537     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2372  0002 cd0000        	call	_CAN_GetSelectedPage
2374  0005 6b01          	ld	(OFST+0,sp),a
2375                     ; 539     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2377  0007 7b02          	ld	a,(OFST+1,sp)
2378  0009 2711          	jreq	L642
2379  000b 4a            	dec	a
2380  000c 270e          	jreq	L642
2381  000e ae021b        	ldw	x,#539
2382  0011 89            	pushw	x
2383  0012 5f            	clrw	x
2384  0013 89            	pushw	x
2385  0014 ae0008        	ldw	x,#L572
2386  0017 cd0000        	call	_assert_failed
2388  001a 5b04          	addw	sp,#4
2389  001c               L642:
2390                     ; 540     if (NewState != DISABLE)
2392  001c 7b02          	ld	a,(OFST+1,sp)
2393  001e 2726          	jreq	L1001
2394                     ; 543         CAN->MCR |= CAN_MCR_TTCM;
2396  0020 721e5420      	bset	21536,#7
2397                     ; 545         CAN->PSR = CAN_Page_TxMailBox0;
2399  0024 725f5427      	clr	21543
2400                     ; 546         CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2402  0028 721e5429      	bset	21545,#7
2403                     ; 547         CAN->PSR = CAN_Page_TxMailBox1;
2405  002c 35015427      	mov	21543,#1
2406                     ; 548         CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2408  0030 721e5429      	bset	21545,#7
2409                     ; 549         CAN->PSR = CAN_Page_TxMailBox2;
2411  0034 35055427      	mov	21543,#5
2412                     ; 550         CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2414  0038 721e5429      	bset	21545,#7
2415                     ; 551         CAN->PSR = CAN_Page_RxFifo;
2417  003c 35075427      	mov	21543,#7
2418                     ; 552         CAN->Page.RxFIFO.MDLCR |= CAN_MDLCR_TGT;
2420  0040 721e5429      	bset	21545,#7
2422  0044 2023          	jra	L3001
2423  0046               L1001:
2424                     ; 557         CAN->MCR &= ((uint8_t)~CAN_MCR_TTCM);
2426  0046 721f5420      	bres	21536,#7
2427                     ; 559         CAN->PSR = CAN_Page_TxMailBox0;
2429  004a c75427        	ld	21543,a
2430                     ; 560         CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2432  004d 721f5429      	bres	21545,#7
2433                     ; 561         CAN->PSR = CAN_Page_TxMailBox1;
2435  0051 35015427      	mov	21543,#1
2436                     ; 562         CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2438  0055 721f5429      	bres	21545,#7
2439                     ; 563         CAN->PSR = CAN_Page_TxMailBox2;
2441  0059 35055427      	mov	21543,#5
2442                     ; 564         CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2444  005d 721f5429      	bres	21545,#7
2445                     ; 565         CAN->PSR = CAN_Page_RxFifo;
2447  0061 35075427      	mov	21543,#7
2448                     ; 566         CAN->Page.RxFIFO.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2450  0065 721f5429      	bres	21545,#7
2451  0069               L3001:
2452                     ; 569     CAN_SelectPage(can_page);
2454  0069 7b01          	ld	a,(OFST+0,sp)
2455  006b cd0000        	call	_CAN_SelectPage
2457                     ; 570 }
2460  006e 85            	popw	x
2461  006f 81            	ret	
2663                     .const:	section	.text
2664  0000               L272:
2665  0000 20000000      	dc.l	536870912
2666  0004               L203:
2667  0004 00000800      	dc.l	2048
2668                     ; 581 CAN_TxStatus_TypeDef CAN_Transmit(uint32_t CAN_Id,
2668                     ; 582                                   CAN_Id_TypeDef CAN_IDE,
2668                     ; 583                                   CAN_RTR_TypeDef CAN_RTR,
2668                     ; 584                                   uint8_t CAN_DLC,
2668                     ; 585                                   uint8_t *CAN_Data)
2668                     ; 586 {
2669                     .text:	section	.text,new
2670  0000               _CAN_Transmit:
2672  0000 5206          	subw	sp,#6
2673       00000006      OFST:	set	6
2676                     ; 587     CAN_TxStatus_TypeDef CAN_TxStatus = CAN_TxStatus_NoMailBox;
2678                     ; 588     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2680  0002 cd0000        	call	_CAN_GetSelectedPage
2682  0005 6b05          	ld	(OFST-1,sp),a
2683                     ; 590     assert_param(IS_CAN_IDTYPE_OK(CAN_IDE));
2685  0007 7b0d          	ld	a,(OFST+7,sp)
2686  0009 270a          	jreq	L462
2687  000b a140          	cp	a,#64
2688  000d 2706          	jreq	L462
2689  000f ae024e        	ldw	x,#590
2690  0012 cd0130        	call	LC018
2691  0015               L462:
2692                     ; 591     if (CAN_IDE != CAN_Id_Standard)
2694  0015 0d0d          	tnz	(OFST+7,sp)
2695  0017 96            	ldw	x,sp
2696  0018 2713          	jreq	L3111
2697                     ; 593         assert_param(IS_CAN_EXTID_OK(CAN_Id));
2699  001a 1c0009        	addw	x,#OFST+3
2700  001d cd0000        	call	c_ltor
2702  0020 ae0000        	ldw	x,#L272
2703  0023 cd0000        	call	c_lcmp
2705  0026 2519          	jrult	L403
2706  0028 ae0251        	ldw	x,#593
2709  002b 2011          	jp	LC016
2710  002d               L3111:
2711                     ; 597         assert_param(IS_CAN_STDID_OK(CAN_Id));
2713  002d 1c0009        	addw	x,#OFST+3
2714  0030 cd0000        	call	c_ltor
2716  0033 ae0004        	ldw	x,#L203
2717  0036 cd0000        	call	c_lcmp
2719  0039 2506          	jrult	L403
2720  003b ae0255        	ldw	x,#597
2722  003e               LC016:
2723  003e cd0130        	call	LC018
2724  0041               L403:
2725                     ; 599     assert_param(IS_CAN_RTR_OK(CAN_RTR));
2727  0041 7b0e          	ld	a,(OFST+8,sp)
2728  0043 270a          	jreq	L413
2729  0045 a120          	cp	a,#32
2730  0047 2706          	jreq	L413
2731  0049 ae0257        	ldw	x,#599
2732  004c cd0130        	call	LC018
2733  004f               L413:
2734                     ; 600     assert_param(IS_CAN_DLC_OK(CAN_DLC));
2736  004f 7b0f          	ld	a,(OFST+9,sp)
2737  0051 a109          	cp	a,#9
2738  0053 2506          	jrult	L223
2739  0055 ae0258        	ldw	x,#600
2740  0058 cd0130        	call	LC018
2741  005b               L223:
2742                     ; 602     if ((CAN->TPR & CAN_TPR_TME0) == CAN_TPR_TME0)
2744  005b 7205542303    	btjf	21539,#2,L7111
2745                     ; 604         CAN_TxStatus = CAN_TxStatus_MailBox0Ok;
2747  0060 4f            	clr	a
2749  0061 2014          	jra	LC017
2750  0063               L7111:
2751                     ; 606     else if ((CAN->TPR & CAN_TPR_TME1) == CAN_TPR_TME1)
2753  0063 7207542304    	btjf	21539,#3,L3211
2754                     ; 608         CAN_TxStatus = CAN_TxStatus_MailBox1Ok;
2756  0068 a601          	ld	a,#1
2758  006a 200b          	jp	LC017
2759  006c               L3211:
2760                     ; 610     else if ((CAN->TPR & CAN_TPR_TME2) == CAN_TPR_TME2)
2762  006c 7209542304    	btjf	21539,#4,L7211
2763                     ; 612         CAN_TxStatus = CAN_TxStatus_MailBox2Ok;
2765  0071 a605          	ld	a,#5
2767  0073 2002          	jp	LC017
2768  0075               L7211:
2769                     ; 616         CAN_TxStatus = CAN_TxStatus_NoMailBox;
2771  0075 a6f4          	ld	a,#244
2772  0077               LC017:
2773  0077 6b06          	ld	(OFST+0,sp),a
2774                     ; 618     if (CAN_TxStatus != CAN_TxStatus_NoMailBox)
2776  0079 a1f4          	cp	a,#244
2777  007b 2603cc0126    	jreq	L3311
2778                     ; 620         CAN->PSR = (uint8_t)CAN_TxStatus;
2780  0080 c75427        	ld	21543,a
2781                     ; 622         if (CAN_IDE != CAN_Id_Standard)
2783  0083 7b0d          	ld	a,(OFST+7,sp)
2784  0085 272c          	jreq	L5311
2785                     ; 624             CAN_Id &= (uint32_t)CAN_EXTID_SIZE;
2787  0087 7b09          	ld	a,(OFST+3,sp)
2788  0089 a41f          	and	a,#31
2789  008b 6b09          	ld	(OFST+3,sp),a
2790                     ; 625             CAN->Page.TxMailbox.MIDR4 = (uint8_t)(CAN_Id);
2792  008d 7b0c          	ld	a,(OFST+6,sp)
2793  008f c7542d        	ld	21549,a
2794                     ; 626             CAN_Id = CAN_Id>>8;
2796  0092 96            	ldw	x,sp
2797  0093 cd013c        	call	LC019
2799                     ; 627             CAN->Page.TxMailbox.MIDR3 = (uint8_t)(CAN_Id);
2801  0096 7b0c          	ld	a,(OFST+6,sp)
2802  0098 c7542c        	ld	21548,a
2803                     ; 628             CAN_Id = CAN_Id>>8;
2805  009b 96            	ldw	x,sp
2806  009c cd013c        	call	LC019
2808                     ; 629             CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id);
2810  009f 7b0c          	ld	a,(OFST+6,sp)
2811  00a1 c7542b        	ld	21547,a
2812                     ; 630             CAN_Id = CAN_Id>>8;
2814  00a4 96            	ldw	x,sp
2815  00a5 cd013c        	call	LC019
2817                     ; 631             CAN->Page.TxMailbox.MIDR1 = (uint8_t)(CAN_Id |CAN_IDE | CAN_RTR);
2819  00a8 7b0c          	ld	a,(OFST+6,sp)
2820  00aa 1a0d          	or	a,(OFST+7,sp)
2821  00ac 1a0e          	or	a,(OFST+8,sp)
2822  00ae c7542a        	ld	21546,a
2824  00b1 2036          	jra	L7311
2825  00b3               L5311:
2826                     ; 635             CAN_Id &= (uint16_t)CAN_STDID_SIZE;
2828  00b3 7b0b          	ld	a,(OFST+5,sp)
2829  00b5 a407          	and	a,#7
2830  00b7 6b0b          	ld	(OFST+5,sp),a
2831  00b9 0f0a          	clr	(OFST+4,sp)
2832  00bb 0f09          	clr	(OFST+3,sp)
2833                     ; 636             CAN->Page.TxMailbox.MIDR1 = (uint8_t)((CAN_Id>>6) | (CAN_RTR)) ;
2835  00bd 7b0e          	ld	a,(OFST+8,sp)
2836  00bf b703          	ld	c_lreg+3,a
2837  00c1 3f02          	clr	c_lreg+2
2838  00c3 3f01          	clr	c_lreg+1
2839  00c5 3f00          	clr	c_lreg
2840  00c7 96            	ldw	x,sp
2841  00c8 5c            	incw	x
2842  00c9 cd0000        	call	c_rtol
2844  00cc 96            	ldw	x,sp
2845  00cd 1c0009        	addw	x,#OFST+3
2846  00d0 cd0000        	call	c_ltor
2848  00d3 a606          	ld	a,#6
2849  00d5 cd0000        	call	c_lursh
2851  00d8 96            	ldw	x,sp
2852  00d9 5c            	incw	x
2853  00da cd0000        	call	c_lor
2855  00dd 550003542a    	mov	21546,c_lreg+3
2856                     ; 637             CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id<<2);
2858  00e2 7b0c          	ld	a,(OFST+6,sp)
2859  00e4 48            	sll	a
2860  00e5 48            	sll	a
2861  00e6 c7542b        	ld	21547,a
2862  00e9               L7311:
2863                     ; 641         CAN->Page.TxMailbox.MDLCR &= (uint8_t)0xF0;
2865  00e9 c65429        	ld	a,21545
2866  00ec a4f0          	and	a,#240
2867  00ee c75429        	ld	21545,a
2868                     ; 643         CAN->Page.TxMailbox.MDLCR |= CAN_DLC;
2870  00f1 c65429        	ld	a,21545
2871  00f4 1a0f          	or	a,(OFST+9,sp)
2872  00f6 c75429        	ld	21545,a
2873                     ; 645         CAN->Page.TxMailbox.MDAR1 = CAN_Data[0];
2875  00f9 1e10          	ldw	x,(OFST+10,sp)
2876  00fb f6            	ld	a,(x)
2877  00fc c7542e        	ld	21550,a
2878                     ; 646         CAN->Page.TxMailbox.MDAR2 = CAN_Data[1];
2880  00ff e601          	ld	a,(1,x)
2881  0101 c7542f        	ld	21551,a
2882                     ; 647         CAN->Page.TxMailbox.MDAR3 = CAN_Data[2];
2884  0104 e602          	ld	a,(2,x)
2885  0106 c75430        	ld	21552,a
2886                     ; 648         CAN->Page.TxMailbox.MDAR4 = CAN_Data[3];
2888  0109 e603          	ld	a,(3,x)
2889  010b c75431        	ld	21553,a
2890                     ; 649         CAN->Page.TxMailbox.MDAR5 = CAN_Data[4];
2892  010e e604          	ld	a,(4,x)
2893  0110 c75432        	ld	21554,a
2894                     ; 650         CAN->Page.TxMailbox.MDAR6 = CAN_Data[5];
2896  0113 e605          	ld	a,(5,x)
2897  0115 c75433        	ld	21555,a
2898                     ; 651         CAN->Page.TxMailbox.MDAR7 = CAN_Data[6];
2900  0118 e606          	ld	a,(6,x)
2901  011a c75434        	ld	21556,a
2902                     ; 652         CAN->Page.TxMailbox.MDAR8 = CAN_Data[7];
2904  011d e607          	ld	a,(7,x)
2905  011f c75435        	ld	21557,a
2906                     ; 654         CAN->Page.TxMailbox.MCSR |= CAN_MCSR_TXRQ;
2908  0122 72105428      	bset	21544,#0
2909  0126               L3311:
2910                     ; 657     CAN_SelectPage(can_page);
2912  0126 7b05          	ld	a,(OFST-1,sp)
2913  0128 cd0000        	call	_CAN_SelectPage
2915                     ; 658     return (CAN_TxStatus_TypeDef)CAN_TxStatus;
2917  012b 7b06          	ld	a,(OFST+0,sp)
2920  012d 5b06          	addw	sp,#6
2921  012f 81            	ret	
2922  0130               LC018:
2923  0130 89            	pushw	x
2924  0131 5f            	clrw	x
2925  0132 89            	pushw	x
2926  0133 ae0008        	ldw	x,#L572
2927  0136 cd0000        	call	_assert_failed
2929  0139 5b04          	addw	sp,#4
2930  013b 81            	ret	
2931  013c               LC019:
2932  013c 1c0009        	addw	x,#OFST+3
2933  013f a608          	ld	a,#8
2934  0141 cc0000        	jp	c_lgursh
3019                     ; 666 CAN_TxStatus_TypeDef CAN_TransmitStatus(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
3019                     ; 667 {
3020                     .text:	section	.text,new
3021  0000               _CAN_TransmitStatus:
3023  0000 88            	push	a
3024  0001 88            	push	a
3025       00000001      OFST:	set	1
3028                     ; 669     CAN_TxStatus_TypeDef tstate = CAN_TxStatus_Failed;
3030                     ; 670     uint8_t tmpstate=0;
3032  0002 0f01          	clr	(OFST+0,sp)
3033                     ; 673     assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
3035  0004 4d            	tnz	a
3036  0005 2716          	jreq	L633
3037  0007 a101          	cp	a,#1
3038  0009 2712          	jreq	L633
3039  000b a105          	cp	a,#5
3040  000d 270e          	jreq	L633
3041  000f ae02a1        	ldw	x,#673
3042  0012 89            	pushw	x
3043  0013 5f            	clrw	x
3044  0014 89            	pushw	x
3045  0015 ae0008        	ldw	x,#L572
3046  0018 cd0000        	call	_assert_failed
3048  001b 5b04          	addw	sp,#4
3049  001d               L633:
3050                     ; 675     switch (CAN_TransmitMailbox)
3052  001d 7b02          	ld	a,(OFST+1,sp)
3054                     ; 688         break;
3055  001f 2709          	jreq	L1411
3056  0021 4a            	dec	a
3057  0022 2714          	jreq	L3411
3058  0024 a004          	sub	a,#4
3059  0026 271f          	jreq	L5411
3060                     ; 686     default:
3060                     ; 687         tstate = CAN_TxStatus_Failed;
3062                     ; 688         break;
3064  0028 2031          	jra	L3221
3065  002a               L1411:
3066                     ; 677     case (CAN_TransmitMailBox_0): tmpstate = (uint8_t)((CAN->TSR & (uint8_t)(CAN_TSR_RQCP0|CAN_TSR_TXOK0)));
3068  002a c65422        	ld	a,21538
3069  002d a411          	and	a,#17
3070  002f 6b01          	ld	(OFST+0,sp),a
3071                     ; 678         tmpstate |= (uint8_t)((CAN->TPR & CAN_TPR_TME0));
3073  0031 c65423        	ld	a,21539
3074  0034 a404          	and	a,#4
3075                     ; 679         break;
3077  0036 201f          	jp	LC020
3078  0038               L3411:
3079                     ; 680     case (CAN_TransmitMailBox_1): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP1|CAN_TSR_TXOK1))>>1);
3081  0038 c65422        	ld	a,21538
3082  003b a422          	and	a,#34
3083  003d 44            	srl	a
3084  003e 6b01          	ld	(OFST+0,sp),a
3085                     ; 681         tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME1) >> 1);
3087  0040 c65423        	ld	a,21539
3088  0043 a408          	and	a,#8
3089                     ; 682         break;
3091  0045 200f          	jp	LC021
3092  0047               L5411:
3093                     ; 683     case (CAN_TransmitMailBox_2): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP2|CAN_TSR_TXOK2))>>2);
3095  0047 c65422        	ld	a,21538
3096  004a a444          	and	a,#68
3097  004c 44            	srl	a
3098  004d 44            	srl	a
3099  004e 6b01          	ld	(OFST+0,sp),a
3100                     ; 684         tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME2) >> 2);
3102  0050 c65423        	ld	a,21539
3103  0053 a410          	and	a,#16
3104  0055 44            	srl	a
3105  0056               LC021:
3106  0056 44            	srl	a
3107  0057               LC020:
3108  0057 1a01          	or	a,(OFST+0,sp)
3109  0059 6b01          	ld	(OFST+0,sp),a
3110                     ; 685         break;
3112  005b               L3221:
3113                     ; 691     switch (tmpstate)
3115  005b 7b01          	ld	a,(OFST+0,sp)
3117                     ; 707         break;
3118  005d 270f          	jreq	L1511
3119  005f a004          	sub	a,#4
3120  0061 2717          	jreq	L7511
3121  0063 4a            	dec	a
3122  0064 270c          	jreq	L3511
3123  0066 a010          	sub	a,#16
3124  0068 270c          	jreq	L5511
3125                     ; 705     default:
3125                     ; 706         tstate = CAN_TxStatus_Failed;
3127  006a a6f0          	ld	a,#240
3128                     ; 707         break;
3130  006c 200e          	jra	L7221
3131  006e               L1511:
3132                     ; 694     case (0x00): tstate = CAN_TxStatus_Pending;
3134  006e a6f2          	ld	a,#242
3135                     ; 695         break;
3137  0070 200a          	jra	L7221
3138  0072               L3511:
3139                     ; 697     case (0x05): tstate = CAN_TxStatus_Failed;
3141  0072 a6f0          	ld	a,#240
3142                     ; 698         break;
3144  0074 2006          	jra	L7221
3145  0076               L5511:
3146                     ; 700     case (0x15): tstate = CAN_TxStatus_Ok;
3148  0076 a6f1          	ld	a,#241
3149                     ; 701         break;
3151  0078 2002          	jra	L7221
3152  007a               L7511:
3153                     ; 703     case (0x04): tstate = CAN_TxStatus_MailBoxEmpty;
3155  007a a6f5          	ld	a,#245
3156                     ; 704         break;
3158  007c               L7221:
3159                     ; 710     return (CAN_TxStatus_TypeDef)tstate;
3163  007c 85            	popw	x
3164  007d 81            	ret	
3213                     ; 718 void CAN_CancelTransmit(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
3213                     ; 719 {
3214                     .text:	section	.text,new
3215  0000               _CAN_CancelTransmit:
3217  0000 88            	push	a
3218  0001 88            	push	a
3219       00000001      OFST:	set	1
3222                     ; 720     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3224  0002 cd0000        	call	_CAN_GetSelectedPage
3226  0005 6b01          	ld	(OFST+0,sp),a
3227                     ; 722     assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
3229  0007 7b02          	ld	a,(OFST+1,sp)
3230  0009 2718          	jreq	L253
3231  000b a101          	cp	a,#1
3232  000d 2714          	jreq	L253
3233  000f a105          	cp	a,#5
3234  0011 2710          	jreq	L253
3235  0013 ae02d2        	ldw	x,#722
3236  0016 89            	pushw	x
3237  0017 5f            	clrw	x
3238  0018 89            	pushw	x
3239  0019 ae0008        	ldw	x,#L572
3240  001c cd0000        	call	_assert_failed
3242  001f 5b04          	addw	sp,#4
3243  0021 7b02          	ld	a,(OFST+1,sp)
3244  0023               L253:
3245                     ; 724     CAN->PSR = (uint8_t)CAN_TransmitMailbox;
3247  0023 c75427        	ld	21543,a
3248                     ; 726     CAN->Page.TxMailbox.MCSR |= CAN_MCSR_ABRQ;
3250  0026 72125428      	bset	21544,#1
3251                     ; 728     CAN_SelectPage(can_page);
3253  002a 7b01          	ld	a,(OFST+0,sp)
3254  002c cd0000        	call	_CAN_SelectPage
3256                     ; 729 }
3259  002f 85            	popw	x
3260  0030 81            	ret	
3283                     ; 736 void CAN_FIFORelease(void)
3283                     ; 737 {
3284                     .text:	section	.text,new
3285  0000               _CAN_FIFORelease:
3289                     ; 739     CAN->RFR = CAN_RFR_RFOM; /*rc-w1*/
3291  0000 35205424      	mov	21540,#32
3292                     ; 740 }
3295  0004 81            	ret	
3369                     ; 746 CAN_NbrPendingMessage_TypeDef CAN_MessagePending(void)
3369                     ; 747 {
3370                     .text:	section	.text,new
3371  0000               _CAN_MessagePending:
3373  0000 88            	push	a
3374       00000001      OFST:	set	1
3377                     ; 748     CAN_NbrPendingMessage_TypeDef msgpending = CAN_NbrPendingMessage_0;
3379                     ; 749     msgpending = (CAN_NbrPendingMessage_TypeDef)(CAN->RFR & CAN_RFR_FMP01);
3381  0001 c65424        	ld	a,21540
3382  0004 a403          	and	a,#3
3383                     ; 750     return (CAN_NbrPendingMessage_TypeDef)msgpending;
3387  0006 5b01          	addw	sp,#1
3388  0008 81            	ret	
3453                     ; 761 void CAN_Receive(void)
3453                     ; 762 {
3454                     .text:	section	.text,new
3455  0000               _CAN_Receive:
3457  0000 520d          	subw	sp,#13
3458       0000000d      OFST:	set	13
3461                     ; 763     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3463  0002 cd0000        	call	_CAN_GetSelectedPage
3465  0005 6b01          	ld	(OFST-12,sp),a
3466                     ; 764     uint32_t temp1 = 0, temp2 = 0, temp3 = 0;
3472                     ; 767     CAN->PSR = CAN_Page_RxFifo;
3474  0007 35075427      	mov	21543,#7
3475                     ; 770     _IDE = (uint8_t)(CAN->Page.RxFIFO.MIDR1 & CAN_Id_Extended);
3477  000b c6542a        	ld	a,21546
3478  000e a440          	and	a,#64
3479  0010 c70004        	ld	__IDE,a
3480                     ; 771     if (_IDE != CAN_Id_Standard)
3482  0013 725d0004      	tnz	__IDE
3483  0017 2759          	jreq	L1431
3484                     ; 773       temp1 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR3) << 8);
3486  0019 c6542c        	ld	a,21548
3487  001c 5f            	clrw	x
3488  001d 97            	ld	xl,a
3489  001e 90ae0100      	ldw	y,#256
3490  0022 cd0000        	call	c_umul
3492  0025 96            	ldw	x,sp
3493  0026 cd0107        	call	LC023
3494  0029 cd00fe        	call	LC022
3495  002c a610          	ld	a,#16
3496  002e cd0000        	call	c_llsh
3498  0031 96            	ldw	x,sp
3499  0032 1c000a        	addw	x,#OFST-3
3500  0035 cd0000        	call	c_rtol
3502                     ; 775       temp3 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 24);
3504  0038 c6542a        	ld	a,21546
3505  003b cd00fe        	call	LC022
3506  003e a41f          	and	a,#31
3507  0040 cd00fe        	call	LC022
3508  0043 a618          	ld	a,#24
3509  0045 cd0000        	call	c_llsh
3511  0048 96            	ldw	x,sp
3512  0049 1c0002        	addw	x,#OFST-11
3513  004c cd0000        	call	c_rtol
3515                     ; 777       _Id = (uint32_t)CAN_EXTID_SIZE & ((CAN->Page.RxFIFO.MIDR4) | temp1 | temp2 | temp3 );
3517  004f c6542d        	ld	a,21549
3518  0052 cd00fe        	call	LC022
3519  0055 96            	ldw	x,sp
3520  0056 1c0006        	addw	x,#OFST-7
3521  0059 cd0000        	call	c_lor
3523  005c 96            	ldw	x,sp
3524  005d 1c000a        	addw	x,#OFST-3
3525  0060 cd0000        	call	c_lor
3527  0063 96            	ldw	x,sp
3528  0064 1c0002        	addw	x,#OFST-11
3529  0067 cd0000        	call	c_lor
3531  006a b600          	ld	a,c_lreg
3532  006c a41f          	and	a,#31
3533  006e b700          	ld	c_lreg,a
3536  0070 203e          	jra	L3431
3537  0072               L1431:
3538                     ; 781         temp1 = (uint16_t)((uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 6));
3540  0072 c6542a        	ld	a,21546
3541  0075 a41f          	and	a,#31
3542  0077 5f            	clrw	x
3543  0078 02            	rlwa	x,a
3544  0079 58            	sllw	x
3545  007a 58            	sllw	x
3546  007b 58            	sllw	x
3547  007c 58            	sllw	x
3548  007d 58            	sllw	x
3549  007e 58            	sllw	x
3550  007f cd0000        	call	c_uitolx
3552  0082 96            	ldw	x,sp
3553  0083 cd0107        	call	LC023
3554  0086 5f            	clrw	x
3555  0087 97            	ld	xl,a
3556  0088 54            	srlw	x
3557  0089 54            	srlw	x
3558  008a 9f            	ld	a,xl
3559  008b a43f          	and	a,#63
3560  008d 5f            	clrw	x
3561  008e cd0000        	call	c_uitol
3563  0091 96            	ldw	x,sp
3564  0092 1c000a        	addw	x,#OFST-3
3565  0095 cd0000        	call	c_rtol
3567                     ; 784       _Id = (uint16_t)CAN_STDID_SIZE & (temp1 | temp2 );
3569  0098 96            	ldw	x,sp
3570  0099 1c0006        	addw	x,#OFST-7
3571  009c cd0000        	call	c_ltor
3573  009f 96            	ldw	x,sp
3574  00a0 1c000a        	addw	x,#OFST-3
3575  00a3 cd0000        	call	c_lor
3577  00a6 b602          	ld	a,c_lreg+2
3578  00a8 a407          	and	a,#7
3579  00aa b702          	ld	c_lreg+2,a
3580  00ac 3f01          	clr	c_lreg+1
3581  00ae 3f00          	clr	c_lreg
3583  00b0               L3431:
3584  00b0 ae0000        	ldw	x,#__Id
3585  00b3 cd0000        	call	c_rtol
3586                     ; 787     _RTR = (uint8_t)((uint8_t)0x20 & CAN->Page.RxFIFO.MIDR1);
3588  00b6 c6542a        	ld	a,21546
3589  00b9 a420          	and	a,#32
3590  00bb c70005        	ld	__RTR,a
3591                     ; 790     _DLC = (uint8_t)(CAN->Page.RxFIFO.MDLCR & (uint8_t)0x0F);
3593  00be c65429        	ld	a,21545
3594  00c1 a40f          	and	a,#15
3595  00c3 c70006        	ld	__DLC,a
3596                     ; 793     _FMI = CAN->Page.RxFIFO.MFMI;
3598  00c6 555428000f    	mov	__FMI,21544
3599                     ; 796     _Data[0] = CAN->Page.RxFIFO.MDAR1;
3601  00cb 55542e0007    	mov	__Data,21550
3602                     ; 797     _Data[1] = CAN->Page.RxFIFO.MDAR2;
3604  00d0 55542f0008    	mov	__Data+1,21551
3605                     ; 798     _Data[2] = CAN->Page.RxFIFO.MDAR3;
3607  00d5 5554300009    	mov	__Data+2,21552
3608                     ; 799     _Data[3] = CAN->Page.RxFIFO.MDAR4;
3610  00da 555431000a    	mov	__Data+3,21553
3611                     ; 800     _Data[4] = CAN->Page.RxFIFO.MDAR5;
3613  00df 555432000b    	mov	__Data+4,21554
3614                     ; 801     _Data[5] = CAN->Page.RxFIFO.MDAR6;
3616  00e4 555433000c    	mov	__Data+5,21555
3617                     ; 802     _Data[6] = CAN->Page.RxFIFO.MDAR7;
3619  00e9 555434000d    	mov	__Data+6,21556
3620                     ; 803     _Data[7] = CAN->Page.RxFIFO.MDAR8;
3622  00ee 555435000e    	mov	__Data+7,21557
3623                     ; 806     CAN_FIFORelease();
3625  00f3 cd0000        	call	_CAN_FIFORelease
3627                     ; 808     CAN_SelectPage(can_page);
3629  00f6 7b01          	ld	a,(OFST-12,sp)
3630  00f8 cd0000        	call	_CAN_SelectPage
3632                     ; 809 }
3635  00fb 5b0d          	addw	sp,#13
3636  00fd 81            	ret	
3637  00fe               LC022:
3638  00fe b703          	ld	c_lreg+3,a
3639  0100 3f02          	clr	c_lreg+2
3640  0102 3f01          	clr	c_lreg+1
3641  0104 3f00          	clr	c_lreg
3642  0106 81            	ret	
3643  0107               LC023:
3644  0107 1c0006        	addw	x,#OFST-7
3645  010a cd0000        	call	c_rtol
3647                     ; 782         temp2 = (uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR2 >> 2)&0x3F);
3649  010d c6542b        	ld	a,21547
3650  0110 81            	ret	
3674                     ; 819 uint32_t CAN_GetReceivedId(void)
3674                     ; 820 {
3675                     .text:	section	.text,new
3676  0000               _CAN_GetReceivedId:
3680                     ; 821     return (_Id);
3682  0000 ae0000        	ldw	x,#__Id
3686  0003 cc0000        	jp	c_ltor
3711                     ; 832 CAN_Id_TypeDef CAN_GetReceivedIDE(void)
3711                     ; 833 {
3712                     .text:	section	.text,new
3713  0000               _CAN_GetReceivedIDE:
3717                     ; 834     return (CAN_Id_TypeDef)(_IDE);
3719  0000 c60004        	ld	a,__IDE
3722  0003 81            	ret	
3747                     ; 845 CAN_RTR_TypeDef CAN_GetReceivedRTR(void)
3747                     ; 846 {
3748                     .text:	section	.text,new
3749  0000               _CAN_GetReceivedRTR:
3753                     ; 847     return (CAN_RTR_TypeDef)(_RTR);
3755  0000 c60005        	ld	a,__RTR
3758  0003 81            	ret	
3782                     ; 858 uint8_t CAN_GetReceivedDLC(void)
3782                     ; 859 {
3783                     .text:	section	.text,new
3784  0000               _CAN_GetReceivedDLC:
3788                     ; 860     return (_DLC);
3790  0000 c60006        	ld	a,__DLC
3793  0003 81            	ret	
3828                     ; 872 uint8_t CAN_GetReceivedData(uint8_t CAN_DataIndex)
3828                     ; 873 {
3829                     .text:	section	.text,new
3830  0000               _CAN_GetReceivedData:
3832  0000 88            	push	a
3833       00000000      OFST:	set	0
3836                     ; 874     assert_param(IS_CAN_DLC_OK(CAN_DataIndex));
3838  0001 a109          	cp	a,#9
3839  0003 250e          	jrult	L014
3840  0005 ae036a        	ldw	x,#874
3841  0008 89            	pushw	x
3842  0009 5f            	clrw	x
3843  000a 89            	pushw	x
3844  000b ae0008        	ldw	x,#L572
3845  000e cd0000        	call	_assert_failed
3847  0011 5b04          	addw	sp,#4
3848  0013               L014:
3849                     ; 875     return (_Data[CAN_DataIndex]);
3851  0013 7b01          	ld	a,(OFST+1,sp)
3852  0015 5f            	clrw	x
3853  0016 97            	ld	xl,a
3856  0017 5b01          	addw	sp,#1
3857  0019 d60007        	ld	a,(__Data,x)
3858  001c 81            	ret	
3882                     ; 886 uint8_t CAN_GetReceivedFMI(void)
3882                     ; 887 {
3883                     .text:	section	.text,new
3884  0000               _CAN_GetReceivedFMI:
3888                     ; 888     return (_FMI);
3890  0000 c6000f        	ld	a,__FMI
3893  0003 81            	ret	
3938                     ; 896 uint16_t CAN_GetMessageTimeStamp(void)
3938                     ; 897 {
3939                     .text:	section	.text,new
3940  0000               _CAN_GetMessageTimeStamp:
3942  0000 5203          	subw	sp,#3
3943       00000003      OFST:	set	3
3946                     ; 898     uint16_t timestamp = 0;
3948                     ; 899     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3950  0002 cd0000        	call	_CAN_GetSelectedPage
3952  0005 6b01          	ld	(OFST-2,sp),a
3953                     ; 902     CAN->PSR = CAN_Page_RxFifo;
3955  0007 35075427      	mov	21543,#7
3956                     ; 904     timestamp = CAN->Page.RxFIFO.MTSRL;
3958  000b 5f            	clrw	x
3959  000c c65436        	ld	a,21558
3960  000f 97            	ld	xl,a
3961  0010 1f02          	ldw	(OFST-1,sp),x
3962                     ; 905     timestamp |= (uint16_t)(((uint16_t)CAN->Page.RxFIFO.MTSRH)<<8);
3964  0012 5f            	clrw	x
3965  0013 c65437        	ld	a,21559
3966  0016 97            	ld	xl,a
3967  0017 7b03          	ld	a,(OFST+0,sp)
3968  0019 01            	rrwa	x,a
3969  001a 1a02          	or	a,(OFST-1,sp)
3970  001c 01            	rrwa	x,a
3971  001d 1f02          	ldw	(OFST-1,sp),x
3972                     ; 908     CAN_SelectPage(can_page);
3974  001f 7b01          	ld	a,(OFST-2,sp)
3975  0021 cd0000        	call	_CAN_SelectPage
3977                     ; 910     return (uint16_t)(timestamp);
3979  0024 1e02          	ldw	x,(OFST-1,sp)
3982  0026 5b03          	addw	sp,#3
3983  0028 81            	ret	
4039                     ; 918 CAN_Sleep_TypeDef CAN_Sleep(void)
4039                     ; 919 {
4040                     .text:	section	.text,new
4041  0000               _CAN_Sleep:
4043  0000 88            	push	a
4044       00000001      OFST:	set	1
4047                     ; 921     CAN_Sleep_TypeDef sleepstatus = CAN_Sleep_Failed;
4049  0001 0f01          	clr	(OFST+0,sp)
4050                     ; 924     CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
4052  0003 c65420        	ld	a,21536
4053  0006 a4fe          	and	a,#254
4054  0008 aa02          	or	a,#2
4055  000a c75420        	ld	21536,a
4056                     ; 927     if ((CAN->MSR & (CAN_MSR_SLAK|CAN_MSR_INAK)) == CAN_MSR_SLAK)
4058  000d c65421        	ld	a,21537
4059  0010 a403          	and	a,#3
4060  0012 a102          	cp	a,#2
4061  0014 2604          	jrne	L7741
4062                     ; 930         sleepstatus =  CAN_Sleep_Ok;
4064  0016 a601          	ld	a,#1
4065  0018 6b01          	ld	(OFST+0,sp),a
4066  001a               L7741:
4067                     ; 934     return (CAN_Sleep_TypeDef) sleepstatus;
4069  001a 7b01          	ld	a,(OFST+0,sp)
4072  001c 5b01          	addw	sp,#1
4073  001e 81            	ret	
4129                     ; 942 CAN_WakeUp_TypeDef CAN_WakeUp(void)
4129                     ; 943 {
4130                     .text:	section	.text,new
4131  0000               _CAN_WakeUp:
4133  0000 88            	push	a
4134       00000001      OFST:	set	1
4137                     ; 944     CAN_WakeUp_TypeDef wakeupstatus = CAN_WakeUp_Failed;
4139  0001 0f01          	clr	(OFST+0,sp)
4140                     ; 947     CAN->MCR &= (uint8_t)(~CAN_MCR_SLEEP);
4142  0003 72135420      	bres	21536,#1
4143                     ; 950     if ((CAN->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
4145  0007 7202542104    	btjt	21537,#1,L7251
4146                     ; 953         wakeupstatus = CAN_WakeUp_Ok;
4148  000c a601          	ld	a,#1
4149  000e 6b01          	ld	(OFST+0,sp),a
4150  0010               L7251:
4151                     ; 957     return (CAN_WakeUp_TypeDef)wakeupstatus;
4153  0010 7b01          	ld	a,(OFST+0,sp)
4156  0012 5b01          	addw	sp,#1
4157  0014 81            	ret	
4261                     ; 969 CAN_ModeStatus_TypeDef CAN_OperatingModeRequest(CAN_OperatingMode_TypeDef CAN_OperatingMode)
4261                     ; 970 {
4262                     .text:	section	.text,new
4263  0000               _CAN_OperatingModeRequest:
4265  0000 88            	push	a
4266  0001 5203          	subw	sp,#3
4267       00000003      OFST:	set	3
4270                     ; 972     uint16_t timeout = CAN_ACKNOWLEDGE_TIMEOUT;
4272  0003 aeffff        	ldw	x,#65535
4273  0006 1f02          	ldw	(OFST-1,sp),x
4274                     ; 973     uint8_t modestatus = 0;
4276                     ; 975     assert_param(IS_CAN_OPERATINGMODE_OK(CAN_OperatingMode));
4278  0008 4d            	tnz	a
4279  0009 2716          	jreq	L634
4280  000b a101          	cp	a,#1
4281  000d 2712          	jreq	L634
4282  000f a102          	cp	a,#2
4283  0011 270e          	jreq	L634
4284  0013 ae03cf        	ldw	x,#975
4285  0016 89            	pushw	x
4286  0017 5f            	clrw	x
4287  0018 89            	pushw	x
4288  0019 ae0008        	ldw	x,#L572
4289  001c cd0000        	call	_assert_failed
4291  001f 5b04          	addw	sp,#4
4292  0021               L634:
4293                     ; 977     if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
4295  0021 7b04          	ld	a,(OFST+1,sp)
4296  0023 2623          	jrne	L5751
4297                     ; 980         CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_SLEEP)) | CAN_MCR_INRQ);
4299  0025 c65420        	ld	a,21536
4300  0028 a4fd          	and	a,#253
4301  002a aa01          	or	a,#1
4302  002c c75420        	ld	21536,a
4304  002f 2003          	jra	L3061
4305  0031               L7751:
4306                     ; 985             timeout--;
4308  0031 5a            	decw	x
4309  0032 1f02          	ldw	(OFST-1,sp),x
4310  0034               L3061:
4311                     ; 983         while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
4313  0034 c65421        	ld	a,21537
4314  0037 a403          	and	a,#3
4315  0039 4a            	dec	a
4316  003a 2704          	jreq	L7061
4318  003c 1e02          	ldw	x,(OFST-1,sp)
4319  003e 26f1          	jrne	L7751
4320  0040               L7061:
4321                     ; 987         if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
4323  0040 c65421        	ld	a,21537
4324  0043 a403          	and	a,#3
4325  0045 4a            	dec	a
4326                     ; 989           modestatus = CAN_ModeStatus_Failed;
4328  0046 204e          	jp	LC026
4329                     ; 993           modestatus = CAN_ModeStatus_Success;  
4330  0048               L5751:
4331                     ; 997     else  if (CAN_OperatingMode == CAN_OperatingMode_Normal)
4333  0048 a101          	cp	a,#1
4334  004a 2623          	jrne	L7161
4335                     ; 1000         CAN->MCR &= (uint8_t)(~(CAN_MCR_SLEEP|CAN_MCR_INRQ));
4337  004c c65420        	ld	a,21536
4338  004f a4fc          	and	a,#252
4339  0051 c75420        	ld	21536,a
4341  0054 2003          	jra	L3261
4342  0056               L1261:
4343                     ; 1005             timeout--;
4345  0056 5a            	decw	x
4346  0057 1f02          	ldw	(OFST-1,sp),x
4347  0059               L3261:
4348                     ; 1003         while (((CAN->MSR & CAN_MODE_MASK) != 0) && (timeout!=0))
4350  0059 c65421        	ld	a,21537
4351  005c a503          	bcp	a,#3
4352  005e 2704          	jreq	L7261
4354  0060 1e02          	ldw	x,(OFST-1,sp)
4355  0062 26f2          	jrne	L1261
4356  0064               L7261:
4357                     ; 1007         if ((CAN->MSR & CAN_MODE_MASK) != 0)
4359  0064 c65421        	ld	a,21537
4360  0067 a503          	bcp	a,#3
4361                     ; 1009           modestatus = CAN_ModeStatus_Failed;
4363  0069 262d          	jrne	L7361
4364  006b               L1361:
4365                     ; 1013           modestatus = CAN_ModeStatus_Success;  
4369  006b a601          	ld	a,#1
4370  006d 202a          	jra	L5161
4371  006f               L7161:
4372                     ; 1016     else  if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
4374  006f a102          	cp	a,#2
4375  0071 2625          	jrne	L7361
4376                     ; 1019         CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
4378  0073 c65420        	ld	a,21536
4379  0076 a4fe          	and	a,#254
4380  0078 aa02          	or	a,#2
4381  007a c75420        	ld	21536,a
4383  007d 2003          	jra	L5461
4384  007f               L1461:
4385                     ; 1024             timeout--;
4387  007f 5a            	decw	x
4388  0080 1f02          	ldw	(OFST-1,sp),x
4389  0082               L5461:
4390                     ; 1022         while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout!=0))
4392  0082 c65421        	ld	a,21537
4393  0085 a403          	and	a,#3
4394  0087 a102          	cp	a,#2
4395  0089 2704          	jreq	L1561
4397  008b 1e02          	ldw	x,(OFST-1,sp)
4398  008d 26f0          	jrne	L1461
4399  008f               L1561:
4400                     ; 1026         if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
4402  008f c65421        	ld	a,21537
4403  0092 a403          	and	a,#3
4404  0094 a102          	cp	a,#2
4405  0096               LC026:
4406  0096 27d3          	jreq	L1361
4407                     ; 1028            modestatus = CAN_ModeStatus_Failed;  
4409                     ; 1032            modestatus = CAN_ModeStatus_Success;  
4410  0098               L7361:
4411                     ; 1037          modestatus = CAN_ModeStatus_Failed;
4416  0098 4f            	clr	a
4417  0099               L5161:
4418                     ; 1039   return (CAN_ModeStatus_TypeDef)(modestatus);
4422  0099 5b04          	addw	sp,#4
4423  009b 81            	ret	
4542                     ; 1047 CAN_ErrorCode_TypeDef CAN_GetLastErrorCode(void)
4542                     ; 1048 {
4543                     .text:	section	.text,new
4544  0000               _CAN_GetLastErrorCode:
4546  0000 89            	pushw	x
4547       00000002      OFST:	set	2
4550                     ; 1049     CAN_ErrorCode_TypeDef errcode = CAN_ErrorCode_NoErr;
4552                     ; 1050     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
4554  0001 cd0000        	call	_CAN_GetSelectedPage
4556  0004 6b01          	ld	(OFST-1,sp),a
4557                     ; 1052     CAN->PSR = CAN_Page_Config;
4559  0006 35065427      	mov	21543,#6
4560                     ; 1053     errcode = (CAN_ErrorCode_TypeDef)((CAN->Page.Config.ESR) & (CAN_ESR_LEC));
4562  000a c65428        	ld	a,21544
4563  000d a470          	and	a,#112
4564  000f 6b02          	ld	(OFST+0,sp),a
4565                     ; 1056     CAN_SelectPage(can_page);
4567  0011 7b01          	ld	a,(OFST-1,sp)
4568  0013 cd0000        	call	_CAN_SelectPage
4570                     ; 1058     return (CAN_ErrorCode_TypeDef)(errcode);
4572  0016 7b02          	ld	a,(OFST+0,sp)
4575  0018 85            	popw	x
4576  0019 81            	ret	
4707                     ; 1073 void CAN_ClearFlag(CAN_FLAG_TypeDef CAN_Flag)
4707                     ; 1074 {
4708                     .text:	section	.text,new
4709  0000               _CAN_ClearFlag:
4711  0000 89            	pushw	x
4712  0001 88            	push	a
4713       00000001      OFST:	set	1
4716                     ; 1075     CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
4718                     ; 1077     assert_param(IS_CAN_FLAG_CLEAR_OK(CAN_Flag));
4720  0002 a33401        	cpw	x,#13313
4721  0005 272c          	jreq	L654
4722  0007 a33402        	cpw	x,#13314
4723  000a 2727          	jreq	L654
4724  000c a33404        	cpw	x,#13316
4725  000f 2722          	jreq	L654
4726  0011 a33208        	cpw	x,#12808
4727  0014 271d          	jreq	L654
4728  0016 a33210        	cpw	x,#12816
4729  0019 2718          	jreq	L654
4730  001b a33108        	cpw	x,#12552
4731  001e 2713          	jreq	L654
4732  0020 a33070        	cpw	x,#12400
4733  0023 270e          	jreq	L654
4734  0025 ae0435        	ldw	x,#1077
4735  0028 89            	pushw	x
4736  0029 5f            	clrw	x
4737  002a 89            	pushw	x
4738  002b ae0008        	ldw	x,#L572
4739  002e cd0000        	call	_assert_failed
4741  0031 5b04          	addw	sp,#4
4742  0033               L654:
4743                     ; 1078     if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
4745  0033 7b02          	ld	a,(OFST+1,sp)
4746  0035 a507          	bcp	a,#7
4747  0037 272d          	jreq	L3002
4748                     ; 1080         if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
4750  0039 1e02          	ldw	x,(OFST+1,sp)
4751  003b 01            	rrwa	x,a
4752  003c a40b          	and	a,#11
4753  003e 01            	rrwa	x,a
4754  003f a402          	and	a,#2
4755  0041 01            	rrwa	x,a
4756  0042 5d            	tnzw	x
4757  0043 2707          	jreq	L5002
4758                     ; 1083             CAN->RFR = (uint8_t)(CAN_Flag);
4760  0045 7b03          	ld	a,(OFST+2,sp)
4761  0047 c75424        	ld	21540,a
4763  004a 202a          	jra	L5102
4764  004c               L5002:
4765                     ; 1085         else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
4767  004c 1e02          	ldw	x,(OFST+1,sp)
4768  004e 01            	rrwa	x,a
4769  004f a403          	and	a,#3
4770  0051 01            	rrwa	x,a
4771  0052 a404          	and	a,#4
4772  0054 01            	rrwa	x,a
4773  0055 5d            	tnzw	x
4774  0056 2707          	jreq	L1102
4775                     ; 1088             CAN->TSR = (uint8_t)(CAN_Flag);
4777  0058 7b03          	ld	a,(OFST+2,sp)
4778  005a c75422        	ld	21538,a
4780  005d 2017          	jra	L5102
4781  005f               L1102:
4782                     ; 1093             CAN->MSR = (uint8_t)(CAN_Flag);
4784  005f 7b03          	ld	a,(OFST+2,sp)
4785  0061 c75421        	ld	21537,a
4786  0064 2010          	jra	L5102
4787  0066               L3002:
4788                     ; 1099         can_page = CAN_GetSelectedPage();
4790  0066 cd0000        	call	_CAN_GetSelectedPage
4792  0069 6b01          	ld	(OFST+0,sp),a
4793                     ; 1102         CAN->PSR = CAN_Page_Config;
4795  006b 35065427      	mov	21543,#6
4796                     ; 1103         CAN->Page.Config.ESR = (uint8_t)RESET;
4798  006f 725f5428      	clr	21544
4799                     ; 1106         CAN_SelectPage(can_page);
4801  0073 cd0000        	call	_CAN_SelectPage
4803  0076               L5102:
4804                     ; 1108 }
4807  0076 5b03          	addw	sp,#3
4808  0078 81            	ret	
4887                     ; 1115 FlagStatus CAN_GetFlagStatus(CAN_FLAG_TypeDef CAN_Flag)
4887                     ; 1116 {
4888                     .text:	section	.text,new
4889  0000               _CAN_GetFlagStatus:
4891  0000 89            	pushw	x
4892  0001 89            	pushw	x
4893       00000002      OFST:	set	2
4896                     ; 1117     FlagStatus bitstatus = RESET;
4898                     ; 1118     CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
4900                     ; 1121     assert_param(IS_CAN_FLAG_STATUS_OK(CAN_Flag));
4902  0002 a33401        	cpw	x,#13313
4903  0005 2740          	jreq	L474
4904  0007 a33402        	cpw	x,#13314
4905  000a 273b          	jreq	L474
4906  000c a33404        	cpw	x,#13316
4907  000f 2736          	jreq	L474
4908  0011 a31203        	cpw	x,#4611
4909  0014 2731          	jreq	L474
4910  0016 a33208        	cpw	x,#12808
4911  0019 272c          	jreq	L474
4912  001b a33210        	cpw	x,#12816
4913  001e 2727          	jreq	L474
4914  0020 a33108        	cpw	x,#12552
4915  0023 2722          	jreq	L474
4916  0025 a31001        	cpw	x,#4097
4917  0028 271d          	jreq	L474
4918  002a a31002        	cpw	x,#4098
4919  002d 2718          	jreq	L474
4920  002f a31004        	cpw	x,#4100
4921  0032 2713          	jreq	L474
4922  0034 a33070        	cpw	x,#12400
4923  0037 270e          	jreq	L474
4924  0039 ae0461        	ldw	x,#1121
4925  003c 89            	pushw	x
4926  003d 5f            	clrw	x
4927  003e 89            	pushw	x
4928  003f ae0008        	ldw	x,#L572
4929  0042 cd0000        	call	_assert_failed
4931  0045 5b04          	addw	sp,#4
4932  0047               L474:
4933                     ; 1123     if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
4935  0047 7b03          	ld	a,(OFST+1,sp)
4936  0049 a507          	bcp	a,#7
4937  004b 272d          	jreq	L5502
4938                     ; 1125         if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
4940  004d 1e03          	ldw	x,(OFST+1,sp)
4941  004f 01            	rrwa	x,a
4942  0050 a40b          	and	a,#11
4943  0052 01            	rrwa	x,a
4944  0053 a402          	and	a,#2
4945  0055 01            	rrwa	x,a
4946  0056 5d            	tnzw	x
4947  0057 2705          	jreq	L7502
4948                     ; 1128             if ((CAN->RFR & (uint16_t)CAN_Flag )!= RESET)
4950  0059 c65424        	ld	a,21540
4951                     ; 1131                 bitstatus = SET;
4953  005c 2014          	jp	LC028
4954                     ; 1136                 bitstatus = RESET;
4955  005e               L7502:
4956                     ; 1140         else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
4958  005e 1e03          	ldw	x,(OFST+1,sp)
4959  0060 01            	rrwa	x,a
4960  0061 a403          	and	a,#3
4961  0063 01            	rrwa	x,a
4962  0064 a404          	and	a,#4
4963  0066 01            	rrwa	x,a
4964  0067 5d            	tnzw	x
4965  0068 2705          	jreq	L7602
4966                     ; 1143             if ((CAN->TSR & (uint16_t)CAN_Flag )!= RESET)
4968  006a c65422        	ld	a,21538
4969                     ; 1146                 bitstatus = SET;
4971  006d 2003          	jp	LC028
4972                     ; 1151                 bitstatus = RESET;
4973  006f               L7602:
4974                     ; 1157             if ((CAN->MSR & (uint16_t)CAN_Flag )!= RESET)
4976  006f c65421        	ld	a,21537
4977                     ; 1160                 bitstatus = SET;
4979  0072               LC028:
4980  0072 1404          	and	a,(OFST+2,sp)
4981  0074 271f          	jreq	L3012
4984  0076 a601          	ld	a,#1
4986                     ; 1165                 bitstatus = RESET;
4990  0078 201b          	jra	L3012
4991  007a               L5502:
4992                     ; 1172         can_page = CAN_GetSelectedPage();
4994  007a cd0000        	call	_CAN_GetSelectedPage
4996  007d 6b01          	ld	(OFST-1,sp),a
4997                     ; 1174         CAN->PSR = CAN_Page_Config;
4999  007f 35065427      	mov	21543,#6
5000                     ; 1175         if ((CAN->Page.Config.ESR & (uint16_t)CAN_Flag) != RESET)
5002  0083 c65428        	ld	a,21544
5003  0086 1404          	and	a,(OFST+2,sp)
5004  0088 2702          	jreq	L5012
5005                     ; 1178             bitstatus = SET;
5007  008a a601          	ld	a,#1
5009  008c               L5012:
5010                     ; 1183             bitstatus = RESET;
5012  008c 6b02          	ld	(OFST+0,sp),a
5013                     ; 1186         CAN_SelectPage(can_page);
5015  008e 7b01          	ld	a,(OFST-1,sp)
5016  0090 cd0000        	call	_CAN_SelectPage
5018  0093 7b02          	ld	a,(OFST+0,sp)
5019  0095               L3012:
5020                     ; 1191     return  (FlagStatus)bitstatus;
5024  0095 5b04          	addw	sp,#4
5025  0097 81            	ret	
5085                     ; 1199 ITStatus CAN_GetITStatus(CAN_IT_TypeDef CAN_IT)
5085                     ; 1200 {
5086                     .text:	section	.text,new
5087  0000               _CAN_GetITStatus:
5089  0000 89            	pushw	x
5090  0001 89            	pushw	x
5091       00000002      OFST:	set	2
5094                     ; 1201     ITStatus pendingbitstatus = RESET;
5096                     ; 1202     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
5098  0002 cd0000        	call	_CAN_GetSelectedPage
5100  0005 6b01          	ld	(OFST-1,sp),a
5101                     ; 1205     assert_param(IS_CAN_IT_STATUS_OK(CAN_IT));
5103  0007 1e03          	ldw	x,(OFST+1,sp)
5104  0009 a30001        	cpw	x,#1
5105  000c 273d          	jreq	L415
5106  000e a30002        	cpw	x,#2
5107  0011 2738          	jreq	L415
5108  0013 a30004        	cpw	x,#4
5109  0016 2733          	jreq	L415
5110  0018 a30008        	cpw	x,#8
5111  001b 272e          	jreq	L415
5112  001d a30080        	cpw	x,#128
5113  0020 2729          	jreq	L415
5114  0022 a34000        	cpw	x,#16384
5115  0025 2724          	jreq	L415
5116  0027 a30100        	cpw	x,#256
5117  002a 271f          	jreq	L415
5118  002c a30200        	cpw	x,#512
5119  002f 271a          	jreq	L415
5120  0031 a30400        	cpw	x,#1024
5121  0034 2715          	jreq	L415
5122  0036 a30800        	cpw	x,#2048
5123  0039 2710          	jreq	L415
5124  003b ae04b5        	ldw	x,#1205
5125  003e 89            	pushw	x
5126  003f 5f            	clrw	x
5127  0040 89            	pushw	x
5128  0041 ae0008        	ldw	x,#L572
5129  0044 cd0000        	call	_assert_failed
5131  0047 5b04          	addw	sp,#4
5132  0049 1e03          	ldw	x,(OFST+1,sp)
5133  004b               L415:
5134                     ; 1208     switch (CAN_IT)
5137                     ; 1321         break;
5138  004b 5a            	decw	x
5139  004c 273a          	jreq	L1112
5140  004e 5a            	decw	x
5141  004f 2747          	jreq	L3112
5142  0051 1d0002        	subw	x,#2
5143  0054 274f          	jreq	L5112
5144  0056 1d0004        	subw	x,#4
5145  0059 2759          	jreq	L7112
5146  005b 1d0078        	subw	x,#120
5147  005e 2760          	jreq	L1212
5148  0060 1d0080        	subw	x,#128
5149  0063 2603cc00e5    	jreq	L5212
5150  0068 1d0100        	subw	x,#256
5151  006b 2603cc00f3    	jreq	L7212
5152  0070 1d0200        	subw	x,#512
5153  0073 2603cc0103    	jreq	L1312
5154  0078 1d0400        	subw	x,#1024
5155  007b 2603cc0116    	jreq	L3312
5156  0080 1d3800        	subw	x,#14336
5157  0083 2750          	jreq	L3212
5158                     ; 1319     default :
5158                     ; 1320         pendingbitstatus = RESET;
5159                     ; 1321         break;
5161  0085 cc0124        	jp	L5322
5162  0088               L1112:
5163                     ; 1210     case CAN_IT_TME:
5163                     ; 1211         if ((CAN->IER & CAN_IER_TMEIE) !=RESET)
5165  0088 7201542508    	btjf	21541,#0,L1712
5166                     ; 1213             pendingbitstatus = CheckITStatus(CAN->TSR, CAN_TSR_RQCP012);
5168  008d ae0007        	ldw	x,#7
5169  0090 c65422        	ld	a,21538
5172  0093 2036          	jp	LC030
5173  0095               L1712:
5174                     ; 1217             pendingbitstatus = RESET;
5175  0095 cc0124        	jp	L5322
5176  0098               L3112:
5177                     ; 1221     case CAN_IT_FMP:
5177                     ; 1222         if ((CAN->IER & CAN_IER_FMPIE) !=RESET)
5179  0098 7203542505    	btjf	21541,#1,L5712
5180                     ; 1224             pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FMP01);
5182  009d ae0003        	ldw	x,#3
5185  00a0 200b          	jp	LC032
5186  00a2               L5712:
5187                     ; 1228             pendingbitstatus = RESET;
5188  00a2 cc0124        	jp	L5322
5189  00a5               L5112:
5190                     ; 1231     case CAN_IT_FF:
5190                     ; 1232         if ((CAN->IER & CAN_IER_FFIE) !=RESET)
5192  00a5 7205542508    	btjf	21541,#2,L1022
5193                     ; 1234             pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FULL);
5195  00aa ae0008        	ldw	x,#8
5196  00ad               LC032:
5197  00ad c65424        	ld	a,21540
5200  00b0 2019          	jp	LC030
5201  00b2               L1022:
5202                     ; 1238             pendingbitstatus = RESET;
5203  00b2 2070          	jp	L5322
5204  00b4               L7112:
5205                     ; 1241     case CAN_IT_FOV:
5205                     ; 1242         if ((CAN->IER & CAN_IER_FOVIE) !=RESET)
5207  00b4 7207542505    	btjf	21541,#3,L5022
5208                     ; 1244             pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FOVR);
5210  00b9 ae0010        	ldw	x,#16
5213  00bc 20ef          	jp	LC032
5214  00be               L5022:
5215                     ; 1248             pendingbitstatus = RESET;
5216  00be 2064          	jp	L5322
5217  00c0               L1212:
5218                     ; 1251     case CAN_IT_WKU:
5218                     ; 1252         if ((CAN->IER & CAN_IER_WKUIE) !=RESET)
5220  00c0 720f54250e    	btjf	21541,#7,L1122
5221                     ; 1254             pendingbitstatus = CheckITStatus(CAN->MSR, CAN_MSR_WKUI);
5223  00c5 ae0008        	ldw	x,#8
5224  00c8 c65421        	ld	a,21537
5226  00cb               LC030:
5227  00cb 95            	ld	xh,a
5228  00cc cd0000        	call	L3_CheckITStatus
5229  00cf 6b02          	ld	(OFST+0,sp),a
5231  00d1 2053          	jra	L7612
5232  00d3               L1122:
5233                     ; 1258             pendingbitstatus = RESET;
5234  00d3 204f          	jp	L5322
5235  00d5               L3212:
5236                     ; 1262     case CAN_IT_ERR:
5236                     ; 1263         CAN->PSR = CAN_Page_Config;
5238  00d5 35065427      	mov	21543,#6
5239                     ; 1264         if ((CAN->Page.Config.EIER & CAN_EIER_ERRIE) !=RESET)
5241  00d9 720f542905    	btjf	21545,#7,L5122
5242                     ; 1266             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF|CAN_ESR_EPVF|CAN_ESR_BOFF|CAN_ESR_LEC);
5244  00de ae0077        	ldw	x,#119
5247  00e1 202c          	jp	LC031
5248  00e3               L5122:
5249                     ; 1270             pendingbitstatus = RESET;
5250  00e3 203f          	jp	L5322
5251  00e5               L5212:
5252                     ; 1274     case CAN_IT_EWG:
5252                     ; 1275         CAN->PSR = CAN_Page_Config;
5254  00e5 35065427      	mov	21543,#6
5255                     ; 1276         if ((CAN->Page.Config.EIER & CAN_EIER_EWGIE) !=RESET)
5257  00e9 7201542903    	btjf	21545,#0,L1222
5258                     ; 1278             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF);
5260  00ee 5c            	incw	x
5263  00ef 201e          	jp	LC031
5264  00f1               L1222:
5265                     ; 1282             pendingbitstatus = RESET;
5266  00f1 2031          	jp	L5322
5267  00f3               L7212:
5268                     ; 1286     case CAN_IT_EPV:
5268                     ; 1287         CAN->PSR = CAN_Page_Config;
5270  00f3 35065427      	mov	21543,#6
5271                     ; 1288         if ((CAN->Page.Config.EIER & CAN_EIER_EPVIE) !=RESET)
5273  00f7 7203542905    	btjf	21545,#1,L5222
5274                     ; 1290             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EPVF);
5276  00fc ae0002        	ldw	x,#2
5279  00ff 200e          	jp	LC031
5280  0101               L5222:
5281                     ; 1294             pendingbitstatus = RESET;
5282  0101 2021          	jp	L5322
5283  0103               L1312:
5284                     ; 1297     case CAN_IT_BOF:
5284                     ; 1298         CAN->PSR = CAN_Page_Config;
5286  0103 35065427      	mov	21543,#6
5287                     ; 1299         if ((CAN->Page.Config.EIER & CAN_EIER_BOFIE) !=RESET)
5289  0107 7205542908    	btjf	21545,#2,L1322
5290                     ; 1301             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_BOFF);
5292  010c ae0004        	ldw	x,#4
5293  010f               LC031:
5294  010f c65428        	ld	a,21544
5297  0112 20b7          	jp	LC030
5298  0114               L1322:
5299                     ; 1305             pendingbitstatus = RESET;
5300  0114 200e          	jp	L5322
5301  0116               L3312:
5302                     ; 1308     case CAN_IT_LEC:
5302                     ; 1309         CAN->PSR = CAN_Page_Config;
5304  0116 35065427      	mov	21543,#6
5305                     ; 1310         if ((CAN->Page.Config.EIER & CAN_EIER_LECIE) !=RESET)
5307  011a 7209542905    	btjf	21545,#4,L5322
5308                     ; 1312             pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_LEC);
5310  011f ae0070        	ldw	x,#112
5313  0122 20eb          	jp	LC031
5314  0124               L5322:
5315                     ; 1316             pendingbitstatus = RESET;
5327  0124 0f02          	clr	(OFST+0,sp)
5328  0126               L7612:
5329                     ; 1324     CAN_SelectPage(can_page);
5331  0126 7b01          	ld	a,(OFST-1,sp)
5332  0128 cd0000        	call	_CAN_SelectPage
5334                     ; 1326     return  (ITStatus)pendingbitstatus;
5336  012b 7b02          	ld	a,(OFST+0,sp)
5339  012d 5b04          	addw	sp,#4
5340  012f 81            	ret	
5389                     ; 1344 void CAN_ClearITPendingBit(CAN_IT_TypeDef CAN_IT)
5389                     ; 1345 {
5390                     .text:	section	.text,new
5391  0000               _CAN_ClearITPendingBit:
5393  0000 89            	pushw	x
5394  0001 88            	push	a
5395       00000001      OFST:	set	1
5398                     ; 1346     CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
5400  0002 cd0000        	call	_CAN_GetSelectedPage
5402  0005 6b01          	ld	(OFST+0,sp),a
5403                     ; 1348     assert_param(IS_CAN_IT_PENDING_BIT_OK(CAN_IT));
5405  0007 1e02          	ldw	x,(OFST+1,sp)
5406  0009 a30001        	cpw	x,#1
5407  000c 2738          	jreq	L655
5408  000e a30004        	cpw	x,#4
5409  0011 2733          	jreq	L655
5410  0013 a30008        	cpw	x,#8
5411  0016 272e          	jreq	L655
5412  0018 a30080        	cpw	x,#128
5413  001b 2729          	jreq	L655
5414  001d a34000        	cpw	x,#16384
5415  0020 2724          	jreq	L655
5416  0022 a30100        	cpw	x,#256
5417  0025 271f          	jreq	L655
5418  0027 a30200        	cpw	x,#512
5419  002a 271a          	jreq	L655
5420  002c a30400        	cpw	x,#1024
5421  002f 2715          	jreq	L655
5422  0031 a30800        	cpw	x,#2048
5423  0034 2710          	jreq	L655
5424  0036 ae0544        	ldw	x,#1348
5425  0039 89            	pushw	x
5426  003a 5f            	clrw	x
5427  003b 89            	pushw	x
5428  003c ae0008        	ldw	x,#L572
5429  003f cd0000        	call	_assert_failed
5431  0042 5b04          	addw	sp,#4
5432  0044 1e02          	ldw	x,(OFST+1,sp)
5433  0046               L655:
5434                     ; 1350     switch (CAN_IT)
5437                     ; 1393     default :
5437                     ; 1394         break;
5438  0046 5a            	decw	x
5439  0047 272a          	jreq	L1422
5440  0049 1d0003        	subw	x,#3
5441  004c 272b          	jreq	L3422
5442  004e 1d0004        	subw	x,#4
5443  0051 272c          	jreq	L5422
5444  0053 1d0078        	subw	x,#120
5445  0056 272d          	jreq	L7422
5446  0058 1d0080        	subw	x,#128
5447  005b 2736          	jreq	L3522
5448  005d 1d0100        	subw	x,#256
5449  0060 2731          	jreq	L3522
5450  0062 1d0200        	subw	x,#512
5451  0065 272c          	jreq	L3522
5452  0067 1d0400        	subw	x,#1024
5453  006a 272d          	jreq	L1622
5454  006c 1d3800        	subw	x,#14336
5455  006f 271a          	jreq	L1522
5456  0071 202e          	jra	L1132
5457  0073               L1422:
5458                     ; 1352     case CAN_IT_TME:
5458                     ; 1353         CAN->TSR = CAN_TSR_RQCP012;/* rc_w1*/
5460  0073 35075422      	mov	21538,#7
5461                     ; 1354         break;
5463  0077 2028          	jra	L1132
5464  0079               L3422:
5465                     ; 1356     case CAN_IT_FF:
5465                     ; 1357         CAN->RFR = CAN_RFR_FULL; /* rc_w1*/
5467  0079 35085424      	mov	21540,#8
5468                     ; 1358         break;
5470  007d 2022          	jra	L1132
5471  007f               L5422:
5472                     ; 1360     case CAN_IT_FOV:
5472                     ; 1361         CAN->RFR = CAN_RFR_FOVR; /* rc_w1*/
5474  007f 35105424      	mov	21540,#16
5475                     ; 1362         break;
5477  0083 201c          	jra	L1132
5478  0085               L7422:
5479                     ; 1364     case CAN_IT_WKU:
5479                     ; 1365         CAN->MSR = CAN_MSR_WKUI;  /* rc_w1*/
5481  0085 35085421      	mov	21537,#8
5482                     ; 1366         break;
5484  0089 2016          	jra	L1132
5485  008b               L1522:
5486                     ; 1368     case CAN_IT_ERR:
5486                     ; 1369         CAN->PSR = CAN_Page_Config;
5488  008b 35065427      	mov	21543,#6
5489                     ; 1370         CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
5491  008f 725f5428      	clr	21544
5492                     ; 1371         CAN->MSR = CAN_MSR_ERRI;
5493                     ; 1372         break;
5495  0093               L3522:
5496                     ; 1374     case CAN_IT_EWG:
5496                     ; 1375         CAN->MSR = CAN_MSR_ERRI;
5497                     ; 1376         break;
5499                     ; 1378     case CAN_IT_EPV:
5499                     ; 1379         CAN->MSR = CAN_MSR_ERRI;
5500                     ; 1380         break;
5502                     ; 1382     case CAN_IT_BOF:
5502                     ; 1383         CAN->MSR = CAN_MSR_ERRI;
5507  0093 35045421      	mov	21537,#4
5508                     ; 1384         break;
5510  0097 2008          	jra	L1132
5511  0099               L1622:
5512                     ; 1386     case CAN_IT_LEC:
5512                     ; 1387         CAN->PSR = CAN_Page_Config;
5514  0099 35065427      	mov	21543,#6
5515                     ; 1388         CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
5517  009d 725f5428      	clr	21544
5518                     ; 1389         break;
5520                     ; 1393     default :
5520                     ; 1394         break;
5522  00a1               L1132:
5523                     ; 1397     CAN_SelectPage(can_page);
5525  00a1 7b01          	ld	a,(OFST+0,sp)
5526  00a3 cd0000        	call	_CAN_SelectPage
5528                     ; 1398 }
5531  00a6 5b03          	addw	sp,#3
5532  00a8 81            	ret	
5557                     ; 1405 CAN_Page_TypeDef CAN_GetSelectedPage(void)
5557                     ; 1406 {
5558                     .text:	section	.text,new
5559  0000               _CAN_GetSelectedPage:
5563                     ; 1407     return (CAN_Page_TypeDef)(CAN->PSR);
5565  0000 c65427        	ld	a,21543
5568  0003 81            	ret	
5603                     ; 1415 void CAN_SelectPage(CAN_Page_TypeDef CAN_Page)
5603                     ; 1416 {
5604                     .text:	section	.text,new
5605  0000               _CAN_SelectPage:
5609                     ; 1417     CAN->PSR = (uint8_t)CAN_Page;
5611  0000 c75427        	ld	21543,a
5612                     ; 1418 }
5615  0003 81            	ret	
5665                     ; 1426 static ITStatus CheckITStatus(uint8_t CAN_Reg, uint8_t It_Bit)
5665                     ; 1427 {
5666                     .text:	section	.text,new
5667  0000               L3_CheckITStatus:
5669  0000 89            	pushw	x
5670  0001 88            	push	a
5671       00000001      OFST:	set	1
5674                     ; 1428     ITStatus pendingbitstatus = RESET;
5676                     ; 1429     if ((CAN_Reg & It_Bit) != (uint8_t)RESET)
5678  0002 9f            	ld	a,xl
5679  0003 1402          	and	a,(OFST+1,sp)
5680  0005 2702          	jreq	L3632
5681                     ; 1432         pendingbitstatus = SET;
5683  0007 a601          	ld	a,#1
5685  0009               L3632:
5686                     ; 1437         pendingbitstatus = RESET;
5688                     ; 1439     return (ITStatus)pendingbitstatus;
5692  0009 5b03          	addw	sp,#3
5693  000b 81            	ret	
5763                     	xdef	__FMI
5764                     	xdef	__Data
5765                     	xdef	__DLC
5766                     	xdef	__RTR
5767                     	xdef	__IDE
5768                     	xdef	__Id
5769                     	xdef	_CAN_ClearITPendingBit
5770                     	xdef	_CAN_GetITStatus
5771                     	xdef	_CAN_ClearFlag
5772                     	xdef	_CAN_GetFlagStatus
5773                     	xdef	_CAN_SelectPage
5774                     	xdef	_CAN_GetSelectedPage
5775                     	xdef	_CAN_GetLastErrorCode
5776                     	xdef	_CAN_OperatingModeRequest
5777                     	xdef	_CAN_WakeUp
5778                     	xdef	_CAN_Sleep
5779                     	xdef	_CAN_GetMessageTimeStamp
5780                     	xdef	_CAN_GetReceivedFMI
5781                     	xdef	_CAN_GetReceivedData
5782                     	xdef	_CAN_GetReceivedDLC
5783                     	xdef	_CAN_GetReceivedRTR
5784                     	xdef	_CAN_GetReceivedIDE
5785                     	xdef	_CAN_GetReceivedId
5786                     	xdef	_CAN_Receive
5787                     	xdef	_CAN_MessagePending
5788                     	xdef	_CAN_FIFORelease
5789                     	xdef	_CAN_CancelTransmit
5790                     	xdef	_CAN_TransmitStatus
5791                     	xdef	_CAN_TTComModeCmd
5792                     	xdef	_CAN_Transmit
5793                     	xdef	_CAN_ST7CompatibilityCmd
5794                     	xdef	_CAN_ITConfig
5795                     	xdef	_CAN_FilterInit
5796                     	xdef	_CAN_Init
5797                     	xdef	_CAN_DeInit
5798                     	xref	_assert_failed
5799                     	switch	.const
5800  0008               L572:
5801  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
5802  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
5803  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
5804  003e 5f63616e2e63  	dc.b	"_can.c",0
5805                     	xref.b	c_lreg
5806                     	xref.b	c_x
5807                     	xref.b	c_y
5827                     	xref	c_uitol
5828                     	xref	c_uitolx
5829                     	xref	c_llsh
5830                     	xref	c_umul
5831                     	xref	c_lor
5832                     	xref	c_rtol
5833                     	xref	c_lursh
5834                     	xref	c_lgursh
5835                     	xref	c_lcmp
5836                     	xref	c_ltor
5837                     	end
