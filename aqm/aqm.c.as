opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_serial_init
	FNCALL	_main,_gsm_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_command
	FNCALL	_main,_lcd_display
	FNCALL	_main,_adc_conversion
	FNCALL	_main,_hexa_val
	FNCALL	_main,_gprs
	FNCALL	_gprs,_serial_display
	FNCALL	_gprs,_serial_out
	FNCALL	_gprs,_gprs1
	FNCALL	_gprs1,_serial_display
	FNCALL	_gprs1,_serial_out
	FNCALL	_gprs1,_command
	FNCALL	_gprs1,_lcd_display
	FNCALL	_hexa_val,___lwdiv
	FNCALL	_hexa_val,___lwmod
	FNCALL	_hexa_val,_lcd_data
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_command
	FNCALL	_gsm_init,_serial_display
	FNCALL	_gsm_init,_serial_out
	FNCALL	_serial_display,_serial_out
	FNROOT	_main
	FNCALL	intlevel1,_funct
	global	intlevel1
	FNROOT	intlevel1
	global	_r
	global	_s
	global	_a
	global	_c
	global	_d
	global	_j
	global	_k
	global	_l
	global	_m
	global	_n
	global	_b
	global	_p
	global	_y
	global	_ADCON0
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_ADGO
_ADGO	set	250
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA2
_RA2	set	42
	global	_RA5
_RA5	set	45
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TXEN
_TXEN	set	1221
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_9:	
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	47	;'/'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	47	;'/'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	112	;'p'
	retlw	104	;'h'
	retlw	112	;'p'
	retlw	63	;'?'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	61	;'='
	retlw	0
psect	strings
	
STR_21:	
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	47	;'/'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	47	;'/'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	112	;'p'
	retlw	104	;'h'
	retlw	112	;'p'
	retlw	0
psect	strings
	
STR_18:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	84	;'T'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	61	;'='
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_15:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	65	;'A'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	80	;'P'
	retlw	66	;'B'
	retlw	82	;'R'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	44	;','
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_7:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	84	;'T'
	retlw	80	;'P'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	61	;'='
	retlw	0
psect	strings
	
STR_25:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	84	;'T'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_6:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	84	;'T'
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_4:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	71	;'G'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_10:	
	retlw	38	;'&'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	61	;'='
	retlw	0
psect	strings
	
STR_13:	
	retlw	38	;'&'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	61	;'='
	retlw	0
psect	strings
	
STR_1:	
	retlw	86	;'V'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_12:	
	retlw	68	;'D'
	retlw	82	;'R'
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_11:	
	retlw	70	;'F'
	retlw	85	;'U'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	0
psect	strings
	
STR_26:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_17:	
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_27:	
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_8:	
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	76	;'L'
	retlw	0
psect	strings
	
STR_2:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
STR_14	equ	STR_15+2
STR_3	equ	STR_2+0
STR_20	equ	STR_8+0
STR_23	equ	STR_17+0
STR_16	equ	STR_7+0
STR_19	equ	STR_7+0
STR_22	equ	STR_7+0
STR_24	equ	STR_18+0
	file	"aqm.c.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_b:
       ds      2

_p:
       ds      1

_y:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_r:
       ds      5

_s:
       ds      5

_a:
       ds      2

_c:
       ds      2

_d:
       ds      2

_j:
       ds      2

_k:
       ds      2

_l:
       ds      2

_m:
       ds      2

_n:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Ah)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_serial_init
?_serial_init:	; 0 bytes @ 0x0
	global	?_gsm_init
?_gsm_init:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_command
?_command:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_adc_conversion
?_adc_conversion:	; 0 bytes @ 0x0
	global	?_gprs
?_gprs:	; 0 bytes @ 0x0
	global	?_serial_display
?_serial_display:	; 0 bytes @ 0x0
	global	?_serial_out
?_serial_out:	; 0 bytes @ 0x0
	global	?_gprs1
?_gprs1:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_funct
?_funct:	; 0 bytes @ 0x0
	global	??_funct
??_funct:	; 0 bytes @ 0x0
	ds	5
	global	??_serial_init
??_serial_init:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_hexa_val
??_hexa_val:	; 0 bytes @ 0x5
	global	??_serial_out
??_serial_out:	; 0 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_command
??_command:	; 0 bytes @ 0x0
	global	??_adc_conversion
??_adc_conversion:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	serial_out@z
serial_out@z:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_serial_display
??_serial_display:	; 0 bytes @ 0x1
	ds	1
	global	serial_display@w
serial_display@w:	; 1 bytes @ 0x2
	global	command@com
command@com:	; 1 bytes @ 0x2
	global	lcd_data@D
lcd_data@D:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_gsm_init
??_gsm_init:	; 0 bytes @ 0x3
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	lcd_display@word
lcd_display@word:	; 1 bytes @ 0x5
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_gprs1
??_gprs1:	; 0 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	?_hexa_val
?_hexa_val:	; 0 bytes @ 0x8
	global	hexa_val@val
hexa_val@val:	; 2 bytes @ 0x8
	ds	1
	global	??_gprs
