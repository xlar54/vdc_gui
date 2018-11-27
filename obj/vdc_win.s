;
; File generated by cc65 v 2.17 - Git eeb1b927
;
	.fopt		compiler,"cc65 v 2.17 - Git eeb1b927"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	on
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.dbg		file, "vdc_win.c", 5961, 1543286115
	.dbg		file, "vdc_gui.h", 778, 1543280824
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/c128.h", 6693, 1534214079
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_vic2.h", 11027, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_sid.h", 3694, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_vdc.h", 2880, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_6526.h", 4033, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/peekpoke.h", 3166, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/string.h", 5198, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stddef.h", 3127, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stdio.h", 6334, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stdarg.h", 2970, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stdlib.h", 5884, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/conio.h", 9160, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/target.h", 3065, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/cbm.h", 11658, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/cbm_filetype.h", 5057, 1532377546
	.dbg		file, "vdc_win.h", 1736, 1543282193
	.dbg		file, "vdc_core.h", 1814, 1543295196
	.dbg		file, "vdc_controls.h", 561, 1543268877
	.dbg		file, "vdc_menus.h", 527, 1543268877
	.dbg		file, "vdc_control_listbox.h", 945, 1543268877
	.dbg		file, "vdc_control_textbox.h", 916, 1543268877
	.dbg		file, "vdc_control_label.h", 695, 1543268877
	.dbg		file, "vdc_control_button.h", 818, 1543268877
	.dbg		file, "vdc_control_checkbox.h", 815, 1543268877
	.dbg		sym, "malloc", "00", extern, "_malloc"
	.dbg		sym, "free", "00", extern, "_free"
	.dbg		sym, "kbhit", "00", extern, "_kbhit"
	.dbg		sym, "cgetc", "00", extern, "_cgetc"
	.dbg		sym, "VDC_DrawBox", "00", extern, "_VDC_DrawBox"
	.dbg		sym, "VDC_PetsciiToScreenCode", "00", extern, "_VDC_PetsciiToScreenCode"
	.dbg		sym, "VDC_RowColToAddress", "00", extern, "_VDC_RowColToAddress"
	.dbg		sym, "VDC_Poke", "00", extern, "_VDC_Poke"
	.dbg		sym, "VDC_SetCursorMode", "00", extern, "_VDC_SetCursorMode"
	.dbg		sym, "VDC_CopyVDCToMem", "00", extern, "_VDC_CopyVDCToMem"
	.dbg		sym, "VDC_CopyMemToVDC", "00", extern, "_VDC_CopyMemToVDC"
	.import		_malloc
	.import		_free
	.import		_kbhit
	.import		_cgetc
	.import		_VDC_DrawBox
	.import		_VDC_PetsciiToScreenCode
	.import		_VDC_RowColToAddress
	.import		_VDC_Poke
	.import		_VDC_SetCursorMode
	.import		_VDC_CopyVDCToMem
	.import		_VDC_CopyMemToVDC
	.export		__renderWindowBorder
	.export		__restoreUnderWindow
	.export		__clearWindow
	.export		__renderWindowControls
	.export		_CreateWindow
	.export		_ShowWindow
	.export		_RefreshWindow
	.export		_CloseWindow
	.export		_DestroyWindow
	.export		_MoveWindow
	.export		_ActivateWindow
	.export		__renderWindowTitle
	.export		__stashUnderWindow