??_gprs:	; 0 bytes @ 0x9
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	3
;;Data sizes: Strings 222, constant 0, data 0, bss 30, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       9
;; BANK0           80     15      41
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; lcd_display@word	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_27(CODE[4]), STR_26(CODE[4]), STR_1(CODE[6]), 
;;
;; serial_display@w	PTR const unsigned char  size(1) Largest target is 45
;;		 -> STR_25(CODE[12]), STR_24(CODE[16]), STR_23(CODE[4]), STR_22(CODE[13]), 
;;		 -> STR_21(CODE[37]), STR_20(CODE[4]), STR_19(CODE[13]), STR_18(CODE[16]), 
;;		 -> STR_17(CODE[4]), STR_16(CODE[13]), STR_15(CODE[15]), STR_14(CODE[13]), 
;;		 -> STR_13(CODE[7]), STR_12(CODE[5]), STR_11(CODE[5]), STR_10(CODE[8]), 
;;		 -> STR_9(CODE[45]), STR_8(CODE[4]), STR_7(CODE[13]), STR_6(CODE[12]), 
;;		 -> STR_5(CODE[13]), STR_4(CODE[9]), STR_3(CODE[3]), STR_2(CODE[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _funct in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_gprs
;;   _gprs->_gprs1
;;   _gprs1->_lcd_display
;;   _hexa_val->___lwdiv
;;   _lcd_display->_lcd_data
;;   _lcd_init->_command
;;   _gsm_init->_serial_display
;;   _serial_display->_serial_out
;;
;; Critical Paths under _funct in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _funct in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _funct in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _funct in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    1232
;;                                             12 BANK0      3     3      0
;;                        _serial_init
;;                           _gsm_init
;;                           _lcd_init
;;                            _command
;;                        _lcd_display
;;                     _adc_conversion
;;                           _hexa_val
;;                               _gprs
;; ---------------------------------------------------------------------------------
;; (1) _gprs                                                 3     3      0     381
;;                                              9 BANK0      3     3      0
;;                     _serial_display
;;                         _serial_out
;;                              _gprs1
;; ---------------------------------------------------------------------------------
;; (2) _gprs1                                                3     3      0     254
;;                                              6 BANK0      3     3      0
;;                     _serial_display
;;                         _serial_out
;;                            _command
;;                        _lcd_display
;; ---------------------------------------------------------------------------------
;; (1) _hexa_val                                             2     0      2     566
;;                                              8 BANK0      2     0      2
;;                            ___lwdiv
;;                            ___lwmod
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (3) _lcd_display                                          3     3      0      96
;;                                              3 BANK0      3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      31
;;                            _command
;; ---------------------------------------------------------------------------------
;; (1) _gsm_init                                             3     3      0     127
;;                                              3 BANK0      3     3      0
;;                     _serial_display
;;                         _serial_out
;; ---------------------------------------------------------------------------------
;; (4) _lcd_data                                             3     3      0      31
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _serial_display                                       2     2      0      96
;;                                              1 BANK0      2     2      0
;;                         _serial_out
;; ---------------------------------------------------------------------------------
;; (3) _command                                              3     3      0      31
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     232
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     241
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (3) _serial_out                                           1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _adc_conversion                                       2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _serial_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _funct                                                5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _serial_init
;;   _gsm_init
;;     _serial_display
;;       _serial_out
;;     _serial_out
;;   _lcd_init
;;     _command
;;   _command
;;   _lcd_display
;;     _lcd_data
;;   _adc_conversion
;;   _hexa_val
;;     ___lwdiv
;;     ___lwmod
;;     _lcd_data
;;   _gprs
;;     _serial_display
;;       _serial_out
;;     _serial_out
;;     _gprs1
;;       _serial_display
;;         _serial_out
;;       _serial_out
;;       _command
;;       _lcd_display
;;         _lcd_data
;;
;; _funct (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      32       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      F      29       5       51.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      36      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_serial_init
;;		_gsm_init
;;		_lcd_init
;;		_command
;;		_lcd_display
;;		_adc_conversion
;;		_hexa_val
;;		_gprs
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l2730:	
;aqm.c: 29: ADCON1=0X8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	30
	
l2732:	
;aqm.c: 30: TRISB=0x00;
	clrf	(134)^080h	;volatile
	line	31
	
l2734:	
;aqm.c: 31: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	32
;aqm.c: 32: TRISA=0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	33
	
l2736:	
;aqm.c: 33: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	34
	
l2738:	
;aqm.c: 34: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	35
	
l2740:	
;aqm.c: 35: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	36
	
l2742:	
;aqm.c: 36: TRISC=0x83;
	movlw	(083h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	37
;aqm.c: 37: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	38
;aqm.c: 38: PORTE=0X00;
	clrf	(9)	;volatile
	line	39
;aqm.c: 39: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	40
	
l2744:	
;aqm.c: 40: RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	line	41
	
l2746:	
;aqm.c: 41: serial_init();
	fcall	_serial_init
	line	42
	
l2748:	
;aqm.c: 42: gsm_init();
	fcall	_gsm_init
	line	43
	
l2750:	
;aqm.c: 43: lcd_init();
	fcall	_lcd_init
	line	44
	
l2752:	
;aqm.c: 44: command(0x80);
	movlw	(080h)
	fcall	_command
	line	45
	
l2754:	
;aqm.c: 45: lcd_display("VOLT:");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	46
	
l2756:	
;aqm.c: 46: command(0x87);
	movlw	(087h)
	fcall	_command
	goto	l2758
	line	48
;aqm.c: 48: while(1){
	
l611:	
	line	49
	
l2758:	
;aqm.c: 49: adc_conversion();
	fcall	_adc_conversion
	line	50
	
l2760:	
;aqm.c: 50: command(0x85);
	movlw	(085h)
	fcall	_command
	line	51
	
l2762:	
;aqm.c: 51: hexa_val(c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c+1),w
	clrf	(?_hexa_val+1)
	addwf	(?_hexa_val+1)
	movf	(_c),w
	clrf	(?_hexa_val)
	addwf	(?_hexa_val)

	fcall	_hexa_val
	line	52
	
l2764:	
;aqm.c: 52: _delay((unsigned long)((500)*(20e6/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u2777:
	decfsz	((??_main+0)+0),f
	goto	u2777
	decfsz	((??_main+0)+0+1),f
	goto	u2777
	decfsz	((??_main+0)+0+2),f
	goto	u2777
	clrwdt
opt asmopt_on

	line	53
	
l2766:	
;aqm.c: 53: gprs();
	fcall	_gprs
	goto	l2758
	line	54
	
l612:	
	line	48
	goto	l2758
	
l613:	
	line	55
	
l614:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_gprs
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

;; *************** function _gprs *****************
;; Defined at:
;;		line 89 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_serial_display
;;		_serial_out
;;		_gprs1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text523
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	89
	global	__size_of_gprs
	__size_of_gprs	equ	__end_of_gprs-_gprs
	
_gprs:	
	opt	stack 3
; Regs used in _gprs: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	90
	
l2676:	
;aqm.c: 90: serial_display("AT+HTTPPARA=");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_serial_display
	line	91
	
l2678:	
;aqm.c: 91: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	92
	
l2680:	
;aqm.c: 92: serial_display("URL");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_serial_display
	line	93
;aqm.c: 93: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	94
;aqm.c: 94: serial_out(',');
	movlw	(02Ch)
	fcall	_serial_out
	line	95
;aqm.c: 95: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	97
	
l2682:	
;aqm.c: 97: serial_display("livemonitoring.co.in/agri01/insert.php?temp=");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_serial_display
	line	98
	
l2684:	
;aqm.c: 98: serial_out(m+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	030h
	fcall	_serial_out
	line	99
	
l2686:	
;aqm.c: 99: serial_out(n+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_n),w
	addlw	030h
	fcall	_serial_out
	line	100
	
l2688:	
;aqm.c: 100: serial_display("&moist=");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_serial_display
	line	102
	
l2690:	
;aqm.c: 102: if(RC0==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l2694
u2750:
	line	103
	
l2692:	
;aqm.c: 103: serial_display("FULL");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_serial_display
	line	104
;aqm.c: 104: }else{
	goto	l624
	
l623:	
	line	105
	
l2694:	
;aqm.c: 105: serial_display("DRY ");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_serial_display
	line	106
	
l624:	
	line	108
;aqm.c: 106: }
;aqm.c: 108: serial_display("&anim=");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_serial_display
	line	110
	
l2696:	
;aqm.c: 110: if(RC1==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l2700
u2760:
	line	111
	
l2698:	
;aqm.c: 111: serial_display("AnimalDetect");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_serial_display
	line	112
;aqm.c: 112: }else{
	goto	l2702
	
l625:	
	line	113
	
l2700:	
;aqm.c: 113: serial_display("NoAnimalDetect");
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_serial_display
	goto	l2702
	line	114
	
l626:	
	line	116
	
l2702:	
;aqm.c: 114: }
;aqm.c: 116: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	117
	
l2704:	
;aqm.c: 117: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	118
	
l2706:	
;aqm.c: 118: _delay((unsigned long)((2000)*(20e6/4000.0)));
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gprs+0)+0+2),f
movlw	137
movwf	((??_gprs+0)+0+1),f
	movlw	256
movwf	((??_gprs+0)+0),f
u2787:
	decfsz	((??_gprs+0)+0),f
	goto	u2787
	decfsz	((??_gprs+0)+0+1),f
	goto	u2787
	decfsz	((??_gprs+0)+0+2),f
	goto	u2787
opt asmopt_on

	line	119
	
l2708:	
;aqm.c: 119: serial_display("AT+HTTPPARA=");
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_serial_display
	line	120
	
l2710:	
;aqm.c: 120: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	121
	
l2712:	
;aqm.c: 121: serial_display("CID");
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_serial_display
	line	122
	
l2714:	
;aqm.c: 122: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	123
	
l2716:	
;aqm.c: 123: serial_out(',');
	movlw	(02Ch)
	fcall	_serial_out
	line	124
	
l2718:	
;aqm.c: 124: serial_out('1');
	movlw	(031h)
	fcall	_serial_out
	line	125
	
l2720:	
;aqm.c: 125: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	126
	
l2722:	
;aqm.c: 126: _delay((unsigned long)((2000)*(20e6/4000.0)));
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gprs+0)+0+2),f
movlw	137
movwf	((??_gprs+0)+0+1),f
	movlw	256
movwf	((??_gprs+0)+0),f
u2797:
	decfsz	((??_gprs+0)+0),f
	goto	u2797
	decfsz	((??_gprs+0)+0+1),f
	goto	u2797
	decfsz	((??_gprs+0)+0+2),f
	goto	u2797
opt asmopt_on

	line	127
	
l2724:	
;aqm.c: 127: serial_display("AT+HTTPACTION=0");
	movlw	((STR_18-__stringbase))&0ffh
	fcall	_serial_display
	line	128
;aqm.c: 128: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	129
	
l2726:	
;aqm.c: 129: _delay((unsigned long)((2000)*(20e6/4000.0)));
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gprs+0)+0+2),f
movlw	137
movwf	((??_gprs+0)+0+1),f
	movlw	256
movwf	((??_gprs+0)+0),f
u2807:
	decfsz	((??_gprs+0)+0),f
	goto	u2807
	decfsz	((??_gprs+0)+0+1),f
	goto	u2807
	decfsz	((??_gprs+0)+0+2),f
	goto	u2807
opt asmopt_on

	line	130
	
l2728:	
;aqm.c: 130: gprs1();
	fcall	_gprs1
	line	131
	
l627:	
	return
	opt stack 0
GLOBAL	__end_of_gprs
	__end_of_gprs:
;; =============== function _gprs ends ============

	signat	_gprs,88
	global	_gprs1
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

;; *************** function _gprs1 *****************
;; Defined at:
;;		line 133 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_serial_display
;;		_serial_out
;;		_command
;;		_lcd_display
;; This function is called by:
;;		_gprs
;; This function uses a non-reentrant model
;;
psect	text524
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	133
	global	__size_of_gprs1
	__size_of_gprs1	equ	__end_of_gprs1-_gprs1
	
_gprs1:	
	opt	stack 3
; Regs used in _gprs1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	134
	
l2620:	
;aqm.c: 134: serial_display("AT+HTTPPARA=");
	movlw	((STR_19-__stringbase))&0ffh
	fcall	_serial_display
	line	135
	
l2622:	
;aqm.c: 135: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	136
	
l2624:	
;aqm.c: 136: serial_display("URL");
	movlw	((STR_20-__stringbase))&0ffh
	fcall	_serial_display
	line	137
;aqm.c: 137: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	138
;aqm.c: 138: serial_out(',');
	movlw	(02Ch)
	fcall	_serial_out
	line	139
;aqm.c: 139: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	140
	
l2626:	
;aqm.c: 140: serial_display("livemonitoring.co.in/agri01/mout.php");
	movlw	((STR_21-__stringbase))&0ffh
	fcall	_serial_display
	line	141
	
l2628:	
;aqm.c: 141: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	142
	
l2630:	
;aqm.c: 142: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	143
	
l2632:	
;aqm.c: 143: serial_display("AT+HTTPPARA=");
	movlw	((STR_22-__stringbase))&0ffh
	fcall	_serial_display
	line	144
;aqm.c: 144: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	145
	
l2634:	
;aqm.c: 145: serial_display("CID");
	movlw	((STR_23-__stringbase))&0ffh
	fcall	_serial_display
	line	146
	
l2636:	
;aqm.c: 146: serial_out('"');
	movlw	(022h)
	fcall	_serial_out
	line	147
	
l2638:	
;aqm.c: 147: serial_out(',');
	movlw	(02Ch)
	fcall	_serial_out
	line	148
	
l2640:	
;aqm.c: 148: serial_out('1');
	movlw	(031h)
	fcall	_serial_out
	line	149
	
l2642:	
;aqm.c: 149: serial_out(0x0d);_delay((unsigned long)((2000)*(20e6/4000.0)));
	movlw	(0Dh)
	fcall	_serial_out
	
l2644:	
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gprs1+0)+0+2),f
movlw	137
movwf	((??_gprs1+0)+0+1),f
	movlw	256
movwf	((??_gprs1+0)+0),f
u2817:
	decfsz	((??_gprs1+0)+0),f
	goto	u2817
	decfsz	((??_gprs1+0)+0+1),f
	goto	u2817
	decfsz	((??_gprs1+0)+0+2),f
	goto	u2817
opt asmopt_on

	line	150
	
l2646:	
;aqm.c: 150: serial_display("AT+HTTPACTION=0");
	movlw	((STR_24-__stringbase))&0ffh
	fcall	_serial_display
	line	151
	
l2648:	
;aqm.c: 151: serial_out(0x0d);_delay((unsigned long)((2000)*(20e6/4000.0)));
	movlw	(0Dh)
	fcall	_serial_out
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gprs1+0)+0+2),f
movlw	137
movwf	((??_gprs1+0)+0+1),f
	movlw	256
movwf	((??_gprs1+0)+0),f
u2827:
	decfsz	((??_gprs1+0)+0),f
	goto	u2827
	decfsz	((??_gprs1+0)+0+1),f
	goto	u2827
	decfsz	((??_gprs1+0)+0+2),f
	goto	u2827
opt asmopt_on

	line	152
	
l2650:	
;aqm.c: 152: serial_display("AT+HTTPREAD");
	movlw	((STR_25-__stringbase))&0ffh
	fcall	_serial_display
	line	153
	
l2652:	
;aqm.c: 153: serial_out(0x0d);_delay((unsigned long)((3000)*(20e6/4000.0)));
	movlw	(0Dh)
	fcall	_serial_out
	
l2654:	
	opt asmopt_off
movlw  76
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gprs1+0)+0+2),f
movlw	206
movwf	((??_gprs1+0)+0+1),f
	movlw	129
movwf	((??_gprs1+0)+0),f
u2837:
	decfsz	((??_gprs1+0)+0),f
	goto	u2837
	decfsz	((??_gprs1+0)+0+1),f
	goto	u2837
	decfsz	((??_gprs1+0)+0+2),f
	goto	u2837
	clrwdt
opt asmopt_on

	line	155
	
l2656:	
;aqm.c: 155: if(p>=2)
	movlw	(02h)
	subwf	(_p),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l633