; ---------------------------------------------------------------
; void __near__ _renderWindowBorder (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__renderWindowBorder: near

	.dbg	func, "_renderWindowBorder", "00", extern, "__renderWindowBorder"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 15
	jsr     pushax
	.dbg	line, "vdc_win.c", 16
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	beq     L0007
	.dbg	line, "vdc_win.c", 17
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	jsr     pusha
	ldy     #$02
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	jsr     pusha
	ldy     #$04
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     pusha
	ldy     #$05
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	jsr     _VDC_DrawBox
	.dbg	line, "vdc_win.c", 18
L0007:	jmp     incsp2
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ _restoreUnderWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__restoreUnderWindow: near

	.dbg	func, "_restoreUnderWindow", "00", extern, "__restoreUnderWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "addr", "00", auto, -2
	.dbg	sym, "t", "00", auto, -4
	.dbg	sym, "i", "00", auto, -6

.segment	"CODE"

	.dbg	line, "vdc_win.c", 66
	jsr     pushax
	.dbg	line, "vdc_win.c", 70
	jsr     decsp6
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	ldx     #$00
	jsr     _VDC_RowColToAddress
	ldy     #$04
	jsr     staxysp
	.dbg	line, "vdc_win.c", 72
	ldx     #$00
	txa
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 73
L0149:	jsr     stax0sp
	jsr     pushax
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bcs     L0059
	.dbg	line, "vdc_win.c", 75
	ldy     #$07
	jsr     ldaxysp
	ldy     #$0A
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	jsr     ldaxysp
	clc
	adc     ptr1
	pha
	txa
	adc     ptr1+1
	tax
	pla
	jsr     pushax
	ldy     #$09
	jsr     pushwysp
	ldy     #$0B
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	ldx     #$00
	jsr     _VDC_CopyMemToVDC
	.dbg	line, "vdc_win.c", 76
	ldy     #$04
	ldx     #$00
	lda     #$50
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 77
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	ldx     #$00
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 73
	jsr     ldax0sp
	jsr     incax1
	jmp     L0149
	.dbg	line, "vdc_win.c", 79
L0059:	jmp     incsp8
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ _clearWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__clearWindow: near

	.dbg	func, "_clearWindow", "00", extern, "__clearWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "i", "00", auto, -2
	.dbg	sym, "x", "00", auto, -4

.segment	"CODE"

	.dbg	line, "vdc_win.c", 82
	jsr     pushax
	.dbg	line, "vdc_win.c", 86
	jsr     decsp4
	ldx     #$00
	txa
L014F:	ldy     #$02
	jsr     staxysp
	jsr     pushax
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bcs     L006A
	.dbg	line, "vdc_win.c", 87
	ldx     #$00
	txa
L014E:	jsr     stax0sp
	jsr     pushax
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	jsr     tosicmp0
	bcs     L006B
	.dbg	line, "vdc_win.c", 88
	ldy     #$05
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     ptr1
	ldy     #$03
	jsr     ldaxysp
	clc
	adc     ptr1
	bcc     L014A
	inx
L014A:	jsr     pushax
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     ptr1
	ldy     #$03
	jsr     ldaxysp
	clc
	adc     ptr1
	bcc     L014B
	inx
L014B:	jsr     _VDC_RowColToAddress
	jsr     pushax
	lda     #$60
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 87
	jsr     ldax0sp
	jsr     incax1
	jmp     L014E
	.dbg	line, "vdc_win.c", 86
L006B:	ldy     #$03
	jsr     ldaxysp
	jsr     incax1
	jmp     L014F
	.dbg	line, "vdc_win.c", 89
L006A:	jmp     incsp6
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ _renderWindowControls (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__renderWindowControls: near

	.dbg	func, "_renderWindowControls", "00", extern, "__renderWindowControls"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "ctrl", "00", auto, -2

.segment	"CODE"

	.dbg	line, "vdc_win.c", 92
	jsr     pushax
	.dbg	line, "vdc_win.c", 93
	jsr     ldax0sp
	ldy     #$0C
	jsr     pushwidx
	.dbg	line, "vdc_win.c", 95
	jmp     L0082
	.dbg	line, "vdc_win.c", 97
L0150:	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	cmp     #$01
	bne     L0085
	.dbg	line, "vdc_win.c", 98
	jsr     ldax0sp
	ldy     #$10
	jsr     pushwidx
	ldy     #$03
	jsr     ldaxysp
	pha
	ldy     #$00
	lda     (sp),y
	sta     jmpvec+1
	iny
	lda     (sp),y
	sta     jmpvec+2
	pla
	jsr     jmpvec
	jsr     incsp2
	.dbg	line, "vdc_win.c", 100
L0085:	jsr     ldax0sp
	ldy     #$0D
	jsr     ldaxidx
	jsr     stax0sp
	.dbg	line, "vdc_win.c", 95
L0082:	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0150
	.dbg	line, "vdc_win.c", 102
	jmp     incsp4
	.dbg	line

.endproc

; ---------------------------------------------------------------
; __near__ struct Window * __near__ CreateWindow (unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, __near__ unsigned char *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CreateWindow: near

	.dbg	func, "CreateWindow", "00", extern, "_CreateWindow"
	.dbg	sym, "row", "00", auto, 6
	.dbg	sym, "col", "00", auto, 5
	.dbg	sym, "width", "00", auto, 4
	.dbg	sym, "height", "00", auto, 3
	.dbg	sym, "border", "00", auto, 2
	.dbg	sym, "title", "00", auto, 0
	.dbg	sym, "window", "00", auto, -2

.segment	"CODE"

	.dbg	line, "vdc_win.c", 105
	jsr     pushax
	.dbg	line, "vdc_win.c", 111
	ldx     #$00
	lda     #$0D
	jsr     _malloc
	jsr     pushax
	.dbg	line, "vdc_win.c", 113
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L008E
	.dbg	line, "vdc_win.c", 114
	tax
	jmp     L008B
	.dbg	line, "vdc_win.c", 117
L008E:	ldx     #$00
	ldy     #$06
	lda     (sp),y
	clc
	iny
	adc     (sp),y
	bcc     L0151
	inx
L0151:	cmp     #$51
	txa
	sbc     #$00
	bcs     L0153
	ldx     #$00
	ldy     #$05
	lda     (sp),y
	clc
	ldy     #$08
	adc     (sp),y
	bcc     L0152
	inx
L0152:	cmp     #$1A
	txa
	sbc     #$00
	bcc     L0092
	.dbg	line, "vdc_win.c", 118
L0153:	ldx     #$00
	txa
	jmp     L008B
	.dbg	line, "vdc_win.c", 121
L0092:	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$07
	lda     (sp),y
	ldy     #$00
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 122
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$08
	lda     (sp),y
	ldy     #$01
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 123
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$06
	lda     (sp),y
	ldy     #$02
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 124
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$05
	lda     (sp),y
	ldy     #$03
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 125
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (sp),y
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 126
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0B
	sta     (ptr1),y
	iny
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 127
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	jsr     ldaxysp
	ldy     #$05
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 130
	jsr     pushw0sp
	ldy     #$08
	lda     (sp),y
	jsr     pusha0
	ldy     #$09
	lda     (sp),y
	jsr     tosumula0
	jsr     _malloc
	ldy     #$07
	jsr     staxspidx
	cpx     #$00
	bne     L00A6
	cmp     #$00
	bne     L00A6
	.dbg	line, "vdc_win.c", 132
	jsr     ldax0sp
	jsr     _free
	.dbg	line, "vdc_win.c", 133
	ldx     #$00
	txa
	jmp     L008B
	.dbg	line, "vdc_win.c", 137
L00A6:	jsr     pushw0sp
	ldy     #$08
	lda     (sp),y
	jsr     pusha0
	ldy     #$09
	lda     (sp),y
	jsr     tosumula0
	jsr     _malloc
	ldy     #$09
	jsr     staxspidx
	cpx     #$00
	bne     L00B0
	cmp     #$00
	bne     L00B0
	.dbg	line, "vdc_win.c", 139
	jsr     ldax0sp
	ldy     #$08
	jsr     ldaxidx
	jsr     _free
	.dbg	line, "vdc_win.c", 140
	jsr     ldax0sp
	jsr     _free
	.dbg	line, "vdc_win.c", 141
	ldx     #$00
	txa
	jmp     L008B
	.dbg	line, "vdc_win.c", 144
L00B0:	jsr     ldax0sp
	.dbg	line, "vdc_win.c", 145
L008B:	ldy     #$09
	jmp     addysp
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ ShowWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ShowWindow: near

	.dbg	func, "ShowWindow", "00", extern, "_ShowWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 149
	jsr     pushax
	.dbg	line, "vdc_win.c", 150
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L00BE
	.dbg	line, "vdc_win.c", 152
	jsr     ldax0sp
	jsr     __stashUnderWindow
	.dbg	line, "vdc_win.c", 153
	jsr     ldax0sp
	jsr     __clearWindow
	.dbg	line, "vdc_win.c", 154
	jsr     ldax0sp
	jsr     __renderWindowBorder
	.dbg	line, "vdc_win.c", 155
	jsr     ldax0sp
	jsr     __renderWindowTitle
	.dbg	line, "vdc_win.c", 156
	jsr     ldax0sp
	jsr     __renderWindowControls
	.dbg	line, "vdc_win.c", 158
L00BE:	jmp     incsp2
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ RefreshWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_RefreshWindow: near

	.dbg	func, "RefreshWindow", "00", extern, "_RefreshWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 161
	jsr     pushax
	.dbg	line, "vdc_win.c", 162
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L00CC
	.dbg	line, "vdc_win.c", 163
	jsr     ldax0sp
	jsr     __renderWindowControls
	.dbg	line, "vdc_win.c", 164
L00CC:	jmp     incsp2
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ CloseWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CloseWindow: near

	.dbg	func, "CloseWindow", "00", extern, "_CloseWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 167
	jsr     pushax
	.dbg	line, "vdc_win.c", 168
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L00D2
	.dbg	line, "vdc_win.c", 169
	jsr     ldax0sp
	jsr     __restoreUnderWindow
	.dbg	line, "vdc_win.c", 170
L00D2:	jmp     incsp2
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ DestroyWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DestroyWindow: near

	.dbg	func, "DestroyWindow", "00", extern, "_DestroyWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 172
	jsr     pushax
	.dbg	line, "vdc_win.c", 178
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L00D8
	.dbg	line, "vdc_win.c", 180
	jsr     ldax0sp
	jsr     _CloseWindow
	.dbg	line, "vdc_win.c", 182
	jsr     ldax0sp
	ldy     #$0A
	jsr     ldaxidx
	jsr     _free
	.dbg	line, "vdc_win.c", 183
	jsr     ldax0sp
	ldy     #$08
	jsr     ldaxidx
	jsr     _free
	.dbg	line, "vdc_win.c", 184
	jsr     ldax0sp
	jsr     _free
	.dbg	line, "vdc_win.c", 186
L00D8:	jmp     incsp2
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ MoveWindow (__near__ struct Window *, unsigned char, unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_MoveWindow: near

	.dbg	func, "MoveWindow", "00", extern, "_MoveWindow"
	.dbg	sym, "window", "00", auto, 2
	.dbg	sym, "row", "00", auto, 1
	.dbg	sym, "col", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 189
	jsr     pusha
	.dbg	line, "vdc_win.c", 190
	ldy     #$03
	jsr     ldaxysp
	jsr     _CloseWindow
	.dbg	line, "vdc_win.c", 192
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (sp),y
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 193
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (sp),y
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 195
	ldy     #$03
	jsr     ldaxysp
	jsr     _ShowWindow
	.dbg	line, "vdc_win.c", 197
	jmp     incsp4
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ ActivateWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ActivateWindow: near

	.dbg	func, "ActivateWindow", "00", extern, "_ActivateWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "ctrl", "00", auto, -2
	.dbg	sym, "key", "00", auto, -4

.segment	"CODE"

	.dbg	line, "vdc_win.c", 203
	jsr     pushax
	.dbg	line, "vdc_win.c", 204
	jsr     ldax0sp
	ldy     #$0C
	jsr     pushwidx
	.dbg	line, "vdc_win.c", 205
	jsr     push0
	.dbg	line, "vdc_win.c", 207
	lda     #$01
	jsr     _VDC_SetCursorMode
	.dbg	line, "vdc_win.c", 209
	jmp     L00FC
	.dbg	line, "vdc_win.c", 213
L00F5:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 216
	cpx     #$00
	bne     L00FC
	cmp     #$00
	bne     L00FC
	.dbg	line, "vdc_win.c", 217
	ldy     #$05
	jsr     ldaxysp
	ldy     #$0C
L0157:	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 211
L00FC:	ldy     #$03
	jsr     ldaxysp
	ldy     #$12
	jsr     ldaxidx
	cpx     #$00
	bne     L0154
	cmp     #$00
	beq     L00F5
	.dbg	line, "vdc_win.c", 221
L0154:	lda     #$00
	sta     $00D0
	.dbg	line, "vdc_win.c", 224
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$01
	ldy     #$0E
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 225
	ldy     #$03
	jsr     ldaxysp
	ldy     #$10
	jsr     pushwidx
	ldy     #$05
	jsr     ldaxysp
	pha
	ldy     #$00
	lda     (sp),y
	sta     jmpvec+1
	iny
	lda     (sp),y
	sta     jmpvec+2
	pla
	jsr     jmpvec
	jsr     incsp2
	.dbg	line, "vdc_win.c", 232
L010D:	jsr     _kbhit
	ldx     #$00
	jsr     stax0sp
	.dbg	line, "vdc_win.c", 234
	cmp     #$00
	beq     L010D
	.dbg	line, "vdc_win.c", 236
	jsr     _cgetc
	ldx     #$00
	jsr     stax0sp
	.dbg	line, "vdc_win.c", 244
	cmp     #$85
	bne     L0115
	.dbg	line, "vdc_win.c", 246
	stx     $00D0
	.dbg	line, "vdc_win.c", 249
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0E
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 250
	ldy     #$03
	jsr     ldaxysp
	ldy     #$10
	jsr     pushwidx
	ldy     #$05
	jsr     ldaxysp
	pha
	ldy     #$00
	lda     (sp),y
	sta     jmpvec+1
	iny
	lda     (sp),y
	sta     jmpvec+2
	pla
	jsr     jmpvec
	jsr     incsp2
	.dbg	line, "vdc_win.c", 255
	jmp     L00F5
	.dbg	line, "vdc_win.c", 257
L0115:	ldy     #$01
	lda     (sp),y
	jne     L0128
	lda     (sp,x)
	cmp     #$86
	bne     L0128
	.dbg	line, "vdc_win.c", 259
	stx     $00D0
	.dbg	line, "vdc_win.c", 262
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0E
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 263
	ldy     #$03
	jsr     ldaxysp
	ldy     #$10
	jsr     pushwidx
	ldy     #$05
	jsr     ldaxysp
	pha
	ldy     #$00
	lda     (sp),y
	sta     jmpvec+1
	iny
	lda     (sp),y
	sta     jmpvec+2
	pla
	jsr     jmpvec
	jsr     incsp2
	.dbg	line, "vdc_win.c", 266
	ldy     #$05
	jsr     pushwysp
	ldy     #$07
	jsr     ldaxysp
	ldy     #$0C
	jsr     ldaxidx
	jsr     tosicmp
	bne     L0134
	.dbg	line, "vdc_win.c", 268
	jmp     L0138
	.dbg	line, "vdc_win.c", 269
L0136:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 268
L0138:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	cpx     #$00
	bne     L0136
	cmp     #$00
	bne     L0136
	.dbg	line, "vdc_win.c", 272
	jmp     L00FC
	.dbg	line, "vdc_win.c", 274
L0134:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0B
	.dbg	line, "vdc_win.c", 276
	jmp     L0157
	.dbg	line, "vdc_win.c", 279
L0128:	ldy     #$03
	jsr     ldaxysp
	ldy     #$12
	jsr     pushwidx
	ldy     #$05
	jsr     ldaxysp
	jsr     pushax
	ldy     #$04
	lda     (sp),y
	pha
	ldy     #$02
	lda     (sp),y
	sta     jmpvec+1
	iny
	lda     (sp),y
	sta     jmpvec+2
	pla
	jsr     jmpvec
	jsr     incsp2
	.dbg	line, "vdc_win.c", 281
	lda     #$00
	sta     $00D0
	.dbg	line, "vdc_win.c", 284
	jmp     L010D
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ _renderWindowTitle (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__renderWindowTitle: near

	.dbg	func, "_renderWindowTitle", "00", extern, "__renderWindowTitle"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "addr", "00", auto, -2
	.dbg	sym, "i", "00", auto, -4
	.dbg	sym, "maxAddr", "00", auto, -6
	.dbg	sym, "c", "00", auto, -7

.segment	"CODE"

	.dbg	line, "vdc_win.c", 22
	jsr     pushax
	.dbg	line, "vdc_win.c", 26
	jsr     decsp7
	ldy     #$08
	jsr     ldaxysp
	ldy     #$06
	jsr     ldaxidx
	cpx     #$00
	bne     L0166
	cmp     #$00
	jeq     L0010
	.dbg	line, "vdc_win.c", 29
L0166:	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$0A
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     incax1
	jsr     _VDC_RowColToAddress
	ldy     #$05
	jsr     staxysp
	.dbg	line, "vdc_win.c", 32
	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$0A
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     pusha0
	ldy     #$0C
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	jsr     tosadda0
	jsr     decax4
	jsr     _VDC_RowColToAddress
	ldy     #$01
	jsr     staxysp
	.dbg	line, "vdc_win.c", 34
	ldx     #$00
	txa
	ldy     #$03
	jsr     staxysp
	.dbg	line, "vdc_win.c", 36
	ldy     #$06
	jsr     ldaxysp
	sta     regsave
	stx     regsave+1
	jsr     incax1
	ldy     #$05
	jsr     staxysp
	lda     regsave
	ldx     regsave+1
	jsr     pushax
	ldx     #$00
	lda     #$5B
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 37
	ldy     #$06
	jsr     ldaxysp
	sta     regsave
	stx     regsave+1
	jsr     incax1
	ldy     #$05
	jsr     staxysp
	lda     regsave
	ldx     regsave+1
	jsr     pushax
	ldx     #$00
	lda     #$20
	.dbg	line, "vdc_win.c", 39
	jmp     L0167
	.dbg	line, "vdc_win.c", 40
L0025:	ldy     #$06
	jsr     ldaxysp
	ldy     #$01
	cmp     (sp),y
	txa
	iny
	sbc     (sp),y
	bvc     L0164
	eor     #$80
L0164:	bpl     L002C
	.dbg	line, "vdc_win.c", 41
	ldy     #$06
	jsr     ldaxysp
	sta     regsave
	stx     regsave+1
	jsr     incax1
	ldy     #$05
	jsr     staxysp
	lda     regsave
	ldx     regsave+1
	jsr     pushax
	ldy     #$02
	lda     (sp),y
	ldx     #$00
L0167:	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 39
L002C:	ldy     #$08
	jsr     ldaxysp
	ldy     #$06
	jsr     pushwidx
	ldy     #$06
	jsr     ldaxysp
	sta     regsave
	stx     regsave+1
	jsr     incax1
	ldy     #$05
	jsr     staxysp
	lda     regsave
	ldx     regsave+1
	jsr     tosaddax
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     (sp),y
	cmp     #$00
	bne     L0025
	.dbg	line, "vdc_win.c", 43
	ldy     #$06
	jsr     ldaxysp
	sta     regsave
	stx     regsave+1
	jsr     incax1
	ldy     #$05
	jsr     staxysp
	lda     regsave
	ldx     regsave+1
	jsr     pushax
	ldx     #$00
	lda     #$20
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 44
	ldy     #$06
	jsr     ldaxysp
	sta     regsave
	stx     regsave+1
	jsr     incax1
	ldy     #$05
	jsr     staxysp
	lda     regsave
	ldx     regsave+1
	jsr     pushax
	ldx     #$00
	lda     #$5D
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 47
L0010:	ldy     #$09
	jmp     addysp
	.dbg	line

.endproc

; ---------------------------------------------------------------
; void __near__ _stashUnderWindow (__near__ struct Window *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__stashUnderWindow: near

	.dbg	func, "_stashUnderWindow", "00", extern, "__stashUnderWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "addr", "00", auto, -2
	.dbg	sym, "t", "00", auto, -4
	.dbg	sym, "i", "00", auto, -6

.segment	"CODE"

	.dbg	line, "vdc_win.c", 50
	jsr     pushax
	.dbg	line, "vdc_win.c", 54
	jsr     decsp6
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	ldx     #$00
	jsr     _VDC_RowColToAddress
	ldy     #$04
	jsr     staxysp
	.dbg	line, "vdc_win.c", 56
	ldx     #$00
	txa
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 57
L0169:	jsr     stax0sp
	jsr     pushax
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bcs     L0042
	.dbg	line, "vdc_win.c", 59
	ldy     #$07
	jsr     pushwysp
	ldy     #$09
	jsr     ldaxysp
	ldy     #$0A
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$05
	jsr     ldaxysp
	clc
	adc     ptr1
	pha
	txa
	adc     ptr1+1
	tax
	pla
	jsr     pushax
	ldy     #$0B
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	ldx     #$00
	jsr     _VDC_CopyVDCToMem
	.dbg	line, "vdc_win.c", 60
	ldy     #$04
	ldx     #$00
	lda     #$50
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 61
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	ldx     #$00
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 57
	jsr     ldax0sp
	jsr     incax1
	jmp     L0169
	.dbg	line, "vdc_win.c", 63
L0042:	jmp     incsp8
	.dbg	line

.endproc