u2720:
	line	157
	
l2658:	
;aqm.c: 156: {
;aqm.c: 157: if(s[1]=='1'){RA5=0;command(0x8D);lcd_display("ON ");}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_s)+01h,w
	xorlw	031h
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l2666
u2730:
	
l2660:	
	bcf	(45/8),(45)&7
	
l2662:	
	movlw	(08Dh)
	fcall	_command
	
l2664:	
	movlw	((STR_26-__stringbase))&0ffh
	fcall	_lcd_display
	goto	l2666
	
l631:	
	line	158
	
l2666:	
;aqm.c: 158: if(s[1]=='2'){RA5=1;command(0x8D);lcd_display("OFF");}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_s)+01h,w
	xorlw	032h
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l2674
u2740:
	
l2668:	
	bsf	(45/8),(45)&7
	
l2670:	
	movlw	(08Dh)
	fcall	_command
	
l2672:	
	movlw	((STR_27-__stringbase))&0ffh
	fcall	_lcd_display
	goto	l2674
	
l632:	
	line	159
	
l2674:	
;aqm.c: 159: p=0;s[p]=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_p)
	clrc
	movf	(_p),w
	addlw	_s&0ffh
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l633
	line	160
	
l630:	
	line	161
	
l633:	
	return
	opt stack 0
GLOBAL	__end_of_gprs1
	__end_of_gprs1:
;; =============== function _gprs1 ends ============

	signat	_gprs1,88
	global	_hexa_val
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

;; *************** function _hexa_val *****************
;; Defined at:
;;		line 193 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;  val             2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text525
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	193
	global	__size_of_hexa_val
	__size_of_hexa_val	equ	__end_of_hexa_val-_hexa_val
	
_hexa_val:	
	opt	stack 5
; Regs used in _hexa_val: [wreg+status,2+status,0+pclath+cstack]
	line	194
	
l2618:	
;aqm.c: 194: d=val/1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(hexa_val@val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(hexa_val@val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_d)
	addwf	(_d)

	line	195
;aqm.c: 195: j=val%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(hexa_val@val+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(hexa_val@val),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_j+1)
	addwf	(_j+1)
	movf	(0+(?___lwmod)),w
	clrf	(_j)
	addwf	(_j)

	line	196
;aqm.c: 196: k=j/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_j+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_j),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_k+1)
	addwf	(_k+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_k)
	addwf	(_k)

	line	197
;aqm.c: 197: l=j%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_j+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_j),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_l+1)
	addwf	(_l+1)
	movf	(0+(?___lwmod)),w
	clrf	(_l)
	addwf	(_l)

	line	198
;aqm.c: 198: m=l/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_l+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_l),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_m+1)
	addwf	(_m+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_m)
	addwf	(_m)

	line	199
;aqm.c: 199: n=l%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_l+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_l),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_n+1)
	addwf	(_n+1)
	movf	(0+(?___lwmod)),w
	clrf	(_n)
	addwf	(_n)

	line	200
;aqm.c: 200: lcd_data(m+0x30);
	movf	(_m),w
	addlw	030h
	fcall	_lcd_data
	line	201
;aqm.c: 201: lcd_data(n+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_n),w
	addlw	030h
	fcall	_lcd_data
	line	202
	
l660:	
	return
	opt stack 0
GLOBAL	__end_of_hexa_val
	__end_of_hexa_val:
;; =============== function _hexa_val ends ============

	signat	_hexa_val,4216
	global	_lcd_display
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 229 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;  word            1    wreg     PTR const unsigned char 
;;		 -> STR_27(4), STR_26(4), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  word            1    5[BANK0 ] PTR const unsigned char 
;;		 -> STR_27(4), STR_26(4), STR_1(6), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;;		_gprs1
;; This function uses a non-reentrant model
;;
psect	text526
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	229
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 3
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@word stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_display@word)
	line	230
	
l2608:	
;aqm.c: 230: while(*word){
	goto	l2616
	
l673:	
	line	231
	
l2610:	
;aqm.c: 231: lcd_data(*word++);
	movf	(lcd_display@word),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	
l2612:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_display+0)+0
	movf	(??_lcd_display+0)+0,w
	addwf	(lcd_display@word),f
	line	232
	
l2614:	
;aqm.c: 232: _delay((unsigned long)((1)*(20e6/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_lcd_display+0)+0+1),f
	movlw	125
movwf	((??_lcd_display+0)+0),f
u2847:
	decfsz	((??_lcd_display+0)+0),f
	goto	u2847
	decfsz	((??_lcd_display+0)+0+1),f
	goto	u2847
opt asmopt_on

	goto	l2616
	line	233
	
l672:	
	line	230
	
l2616:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_display@word),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2610
u2710:
	goto	l675
	
l674:	
	line	234
	
l675:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 204 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text527
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	204
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	205
	
l2606:	
;aqm.c: 205: command(0x01);
	movlw	(01h)
	fcall	_command
	line	206
;aqm.c: 206: command(0x06);
	movlw	(06h)
	fcall	_command
	line	207
;aqm.c: 207: command(0x0c);
	movlw	(0Ch)
	fcall	_command
	line	208
;aqm.c: 208: command(0x38);
	movlw	(038h)
	fcall	_command
	line	209
	
l663:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_gsm_init
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

;; *************** function _gsm_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_serial_display
;;		_serial_out
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text528
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	57
	global	__size_of_gsm_init
	__size_of_gsm_init	equ	__end_of_gsm_init-_gsm_init
	
_gsm_init:	
	opt	stack 4
; Regs used in _gsm_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l2580:	
;aqm.c: 58: serial_display("AT");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_serial_display
	line	59
	
l2582:	
;aqm.c: 59: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	60
	
l2584:	
;aqm.c: 60: _delay((unsigned long)((500)*(20e6/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gsm_init+0)+0+2),f
movlw	163
movwf	((??_gsm_init+0)+0+1),f
	movlw	189
movwf	((??_gsm_init+0)+0),f
u2857:
	decfsz	((??_gsm_init+0)+0),f
	goto	u2857
	decfsz	((??_gsm_init+0)+0+1),f
	goto	u2857
	decfsz	((??_gsm_init+0)+0+2),f
	goto	u2857
	clrwdt
opt asmopt_on

	line	61
	
l2586:	
;aqm.c: 61: serial_display("AT");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_serial_display
	line	62
	
l2588:	
;aqm.c: 62: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	63
;aqm.c: 63: _delay((unsigned long)((500)*(20e6/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gsm_init+0)+0+2),f
movlw	163
movwf	((??_gsm_init+0)+0+1),f
	movlw	189
movwf	((??_gsm_init+0)+0),f
u2867:
	decfsz	((??_gsm_init+0)+0),f
	goto	u2867
	decfsz	((??_gsm_init+0)+0+1),f
	goto	u2867
	decfsz	((??_gsm_init+0)+0+2),f
	goto	u2867
	clrwdt
opt asmopt_on

	line	64
	
l2590:	
;aqm.c: 64: serial_display("AT+CREG?");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_serial_display
	line	65
	
l2592:	
;aqm.c: 65: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	66
	
l2594:	
;aqm.c: 66: _delay((unsigned long)((500)*(20e6/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gsm_init+0)+0+2),f
movlw	163
movwf	((??_gsm_init+0)+0+1),f
	movlw	189
movwf	((??_gsm_init+0)+0),f
u2877:
	decfsz	((??_gsm_init+0)+0),f
	goto	u2877
	decfsz	((??_gsm_init+0)+0+1),f
	goto	u2877
	decfsz	((??_gsm_init+0)+0+2),f
	goto	u2877
	clrwdt
opt asmopt_on

	line	70
	
l2596:	
;aqm.c: 70: serial_display("AT+SAPBR=1,1");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_serial_display
	line	71
;aqm.c: 71: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	72
	
l2598:	
;aqm.c: 72: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gsm_init+0)+0+2),f
movlw	69
movwf	((??_gsm_init+0)+0+1),f
	movlw	126
movwf	((??_gsm_init+0)+0),f
u2887:
	decfsz	((??_gsm_init+0)+0),f
	goto	u2887
	decfsz	((??_gsm_init+0)+0+1),f
	goto	u2887
	decfsz	((??_gsm_init+0)+0+2),f
	goto	u2887
opt asmopt_on

	line	73
	
l2600:	
;aqm.c: 73: serial_display("AT+HTTPINIT");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_serial_display
	line	74
	
l2602:	
;aqm.c: 74: serial_out(0x0d);
	movlw	(0Dh)
	fcall	_serial_out
	line	75
	
l2604:	
;aqm.c: 75: _delay((unsigned long)((1000)*(20e6/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_gsm_init+0)+0+2),f
movlw	69
movwf	((??_gsm_init+0)+0+1),f
	movlw	126
movwf	((??_gsm_init+0)+0),f
u2897:
	decfsz	((??_gsm_init+0)+0),f
	goto	u2897
	decfsz	((??_gsm_init+0)+0+1),f
	goto	u2897
	decfsz	((??_gsm_init+0)+0+2),f
	goto	u2897
opt asmopt_on

	line	76
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_init
	__end_of_gsm_init:
;; =============== function _gsm_init ends ============

	signat	_gsm_init,88
	global	_lcd_data
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 220 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;  D               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  D               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hexa_val
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text529
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	220
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 3
; Regs used in _lcd_data: [wreg]
;lcd_data@D stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_data@D)
	line	221
	
l2572:	
;aqm.c: 221: PORTD=D;
	movf	(lcd_data@D),w
	movwf	(8)	;volatile
	line	222
	
l2574:	
;aqm.c: 222: RA2=1;
	bsf	(42/8),(42)&7
	line	223
	
l2576:	
;aqm.c: 223: RE0=1;
	bsf	(72/8),(72)&7
	line	224
;aqm.c: 224: _delay((unsigned long)((10)*(20e6/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_lcd_data+0)+0+1),f
	movlw	238
movwf	((??_lcd_data+0)+0),f
u2907:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2907
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2907
	clrwdt
opt asmopt_on

	line	225
	
l2578:	
;aqm.c: 225: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	226
;aqm.c: 226: _delay((unsigned long)((10)*(20e6/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_lcd_data+0)+0+1),f
	movlw	238
movwf	((??_lcd_data+0)+0),f
u2917:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2917
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2917
	clrwdt
opt asmopt_on

	line	227
	
l669:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_serial_display
psect	text530,local,class=CODE,delta=2
global __ptext530
__ptext530:

;; *************** function _serial_display *****************
;; Defined at:
;;		line 169 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;  w               1    wreg     PTR const unsigned char 
;;		 -> STR_25(12), STR_24(16), STR_23(4), STR_22(13), 
;;		 -> STR_21(37), STR_20(4), STR_19(13), STR_18(16), 
;;		 -> STR_17(4), STR_16(13), STR_15(15), STR_14(13), 
;;		 -> STR_13(7), STR_12(5), STR_11(5), STR_10(8), 
;;		 -> STR_9(45), STR_8(4), STR_7(13), STR_6(12), 
;;		 -> STR_5(13), STR_4(9), STR_3(3), STR_2(3), 
;; Auto vars:     Size  Location     Type
;;  w               1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_25(12), STR_24(16), STR_23(4), STR_22(13), 
;;		 -> STR_21(37), STR_20(4), STR_19(13), STR_18(16), 
;;		 -> STR_17(4), STR_16(13), STR_15(15), STR_14(13), 
;;		 -> STR_13(7), STR_12(5), STR_11(5), STR_10(8), 
;;		 -> STR_9(45), STR_8(4), STR_7(13), STR_6(12), 
;;		 -> STR_5(13), STR_4(9), STR_3(3), STR_2(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_serial_out
;; This function is called by:
;;		_gsm_init
;;		_gprs
;;		_gprs1
;; This function uses a non-reentrant model
;;
psect	text530
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	169
	global	__size_of_serial_display
	__size_of_serial_display	equ	__end_of_serial_display-_serial_display
	
_serial_display:	
	opt	stack 3
; Regs used in _serial_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial_display@w stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serial_display@w)
	line	170
	
l2564:	
;aqm.c: 170: while(*w){
	goto	l2570
	
l643:	
	line	171
	
l2566:	
;aqm.c: 171: serial_out(*w++);
	movf	(serial_display@w),w
	movwf	fsr0
	fcall	stringdir
	fcall	_serial_out
	
l2568:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serial_display+0)+0
	movf	(??_serial_display+0)+0,w
	addwf	(serial_display@w),f
	goto	l2570
	line	172
	
l642:	
	line	170
	
l2570:	
	movf	(serial_display@w),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2566
u2700:
	goto	l645
	
l644:	
	line	173
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of_serial_display
	__end_of_serial_display:
;; =============== function _serial_display ends ============

	signat	_serial_display,4216
	global	_command
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:

;; *************** function _command *****************
;; Defined at:
;;		line 211 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_gprs1
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text531
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	211
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 4
; Regs used in _command: [wreg]
;command@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(command@com)
	line	212
	
l2556:	
;aqm.c: 212: PORTD=com;
	movf	(command@com),w
	movwf	(8)	;volatile
	line	213
	
l2558:	
;aqm.c: 213: RA2=0;
	bcf	(42/8),(42)&7
	line	214
	
l2560:	
;aqm.c: 214: RE0=1;
	bsf	(72/8),(72)&7
	line	215
;aqm.c: 215: _delay((unsigned long)((10)*(20e6/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_command+0)+0+1),f
	movlw	238
movwf	((??_command+0)+0),f
u2927:
	decfsz	((??_command+0)+0),f
	goto	u2927
	decfsz	((??_command+0)+0+1),f
	goto	u2927
	clrwdt
opt asmopt_on

	line	216
	
l2562:	
;aqm.c: 216: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	217
;aqm.c: 217: _delay((unsigned long)((10)*(20e6/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_command+0)+0+1),f
	movlw	238
movwf	((??_command+0)+0),f
u2937:
	decfsz	((??_command+0)+0),f
	goto	u2937
	decfsz	((??_command+0)+0+1),f
	goto	u2937
	clrwdt
opt asmopt_on

	line	218
	
l666:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
	global	___lwmod
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hexa_val
;; This function uses a non-reentrant model
;;
psect	text532
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2534:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2641
	goto	u2640
u2641:
	goto	l2552
u2640:
	line	9
	
l2536:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l2542
	
l702:	
	line	11
	
l2538:	
	movlw	01h
	
u2655:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2655
	line	12
	
l2540:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2542
	line	13
	
l701:	
	line	10
	
l2542:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2538
u2660:
	goto	l2544
	
l703:	
	goto	l2544
	line	14
	
l704:	
	line	15
	
l2544:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2675
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2675:
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l2548
u2670:
	line	16
	
l2546:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2548
	
l705:	
	line	17
	
l2548:	
	movlw	01h
	
u2685:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2685
	line	18
	
l2550:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2544
u2690:
	goto	l2552
	
l706:	
	goto	l2552
	line	19
	
l700:	
	line	20
	
l2552:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l707
	
l2554:	
	line	21
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hexa_val
;; This function uses a non-reentrant model
;;
psect	text533
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2510:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2571
	goto	u2570
u2571:
	goto	l2530
u2570:
	line	11
	
l2512:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2518
	
l692:	
	line	13
	
l2514:	
	movlw	01h
	
u2585:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2585
	line	14
	
l2516:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2518
	line	15
	
l691:	
	line	12
	
l2518:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l2514
u2590:
	goto	l2520
	
l693:	
	goto	l2520
	line	16
	
l694:	
	line	17
	
l2520:	
	movlw	01h
	
u2605:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2605
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2615
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2615:
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2526
u2610:
	line	19
	
l2522:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2524:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2526
	line	21
	
l695:	
	line	22
	
l2526:	
	movlw	01h
	
u2625:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2625
	line	23
	
l2528:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2520
u2630:
	goto	l2530
	
l696:	
	goto	l2530
	line	24
	
l690:	
	line	25
	
l2530:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l697
	
l2532:	
	line	26
	
l697:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_serial_out
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function _serial_out *****************
;; Defined at:
;;		line 163 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;  z               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  z               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gsm_init
;;		_gprs
;;		_gprs1
;;		_serial_display
;; This function uses a non-reentrant model
;;
psect	text534
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	163
	global	__size_of_serial_out
	__size_of_serial_out	equ	__end_of_serial_out-_serial_out
	
_serial_out:	
	opt	stack 4
; Regs used in _serial_out: [wreg]
;serial_out@z stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serial_out@z)
	line	164
	
l2508:	
;aqm.c: 164: TXREG=z;
	movf	(serial_out@z),w
	movwf	(25)	;volatile
	line	165
;aqm.c: 165: while(!TXIF);
	goto	l636
	
l637:	
	
l636:	
	btfss	(100/8),(100)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l636
u2560:
	
l638:	
	line	166
;aqm.c: 166: TXIF=0;
	bcf	(100/8),(100)&7
	line	167
	
l639:	
	return
	opt stack 0
GLOBAL	__end_of_serial_out
	__end_of_serial_out:
;; =============== function _serial_out ends ============

	signat	_serial_out,4216
	global	_adc_conversion
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function _adc_conversion *****************
;; Defined at:
;;		line 184 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text535
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	184
	global	__size_of_adc_conversion
	__size_of_adc_conversion	equ	__end_of_adc_conversion-_adc_conversion
	
_adc_conversion:	
	opt	stack 6
; Regs used in _adc_conversion: [wreg+status,2+status,0+btemp+1]
	line	185
	
l2500:	
;aqm.c: 185: ADCON0=0XC5;
	movlw	(0C5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	186
;aqm.c: 186: while(ADGO);
	goto	l654
	
l655:	
	
l654:	
	btfsc	(250/8),(250)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l654
u2530:
	goto	l2502
	
l656:	
	line	187
	
l2502:	
;aqm.c: 187: a=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc_conversion+0)+0
	clrf	(??_adc_conversion+0)+0+1
	movf	0+(??_adc_conversion+0)+0,w
	movwf	(_a)
	movf	1+(??_adc_conversion+0)+0,w
	movwf	(_a+1)
	line	188
;aqm.c: 188: b=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_adc_conversion+0)+0
	clrf	(??_adc_conversion+0)+0+1
	movf	0+(??_adc_conversion+0)+0,w
	movwf	(_b)
	movf	1+(??_adc_conversion+0)+0,w
	movwf	(_b+1)
	line	189
	
l2504:	
;aqm.c: 189: b=b*256;
	movf	(_b+1),w
	movwf	(??_adc_conversion+0)+0+1
	movf	(_b),w
	movwf	(??_adc_conversion+0)+0
	movlw	08h
	movwf	btemp+1
u2545:
	clrc
	rlf	(??_adc_conversion+0)+0,f
	rlf	(??_adc_conversion+0)+1,f
	decfsz	btemp+1,f
	goto	u2545
	movf	0+(??_adc_conversion+0)+0,w
	movwf	(_b)
	movf	1+(??_adc_conversion+0)+0,w
	movwf	(_b+1)
	line	190
	
l2506:	
;aqm.c: 190: c=b+a/2;
	movf	(_a+1),w
	movwf	(??_adc_conversion+0)+0+1
	movf	(_a),w
	movwf	(??_adc_conversion+0)+0
	movlw	01h
u2555:
	clrc
	rrf	(??_adc_conversion+0)+1,f
	rrf	(??_adc_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u2555
	movf	(_b),w
	addwf	0+(??_adc_conversion+0)+0,w
	movwf	(_c)
	movf	(_b+1),w
	skipnc
	incf	(_b+1),w
	addwf	1+(??_adc_conversion+0)+0,w
	movwf	1+(_c)
	line	191
	
l657:	
	return
	opt stack 0
GLOBAL	__end_of_adc_conversion
	__end_of_adc_conversion:
;; =============== function _adc_conversion ends ============

	signat	_adc_conversion,88
	global	_serial_init
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function _serial_init *****************
;; Defined at:
;;		line 78 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text536
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	78
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
	opt	stack 6
; Regs used in _serial_init: [wreg]
	line	79
	
l2190:	
;aqm.c: 79: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	80
	
l2192:	
;aqm.c: 80: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	81
	
l2194:	
;aqm.c: 81: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	line	82
	
l2196:	
;aqm.c: 82: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	83
	
l2198:	
;aqm.c: 83: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	84
	
l2200:	
;aqm.c: 84: CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	85
	
l2202:	
;aqm.c: 85: TXEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	86
	
l2204:	
;aqm.c: 86: GIE=1;
	bsf	(95/8),(95)&7
	line	87
	
l2206:	
;aqm.c: 87: PEIE=1;
	bsf	(94/8),(94)&7
	line	88
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
;; =============== function _serial_init ends ============

	signat	_serial_init,88
	global	_funct
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _funct *****************
;; Defined at:
;;		line 175 in file "C:\Users\ADMIN\Desktop\aqm\aqm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text537
	file	"C:\Users\ADMIN\Desktop\aqm\aqm.c"
	line	175
	global	__size_of_funct
	__size_of_funct	equ	__end_of_funct-_funct
	
_funct:	
	opt	stack 3
; Regs used in _funct: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_funct+1)
	movf	fsr0,w
	movwf	(??_funct+2)
	movf	pclath,w
	movwf	(??_funct+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_funct+4)
	ljmp	_funct
psect	text537
	line	176
	
i1l2218:	
;aqm.c: 176: if(RCIF){
	btfss	(101/8),(101)&7
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l651
u231_20:
	line	177
	
i1l2220:	
;aqm.c: 177: RCIF=0;
	bcf	(101/8),(101)&7
	line	178
	
i1l2222:	
;aqm.c: 178: s[p]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_funct+0)+0
	movf	(_p),w
	addlw	_s&0ffh
	movwf	fsr0
	movf	(??_funct+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	179
	
i1l2224:	
;aqm.c: 179: if(s[0]=='*'){p++;}
	movf	(_s),w
	xorlw	02Ah
	skipz
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l2228
u232_20:
	
i1l2226:	
	movlw	(01h)
	movwf	(??_funct+0)+0
	movf	(??_funct+0)+0,w
	addwf	(_p),f
	goto	i1l651
	line	180
	
i1l649:	
	
i1l2228:	
;aqm.c: 180: else {p=0;}
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_p)
	goto	i1l651
	
i1l650:	
	goto	i1l651
	line	181
	
i1l648:	
	line	182
	
i1l651:	
	movf	(??_funct+4),w
	movwf	btemp+1
	movf	(??_funct+3),w
	movwf	pclath
	movf	(??_funct+2),w
	movwf	fsr0
	movf	(??_funct+1),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_funct
	__end_of_funct:
;; =============== function _funct ends ============

	signat	_funct,88
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
