// func maskAndPd(src [2]float64, k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskAndPd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VANDPD

	MOVOU X3, ret+52(FP)
	RET

// func maskzAndPd(k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskzAndPd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VANDPD

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskAndPd(src [4]float64, k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskAndPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VANDPD

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzAndPd(k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskzAndPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VANDPD

	MOV Y2, ret+68(FP)
	RET

// func m512AndPd(a [8]float64, b [8]float64) [8]float64
TEXT ·m512AndPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VANDPD Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func m512MaskAndPd(src [8]float64, k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskAndPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VANDPD

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzAndPd(k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskzAndPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VANDPD

	MOV Z2, ret+132(FP)
	RET

// func maskAndPs(src [4]float32, k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskAndPs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VANDPS

	MOVOU X3, ret+52(FP)
	RET

// func maskzAndPs(k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskzAndPs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VANDPS

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskAndPs(src [8]float32, k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskAndPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VANDPS

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzAndPs(k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskzAndPs(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VANDPS

	MOV Y2, ret+68(FP)
	RET

// func m512AndPs(a [16]float32, b [16]float32) [16]float32
TEXT ·m512AndPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VANDPS Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func m512MaskAndPs(src [16]float32, k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskAndPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VANDPS

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzAndPs(k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskzAndPs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VANDPS

	MOV Z2, ret+132(FP)
	RET

// func maskAndnotPd(src [2]float64, k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskAndnotPd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VANDNPD

	MOVOU X3, ret+52(FP)
	RET

// func maskzAndnotPd(k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskzAndnotPd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VANDNPD

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskAndnotPd(src [4]float64, k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskAndnotPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VANDNPD

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzAndnotPd(k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskzAndnotPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VANDNPD

	MOV Y2, ret+68(FP)
	RET

// func m512AndnotPd(a [8]float64, b [8]float64) [8]float64
TEXT ·m512AndnotPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VANDNPD Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func m512MaskAndnotPd(src [8]float64, k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskAndnotPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VANDNPD

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzAndnotPd(k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskzAndnotPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VANDNPD

	MOV Z2, ret+132(FP)
	RET

// func maskAndnotPs(src [4]float32, k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskAndnotPs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VANDNPS

	MOVOU X3, ret+52(FP)
	RET

// func maskzAndnotPs(k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskzAndnotPs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VANDNPS

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskAndnotPs(src [8]float32, k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskAndnotPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VANDNPS

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzAndnotPs(k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskzAndnotPs(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VANDNPS

	MOV Y2, ret+68(FP)
	RET

// func m512AndnotPs(a [16]float32, b [16]float32) [16]float32
TEXT ·m512AndnotPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VANDNPS Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func m512MaskAndnotPs(src [16]float32, k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskAndnotPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VANDNPS

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzAndnotPs(k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskzAndnotPs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VANDNPS

	MOV Z2, ret+132(FP)
	RET

// func m256BroadcastF32x2(a [4]float32) [8]float32
TEXT ·m256BroadcastF32x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTF32X2 X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskBroadcastF32x2(src [8]float32, k uint8, a [4]float32) [8]float32
TEXT ·m256MaskBroadcastF32x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTF32X2

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzBroadcastF32x2(k uint8, a [4]float32) [8]float32
TEXT ·m256MaskzBroadcastF32x2(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTF32X2 R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512BroadcastF32x2(a [4]float32) [16]float32
TEXT ·m512BroadcastF32x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTF32X2 X0

	MOV Z0, ret+16(FP)
	RET

// func m512MaskBroadcastF32x2(src [16]float32, k uint16, a [4]float32) [16]float32
TEXT ·m512MaskBroadcastF32x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	MOVOU a+68(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTF32X2

	MOV Z2, ret+84(FP)
	RET

// func m512MaskzBroadcastF32x2(k uint16, a [4]float32) [16]float32
TEXT ·m512MaskzBroadcastF32x2(SB),7,$0
	MOVW k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTF32X2 R8, X1

	MOV Z1, ret+20(FP)
	RET

// func m512BroadcastF32x8(a [8]float32) [16]float32
TEXT ·m512BroadcastF32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VBROADCASTF32X8 Y0

	MOV Z0, ret+32(FP)
	RET

// func m512MaskBroadcastF32x8(src [16]float32, k uint16, a [8]float32) [16]float32
TEXT ·m512MaskBroadcastF32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2

	// TODO: Code missing - uses instrunction: VBROADCASTF32X8

	MOV Z2, ret+100(FP)
	RET

// func m512MaskzBroadcastF32x8(k uint16, a [8]float32) [16]float32
TEXT ·m512MaskzBroadcastF32x8(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VBROADCASTF32X8 R8, Y1

	MOV Z1, ret+36(FP)
	RET

// func m256BroadcastF64x2(a [2]float64) [4]float64
TEXT ·m256BroadcastF64x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTF64X2 X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskBroadcastF64x2(src [4]float64, k uint8, a [2]float64) [4]float64
TEXT ·m256MaskBroadcastF64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTF64X2

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzBroadcastF64x2(k uint8, a [2]float64) [4]float64
TEXT ·m256MaskzBroadcastF64x2(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTF64X2 R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512BroadcastF64x2(a [2]float64) [8]float64
TEXT ·m512BroadcastF64x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTF64X2 X0

	MOV Z0, ret+16(FP)
	RET

// func m512MaskBroadcastF64x2(src [8]float64, k uint8, a [2]float64) [8]float64
TEXT ·m512MaskBroadcastF64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	MOVOU a+68(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTF64X2

	MOV Z2, ret+84(FP)
	RET

// func m512MaskzBroadcastF64x2(k uint8, a [2]float64) [8]float64
TEXT ·m512MaskzBroadcastF64x2(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTF64X2 R8, X1

	MOV Z1, ret+20(FP)
	RET

// func broadcastI32x2(a [16]byte) [16]byte
TEXT ·broadcastI32x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTI32X2 X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskBroadcastI32x2(src [16]byte, k uint8, a [16]byte) [16]byte
TEXT ·maskBroadcastI32x2(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTI32X2

	MOVOU X2, ret+36(FP)
	RET

// func maskzBroadcastI32x2(k uint8, a [16]byte) [16]byte
TEXT ·maskzBroadcastI32x2(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTI32X2 R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256BroadcastI32x2(a [16]byte) [32]byte
TEXT ·m256BroadcastI32x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTI32X2 X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskBroadcastI32x2(src [32]byte, k uint8, a [16]byte) [32]byte
TEXT ·m256MaskBroadcastI32x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTI32X2

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzBroadcastI32x2(k uint8, a [16]byte) [32]byte
TEXT ·m256MaskzBroadcastI32x2(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTI32X2 R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512BroadcastI32x2(a [16]byte) [64]byte
TEXT ·m512BroadcastI32x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTI32X2 X0

	MOV Z0, ret+16(FP)
	RET

// func m512MaskBroadcastI32x2(src [64]byte, k uint16, a [16]byte) [64]byte
TEXT ·m512MaskBroadcastI32x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	MOVOU a+68(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTI32X2

	MOV Z2, ret+84(FP)
	RET

// func m512MaskzBroadcastI32x2(k uint16, a [16]byte) [64]byte
TEXT ·m512MaskzBroadcastI32x2(SB),7,$0
	MOVW k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTI32X2 R8, X1

	MOV Z1, ret+20(FP)
	RET

// func m512BroadcastI32x8(a [32]byte) [64]byte
TEXT ·m512BroadcastI32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VBROADCASTI32X8 Y0

	MOV Z0, ret+32(FP)
	RET

// func m512MaskBroadcastI32x8(src [64]byte, k uint16, a [32]byte) [64]byte
TEXT ·m512MaskBroadcastI32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+68(FP),Y2

	// TODO: Code missing - uses instrunction: VBROADCASTI32X8

	MOV Z2, ret+100(FP)
	RET

// func m512MaskzBroadcastI32x8(k uint16, a [32]byte) [64]byte
TEXT ·m512MaskzBroadcastI32x8(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VBROADCASTI32X8 R8, Y1

	MOV Z1, ret+36(FP)
	RET

// func m256BroadcastI64x2(a [16]byte) [32]byte
TEXT ·m256BroadcastI64x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTI64X2 X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskBroadcastI64x2(src [32]byte, k uint8, a [16]byte) [32]byte
TEXT ·m256MaskBroadcastI64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTI64X2

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzBroadcastI64x2(k uint8, a [16]byte) [32]byte
TEXT ·m256MaskzBroadcastI64x2(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTI64X2 R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512BroadcastI64x2(a [16]byte) [64]byte
TEXT ·m512BroadcastI64x2(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VBROADCASTI64X2 X0

	MOV Z0, ret+16(FP)
	RET

// func m512MaskBroadcastI64x2(src [64]byte, k uint8, a [16]byte) [64]byte
TEXT ·m512MaskBroadcastI64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	MOVOU a+68(FP),X2

	// TODO: Code missing - uses instrunction: VBROADCASTI64X2

	MOV Z2, ret+84(FP)
	RET

// func m512MaskzBroadcastI64x2(k uint8, a [16]byte) [64]byte
TEXT ·m512MaskzBroadcastI64x2(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VBROADCASTI64X2 R8, X1

	MOV Z1, ret+20(FP)
	RET

// func m512CvtRoundepi64Pd(a [64]byte, rounding int) [8]float64
TEXT ·m512CvtRoundepi64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	MOVQ rounding+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTQQ2PD Z0, R9

	MOV Z1, ret+72(FP)
	RET

// func m512MaskCvtRoundepi64Pd(src [8]float64, k uint8, a [64]byte, rounding int) [8]float64
TEXT ·m512MaskCvtRoundepi64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2
	MOVQ rounding+132(FP),R11

	// TODO: Code missing - uses instrunction: VCVTQQ2PD

	MOV Z3, ret+140(FP)
	RET

// func m512MaskzCvtRoundepi64Pd(k uint8, a [64]byte, rounding int) [8]float64
TEXT ·m512MaskzCvtRoundepi64Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTQQ2PD

	MOV Z2, ret+76(FP)
	RET

// func m512CvtRoundepi64Ps(a [64]byte, rounding int) [8]float32
TEXT ·m512CvtRoundepi64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	MOVQ rounding+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTQQ2PS Z0, R9

	MOV Y1, ret+72(FP)
	RET

// func m512MaskCvtRoundepi64Ps(src [8]float32, k uint8, a [64]byte, rounding int) [8]float32
TEXT ·m512MaskCvtRoundepi64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+36(FP),Z2
	MOVQ rounding+100(FP),R11

	// TODO: Code missing - uses instrunction: VCVTQQ2PS

	MOV Y3, ret+108(FP)
	RET

// func m512MaskzCvtRoundepi64Ps(k uint8, a [64]byte, rounding int) [8]float32
TEXT ·m512MaskzCvtRoundepi64Ps(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTQQ2PS

	MOV Y2, ret+76(FP)
	RET

// func m512CvtRoundepu64Pd(a [64]byte, rounding int) [8]float64
TEXT ·m512CvtRoundepu64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	MOVQ rounding+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTUQQ2PD Z0, R9

	MOV Z1, ret+72(FP)
	RET

// func m512MaskCvtRoundepu64Pd(src [8]float64, k uint8, a [64]byte, rounding int) [8]float64
TEXT ·m512MaskCvtRoundepu64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2
	MOVQ rounding+132(FP),R11

	// TODO: Code missing - uses instrunction: VCVTUQQ2PD

	MOV Z3, ret+140(FP)
	RET

// func m512MaskzCvtRoundepu64Pd(k uint8, a [64]byte, rounding int) [8]float64
TEXT ·m512MaskzCvtRoundepu64Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTUQQ2PD

	MOV Z2, ret+76(FP)
	RET

// func m512CvtRoundepu64Ps(a [64]byte, rounding int) [8]float32
TEXT ·m512CvtRoundepu64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	MOVQ rounding+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTUQQ2PS Z0, R9

	MOV Y1, ret+72(FP)
	RET

// func m512MaskCvtRoundepu64Ps(src [8]float32, k uint8, a [64]byte, rounding int) [8]float32
TEXT ·m512MaskCvtRoundepu64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+36(FP),Z2
	MOVQ rounding+100(FP),R11

	// TODO: Code missing - uses instrunction: VCVTUQQ2PS

	MOV Y3, ret+108(FP)
	RET

// func m512MaskzCvtRoundepu64Ps(k uint8, a [64]byte, rounding int) [8]float32
TEXT ·m512MaskzCvtRoundepu64Ps(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTUQQ2PS

	MOV Y2, ret+76(FP)
	RET

// func m512CvtRoundpdEpi64(a [8]float64, rounding int) [64]byte
TEXT ·m512CvtRoundpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	MOVQ rounding+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTPD2QQ Z0, R9

	MOV Z1, ret+72(FP)
	RET

// func m512MaskCvtRoundpdEpi64(src [64]byte, k uint8, a [8]float64, rounding int) [64]byte
TEXT ·m512MaskCvtRoundpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	MOVQ rounding+132(FP),R11

	// TODO: Code missing - uses instrunction: VCVTPD2QQ

	MOV Z3, ret+140(FP)
	RET

// func m512MaskzCvtRoundpdEpi64(k uint8, a [8]float64, rounding int) [64]byte
TEXT ·m512MaskzCvtRoundpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTPD2QQ

	MOV Z2, ret+76(FP)
	RET

// func m512CvtRoundpdEpu64(a [8]float64, rounding int) [64]byte
TEXT ·m512CvtRoundpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	MOVQ rounding+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTPD2UQQ Z0, R9

	MOV Z1, ret+72(FP)
	RET

// func m512MaskCvtRoundpdEpu64(src [64]byte, k uint8, a [8]float64, rounding int) [64]byte
TEXT ·m512MaskCvtRoundpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	MOVQ rounding+132(FP),R11

	// TODO: Code missing - uses instrunction: VCVTPD2UQQ

	MOV Z3, ret+140(FP)
	RET

// func m512MaskzCvtRoundpdEpu64(k uint8, a [8]float64, rounding int) [64]byte
TEXT ·m512MaskzCvtRoundpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTPD2UQQ

	MOV Z2, ret+76(FP)
	RET

// func m512CvtRoundpsEpi64(a [8]float32, rounding int) [64]byte
TEXT ·m512CvtRoundpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0
	MOVQ rounding+32(FP),R9

	// TODO: Code missing - could be:
	// VCVTPS2QQ Y0, R9

	MOV Z1, ret+40(FP)
	RET

// func m512MaskCvtRoundpsEpi64(src [64]byte, k uint8, a [8]float32, rounding int) [64]byte
TEXT ·m512MaskCvtRoundpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2
	MOVQ rounding+100(FP),R11

	// TODO: Code missing - uses instrunction: VCVTPS2QQ

	MOV Z3, ret+108(FP)
	RET

// func m512MaskzCvtRoundpsEpi64(k uint8, a [8]float32, rounding int) [64]byte
TEXT ·m512MaskzCvtRoundpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	MOVQ rounding+36(FP),R10

	// TODO: Code missing - uses instrunction: VCVTPS2QQ

	MOV Z2, ret+44(FP)
	RET

// func m512CvtRoundpsEpu64(a [8]float32, rounding int) [64]byte
TEXT ·m512CvtRoundpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0
	MOVQ rounding+32(FP),R9

	// TODO: Code missing - could be:
	// VCVTPS2UQQ Y0, R9

	MOV Z1, ret+40(FP)
	RET

// func m512MaskCvtRoundpsEpu64(src [64]byte, k uint8, a [8]float32, rounding int) [64]byte
TEXT ·m512MaskCvtRoundpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2
	MOVQ rounding+100(FP),R11

	// TODO: Code missing - uses instrunction: VCVTPS2UQQ

	MOV Z3, ret+108(FP)
	RET

// func m512MaskzCvtRoundpsEpu64(k uint8, a [8]float32, rounding int) [64]byte
TEXT ·m512MaskzCvtRoundpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	MOVQ rounding+36(FP),R10

	// TODO: Code missing - uses instrunction: VCVTPS2UQQ

	MOV Z2, ret+44(FP)
	RET

// func cvtepi64Pd(a [16]byte) [2]float64
TEXT ·cvtepi64Pd(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTQQ2PD X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtepi64Pd(src [2]float64, k uint8, a [16]byte) [2]float64
TEXT ·maskCvtepi64Pd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTQQ2PD

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtepi64Pd(k uint8, a [16]byte) [2]float64
TEXT ·maskzCvtepi64Pd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTQQ2PD R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256Cvtepi64Pd(a [32]byte) [4]float64
TEXT ·m256Cvtepi64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTQQ2PD Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskCvtepi64Pd(src [4]float64, k uint8, a [32]byte) [4]float64
TEXT ·m256MaskCvtepi64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTQQ2PD

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzCvtepi64Pd(k uint8, a [32]byte) [4]float64
TEXT ·m256MaskzCvtepi64Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTQQ2PD R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512Cvtepi64Pd(a [64]byte) [8]float64
TEXT ·m512Cvtepi64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTQQ2PD Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskCvtepi64Pd(src [8]float64, k uint8, a [64]byte) [8]float64
TEXT ·m512MaskCvtepi64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTQQ2PD

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzCvtepi64Pd(k uint8, a [64]byte) [8]float64
TEXT ·m512MaskzCvtepi64Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTQQ2PD R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func cvtepi64Ps(a [16]byte) [4]float32
TEXT ·cvtepi64Ps(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTQQ2PS X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtepi64Ps(src [4]float32, k uint8, a [16]byte) [4]float32
TEXT ·maskCvtepi64Ps(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTQQ2PS

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtepi64Ps(k uint8, a [16]byte) [4]float32
TEXT ·maskzCvtepi64Ps(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTQQ2PS R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256Cvtepi64Ps(a [32]byte) [4]float32
TEXT ·m256Cvtepi64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTQQ2PS Y0

	MOVOU X0, ret+32(FP)
	RET

// func m256MaskCvtepi64Ps(src [4]float32, k uint8, a [32]byte) [4]float32
TEXT ·m256MaskCvtepi64Ps(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+20(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTQQ2PS

	MOVOU X2, ret+52(FP)
	RET

// func m256MaskzCvtepi64Ps(k uint8, a [32]byte) [4]float32
TEXT ·m256MaskzCvtepi64Ps(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTQQ2PS R8, Y1

	MOVOU X1, ret+36(FP)
	RET

// func m512Cvtepi64Ps(a [64]byte) [8]float32
TEXT ·m512Cvtepi64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTQQ2PS Z0

	MOV Y0, ret+64(FP)
	RET

// func m512MaskCvtepi64Ps(src [8]float32, k uint8, a [64]byte) [8]float32
TEXT ·m512MaskCvtepi64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+36(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTQQ2PS

	MOV Y2, ret+100(FP)
	RET

// func m512MaskzCvtepi64Ps(k uint8, a [64]byte) [8]float32
TEXT ·m512MaskzCvtepi64Ps(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTQQ2PS R8, Z1

	MOV Y1, ret+68(FP)
	RET

// func cvtepu64Pd(a [16]byte) [2]float64
TEXT ·cvtepu64Pd(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTUQQ2PD X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtepu64Pd(src [2]float64, k uint8, a [16]byte) [2]float64
TEXT ·maskCvtepu64Pd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTUQQ2PD

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtepu64Pd(k uint8, a [16]byte) [2]float64
TEXT ·maskzCvtepu64Pd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTUQQ2PD R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256Cvtepu64Pd(a [32]byte) [4]float64
TEXT ·m256Cvtepu64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTUQQ2PD Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskCvtepu64Pd(src [4]float64, k uint8, a [32]byte) [4]float64
TEXT ·m256MaskCvtepu64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTUQQ2PD

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzCvtepu64Pd(k uint8, a [32]byte) [4]float64
TEXT ·m256MaskzCvtepu64Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTUQQ2PD R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512Cvtepu64Pd(a [64]byte) [8]float64
TEXT ·m512Cvtepu64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTUQQ2PD Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskCvtepu64Pd(src [8]float64, k uint8, a [64]byte) [8]float64
TEXT ·m512MaskCvtepu64Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTUQQ2PD

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzCvtepu64Pd(k uint8, a [64]byte) [8]float64
TEXT ·m512MaskzCvtepu64Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTUQQ2PD R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func cvtepu64Ps(a [16]byte) [4]float32
TEXT ·cvtepu64Ps(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTUQQ2PS X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtepu64Ps(src [4]float32, k uint8, a [16]byte) [4]float32
TEXT ·maskCvtepu64Ps(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTUQQ2PS

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtepu64Ps(k uint8, a [16]byte) [4]float32
TEXT ·maskzCvtepu64Ps(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTUQQ2PS R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256Cvtepu64Ps(a [32]byte) [4]float32
TEXT ·m256Cvtepu64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTUQQ2PS Y0

	MOVOU X0, ret+32(FP)
	RET

// func m256MaskCvtepu64Ps(src [4]float32, k uint8, a [32]byte) [4]float32
TEXT ·m256MaskCvtepu64Ps(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+20(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTUQQ2PS

	MOVOU X2, ret+52(FP)
	RET

// func m256MaskzCvtepu64Ps(k uint8, a [32]byte) [4]float32
TEXT ·m256MaskzCvtepu64Ps(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTUQQ2PS R8, Y1

	MOVOU X1, ret+36(FP)
	RET

// func m512Cvtepu64Ps(a [64]byte) [8]float32
TEXT ·m512Cvtepu64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTUQQ2PS Z0

	MOV Y0, ret+64(FP)
	RET

// func m512MaskCvtepu64Ps(src [8]float32, k uint8, a [64]byte) [8]float32
TEXT ·m512MaskCvtepu64Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+36(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTUQQ2PS

	MOV Y2, ret+100(FP)
	RET

// func m512MaskzCvtepu64Ps(k uint8, a [64]byte) [8]float32
TEXT ·m512MaskzCvtepu64Ps(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTUQQ2PS R8, Z1

	MOV Y1, ret+68(FP)
	RET

// func cvtpdEpi64(a [2]float64) [16]byte
TEXT ·cvtpdEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTPD2QQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtpdEpi64(src [16]byte, k uint8, a [2]float64) [16]byte
TEXT ·maskCvtpdEpi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTPD2QQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtpdEpi64(k uint8, a [2]float64) [16]byte
TEXT ·maskzCvtpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTPD2QQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvtpdEpi64(a [4]float64) [32]byte
TEXT ·m256CvtpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTPD2QQ Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskCvtpdEpi64(src [32]byte, k uint8, a [4]float64) [32]byte
TEXT ·m256MaskCvtpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTPD2QQ

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzCvtpdEpi64(k uint8, a [4]float64) [32]byte
TEXT ·m256MaskzCvtpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTPD2QQ R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512CvtpdEpi64(a [8]float64) [64]byte
TEXT ·m512CvtpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTPD2QQ Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskCvtpdEpi64(src [64]byte, k uint8, a [8]float64) [64]byte
TEXT ·m512MaskCvtpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTPD2QQ

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzCvtpdEpi64(k uint8, a [8]float64) [64]byte
TEXT ·m512MaskzCvtpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTPD2QQ R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func cvtpdEpu64(a [2]float64) [16]byte
TEXT ·cvtpdEpu64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTPD2UQQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtpdEpu64(src [16]byte, k uint8, a [2]float64) [16]byte
TEXT ·maskCvtpdEpu64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTPD2UQQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtpdEpu64(k uint8, a [2]float64) [16]byte
TEXT ·maskzCvtpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTPD2UQQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvtpdEpu64(a [4]float64) [32]byte
TEXT ·m256CvtpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTPD2UQQ Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskCvtpdEpu64(src [32]byte, k uint8, a [4]float64) [32]byte
TEXT ·m256MaskCvtpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTPD2UQQ

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzCvtpdEpu64(k uint8, a [4]float64) [32]byte
TEXT ·m256MaskzCvtpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTPD2UQQ R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512CvtpdEpu64(a [8]float64) [64]byte
TEXT ·m512CvtpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTPD2UQQ Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskCvtpdEpu64(src [64]byte, k uint8, a [8]float64) [64]byte
TEXT ·m512MaskCvtpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTPD2UQQ

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzCvtpdEpu64(k uint8, a [8]float64) [64]byte
TEXT ·m512MaskzCvtpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTPD2UQQ R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func cvtpsEpi64(a [4]float32) [16]byte
TEXT ·cvtpsEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTPS2QQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtpsEpi64(src [16]byte, k uint8, a [4]float32) [16]byte
TEXT ·maskCvtpsEpi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTPS2QQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtpsEpi64(k uint8, a [4]float32) [16]byte
TEXT ·maskzCvtpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTPS2QQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvtpsEpi64(a [4]float32) [32]byte
TEXT ·m256CvtpsEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTPS2QQ X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskCvtpsEpi64(src [32]byte, k uint8, a [4]float32) [32]byte
TEXT ·m256MaskCvtpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VCVTPS2QQ

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzCvtpsEpi64(k uint8, a [4]float32) [32]byte
TEXT ·m256MaskzCvtpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTPS2QQ R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512CvtpsEpi64(a [8]float32) [64]byte
TEXT ·m512CvtpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTPS2QQ Y0

	MOV Z0, ret+32(FP)
	RET

// func m512MaskCvtpsEpi64(src [64]byte, k uint8, a [8]float32) [64]byte
TEXT ·m512MaskCvtpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTPS2QQ

	MOV Z2, ret+100(FP)
	RET

// func m512MaskzCvtpsEpi64(k uint8, a [8]float32) [64]byte
TEXT ·m512MaskzCvtpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTPS2QQ R8, Y1

	MOV Z1, ret+36(FP)
	RET

// func cvtpsEpu64(a [4]float32) [16]byte
TEXT ·cvtpsEpu64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTPS2UQQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvtpsEpu64(src [16]byte, k uint8, a [4]float32) [16]byte
TEXT ·maskCvtpsEpu64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTPS2UQQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvtpsEpu64(k uint8, a [4]float32) [16]byte
TEXT ·maskzCvtpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTPS2UQQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvtpsEpu64(a [4]float32) [32]byte
TEXT ·m256CvtpsEpu64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTPS2UQQ X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskCvtpsEpu64(src [32]byte, k uint8, a [4]float32) [32]byte
TEXT ·m256MaskCvtpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VCVTPS2UQQ

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzCvtpsEpu64(k uint8, a [4]float32) [32]byte
TEXT ·m256MaskzCvtpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTPS2UQQ R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512CvtpsEpu64(a [8]float32) [64]byte
TEXT ·m512CvtpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTPS2UQQ Y0

	MOV Z0, ret+32(FP)
	RET

// func m512MaskCvtpsEpu64(src [64]byte, k uint8, a [8]float32) [64]byte
TEXT ·m512MaskCvtpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTPS2UQQ

	MOV Z2, ret+100(FP)
	RET

// func m512MaskzCvtpsEpu64(k uint8, a [8]float32) [64]byte
TEXT ·m512MaskzCvtpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTPS2UQQ R8, Y1

	MOV Z1, ret+36(FP)
	RET

// func m512CvttRoundpdEpi64(a [8]float64, sae int) [64]byte
TEXT ·m512CvttRoundpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	MOVQ sae+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTTPD2QQ Z0, R9

	MOV Z1, ret+72(FP)
	RET

// func m512MaskCvttRoundpdEpi64(src [64]byte, k uint8, a [8]float64, sae int) [64]byte
TEXT ·m512MaskCvttRoundpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	MOVQ sae+132(FP),R11

	// TODO: Code missing - uses instrunction: VCVTTPD2QQ

	MOV Z3, ret+140(FP)
	RET

// func m512MaskzCvttRoundpdEpi64(k uint8, a [8]float64, sae int) [64]byte
TEXT ·m512MaskzCvttRoundpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	MOVQ sae+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTTPD2QQ

	MOV Z2, ret+76(FP)
	RET

// func m512CvttRoundpdEpu64(a [8]float64, sae int) [64]byte
TEXT ·m512CvttRoundpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	MOVQ sae+64(FP),R9

	// TODO: Code missing - could be:
	// VCVTTPD2UQQ Z0, R9

	MOV Z1, ret+72(FP)
	RET

// func m512MaskCvttRoundpdEpu64(src [64]byte, k uint8, a [8]float64, sae int) [64]byte
TEXT ·m512MaskCvttRoundpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	MOVQ sae+132(FP),R11

	// TODO: Code missing - uses instrunction: VCVTTPD2UQQ

	MOV Z3, ret+140(FP)
	RET

// func m512MaskzCvttRoundpdEpu64(k uint8, a [8]float64, sae int) [64]byte
TEXT ·m512MaskzCvttRoundpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	MOVQ sae+68(FP),R10

	// TODO: Code missing - uses instrunction: VCVTTPD2UQQ

	MOV Z2, ret+76(FP)
	RET

// func m512CvttRoundpsEpi64(a [8]float32, sae int) [64]byte
TEXT ·m512CvttRoundpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0
	MOVQ sae+32(FP),R9

	// TODO: Code missing - could be:
	// VCVTTPS2QQ Y0, R9

	MOV Z1, ret+40(FP)
	RET

// func m512MaskCvttRoundpsEpi64(src [64]byte, k uint8, a [8]float32, sae int) [64]byte
TEXT ·m512MaskCvttRoundpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2
	MOVQ sae+100(FP),R11

	// TODO: Code missing - uses instrunction: VCVTTPS2QQ

	MOV Z3, ret+108(FP)
	RET

// func m512MaskzCvttRoundpsEpi64(k uint8, a [8]float32, sae int) [64]byte
TEXT ·m512MaskzCvttRoundpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	MOVQ sae+36(FP),R10

	// TODO: Code missing - uses instrunction: VCVTTPS2QQ

	MOV Z2, ret+44(FP)
	RET

// func m512CvttRoundpsEpu64(a [8]float32, sae int) [64]byte
TEXT ·m512CvttRoundpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0
	MOVQ sae+32(FP),R9

	// TODO: Code missing - could be:
	// VCVTTPS2UQQ Y0, R9

	MOV Z1, ret+40(FP)
	RET

// func m512MaskCvttRoundpsEpu64(src [64]byte, k uint8, a [8]float32, sae int) [64]byte
TEXT ·m512MaskCvttRoundpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2
	MOVQ sae+100(FP),R11

	// TODO: Code missing - uses instrunction: VCVTTPS2UQQ

	MOV Z3, ret+108(FP)
	RET

// func m512MaskzCvttRoundpsEpu64(k uint8, a [8]float32, sae int) [64]byte
TEXT ·m512MaskzCvttRoundpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	MOVQ sae+36(FP),R10

	// TODO: Code missing - uses instrunction: VCVTTPS2UQQ

	MOV Z2, ret+44(FP)
	RET

// func cvttpdEpi64(a [2]float64) [16]byte
TEXT ·cvttpdEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTTPD2QQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvttpdEpi64(src [16]byte, k uint8, a [2]float64) [16]byte
TEXT ·maskCvttpdEpi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTTPD2QQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvttpdEpi64(k uint8, a [2]float64) [16]byte
TEXT ·maskzCvttpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTTPD2QQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvttpdEpi64(a [4]float64) [32]byte
TEXT ·m256CvttpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTTPD2QQ Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskCvttpdEpi64(src [32]byte, k uint8, a [4]float64) [32]byte
TEXT ·m256MaskCvttpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTTPD2QQ

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzCvttpdEpi64(k uint8, a [4]float64) [32]byte
TEXT ·m256MaskzCvttpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTTPD2QQ R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512CvttpdEpi64(a [8]float64) [64]byte
TEXT ·m512CvttpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTTPD2QQ Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskCvttpdEpi64(src [64]byte, k uint8, a [8]float64) [64]byte
TEXT ·m512MaskCvttpdEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTTPD2QQ

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzCvttpdEpi64(k uint8, a [8]float64) [64]byte
TEXT ·m512MaskzCvttpdEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTTPD2QQ R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func cvttpdEpu64(a [2]float64) [16]byte
TEXT ·cvttpdEpu64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTTPD2UQQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvttpdEpu64(src [16]byte, k uint8, a [2]float64) [16]byte
TEXT ·maskCvttpdEpu64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTTPD2UQQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvttpdEpu64(k uint8, a [2]float64) [16]byte
TEXT ·maskzCvttpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTTPD2UQQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvttpdEpu64(a [4]float64) [32]byte
TEXT ·m256CvttpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTTPD2UQQ Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskCvttpdEpu64(src [32]byte, k uint8, a [4]float64) [32]byte
TEXT ·m256MaskCvttpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTTPD2UQQ

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzCvttpdEpu64(k uint8, a [4]float64) [32]byte
TEXT ·m256MaskzCvttpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTTPD2UQQ R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512CvttpdEpu64(a [8]float64) [64]byte
TEXT ·m512CvttpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VCVTTPD2UQQ Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskCvttpdEpu64(src [64]byte, k uint8, a [8]float64) [64]byte
TEXT ·m512MaskCvttpdEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VCVTTPD2UQQ

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzCvttpdEpu64(k uint8, a [8]float64) [64]byte
TEXT ·m512MaskzCvttpdEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VCVTTPD2UQQ R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func cvttpsEpi64(a [4]float32) [16]byte
TEXT ·cvttpsEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTTPS2QQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvttpsEpi64(src [16]byte, k uint8, a [4]float32) [16]byte
TEXT ·maskCvttpsEpi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTTPS2QQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvttpsEpi64(k uint8, a [4]float32) [16]byte
TEXT ·maskzCvttpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTTPS2QQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvttpsEpi64(a [4]float32) [32]byte
TEXT ·m256CvttpsEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTTPS2QQ X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskCvttpsEpi64(src [32]byte, k uint8, a [4]float32) [32]byte
TEXT ·m256MaskCvttpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VCVTTPS2QQ

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzCvttpsEpi64(k uint8, a [4]float32) [32]byte
TEXT ·m256MaskzCvttpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTTPS2QQ R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512CvttpsEpi64(a [8]float32) [64]byte
TEXT ·m512CvttpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTTPS2QQ Y0

	MOV Z0, ret+32(FP)
	RET

// func m512MaskCvttpsEpi64(src [64]byte, k uint8, a [8]float32) [64]byte
TEXT ·m512MaskCvttpsEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTTPS2QQ

	MOV Z2, ret+100(FP)
	RET

// func m512MaskzCvttpsEpi64(k uint8, a [8]float32) [64]byte
TEXT ·m512MaskzCvttpsEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTTPS2QQ R8, Y1

	MOV Z1, ret+36(FP)
	RET

// func cvttpsEpu64(a [4]float32) [16]byte
TEXT ·cvttpsEpu64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTTPS2UQQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskCvttpsEpu64(src [16]byte, k uint8, a [4]float32) [16]byte
TEXT ·maskCvttpsEpu64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VCVTTPS2UQQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzCvttpsEpu64(k uint8, a [4]float32) [16]byte
TEXT ·maskzCvttpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTTPS2UQQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256CvttpsEpu64(a [4]float32) [32]byte
TEXT ·m256CvttpsEpu64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VCVTTPS2UQQ X0

	MOV Y0, ret+16(FP)
	RET

// func m256MaskCvttpsEpu64(src [32]byte, k uint8, a [4]float32) [32]byte
TEXT ·m256MaskCvttpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	MOVOU a+36(FP),X2

	// TODO: Code missing - uses instrunction: VCVTTPS2UQQ

	MOV Y2, ret+52(FP)
	RET

// func m256MaskzCvttpsEpu64(k uint8, a [4]float32) [32]byte
TEXT ·m256MaskzCvttpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VCVTTPS2UQQ R8, X1

	MOV Y1, ret+20(FP)
	RET

// func m512CvttpsEpu64(a [8]float32) [64]byte
TEXT ·m512CvttpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VCVTTPS2UQQ Y0

	MOV Z0, ret+32(FP)
	RET

// func m512MaskCvttpsEpu64(src [64]byte, k uint8, a [8]float32) [64]byte
TEXT ·m512MaskCvttpsEpu64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+68(FP),Y2

	// TODO: Code missing - uses instrunction: VCVTTPS2UQQ

	MOV Z2, ret+100(FP)
	RET

// func m512MaskzCvttpsEpu64(k uint8, a [8]float32) [64]byte
TEXT ·m512MaskzCvttpsEpu64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VCVTTPS2UQQ R8, Y1

	MOV Z1, ret+36(FP)
	RET

// func m512Extractf32x8Ps(a [16]float32, imm8 byte) [8]float32
TEXT ·m512Extractf32x8Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VEXTRACTF32X8 Z0, R9

	MOV Y1, ret+68(FP)
	RET

// func m512MaskExtractf32x8Ps(src [8]float32, k uint8, a [16]float32, imm8 byte) [8]float32
TEXT ·m512MaskExtractf32x8Ps(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+36(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTF32X8

	MOV Y3, ret+104(FP)
	RET

// func m512MaskzExtractf32x8Ps(k uint8, a [16]float32, imm8 byte) [8]float32
TEXT ·m512MaskzExtractf32x8Ps(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTF32X8

	MOV Y2, ret+72(FP)
	RET

// func m256Extractf64x2Pd(a [4]float64, imm8 byte) [2]float64
TEXT ·m256Extractf64x2Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VEXTRACTF64X2 Y0, R9

	MOVOU X1, ret+36(FP)
	RET

// func m256MaskExtractf64x2Pd(src [2]float64, k uint8, a [4]float64, imm8 byte) [2]float64
TEXT ·m256MaskExtractf64x2Pd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+20(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTF64X2

	MOVOU X3, ret+56(FP)
	RET

// func m256MaskzExtractf64x2Pd(k uint8, a [4]float64, imm8 byte) [2]float64
TEXT ·m256MaskzExtractf64x2Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTF64X2

	MOVOU X2, ret+40(FP)
	RET

// func m512Extractf64x2Pd(a [8]float64, imm8 byte) [2]float64
TEXT ·m512Extractf64x2Pd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VEXTRACTF64X2 Z0, R9

	MOVOU X1, ret+68(FP)
	RET

// func m512MaskExtractf64x2Pd(src [2]float64, k uint8, a [8]float64, imm8 byte) [2]float64
TEXT ·m512MaskExtractf64x2Pd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+20(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTF64X2

	MOVOU X3, ret+88(FP)
	RET

// func m512MaskzExtractf64x2Pd(k uint8, a [8]float64, imm8 byte) [2]float64
TEXT ·m512MaskzExtractf64x2Pd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTF64X2

	MOVOU X2, ret+72(FP)
	RET

// func m512Extracti32x8Epi32(a [64]byte, imm8 byte) [32]byte
TEXT ·m512Extracti32x8Epi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VEXTRACTI32X8 Z0, R9

	MOV Y1, ret+68(FP)
	RET

// func m512MaskExtracti32x8Epi32(src [32]byte, k uint8, a [64]byte, imm8 byte) [32]byte
TEXT ·m512MaskExtracti32x8Epi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+36(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTI32X8

	MOV Y3, ret+104(FP)
	RET

// func m512MaskzExtracti32x8Epi32(k uint8, a [64]byte, imm8 byte) [32]byte
TEXT ·m512MaskzExtracti32x8Epi32(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTI32X8

	MOV Y2, ret+72(FP)
	RET

// func m256Extracti64x2Epi64(a [32]byte, imm8 byte) [16]byte
TEXT ·m256Extracti64x2Epi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VEXTRACTI64X2 Y0, R9

	MOVOU X1, ret+36(FP)
	RET

// func m256MaskExtracti64x2Epi64(src [16]byte, k uint8, a [32]byte, imm8 byte) [16]byte
TEXT ·m256MaskExtracti64x2Epi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+20(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTI64X2

	MOVOU X3, ret+56(FP)
	RET

// func m256MaskzExtracti64x2Epi64(k uint8, a [32]byte, imm8 byte) [16]byte
TEXT ·m256MaskzExtracti64x2Epi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTI64X2

	MOVOU X2, ret+40(FP)
	RET

// func m512Extracti64x2Epi64(a [64]byte, imm8 byte) [16]byte
TEXT ·m512Extracti64x2Epi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VEXTRACTI64X2 Z0, R9

	MOVOU X1, ret+68(FP)
	RET

// func m512MaskExtracti64x2Epi64(src [16]byte, k uint8, a [64]byte, imm8 byte) [16]byte
TEXT ·m512MaskExtracti64x2Epi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+20(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTI64X2

	MOVOU X3, ret+88(FP)
	RET

// func m512MaskzExtracti64x2Epi64(k uint8, a [64]byte, imm8 byte) [16]byte
TEXT ·m512MaskzExtracti64x2Epi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VEXTRACTI64X2

	MOVOU X2, ret+72(FP)
	RET

// func fpclassPdMask(a [2]float64, imm8 byte) uint8
TEXT ·fpclassPdMask(SB),7,$0
	MOVOU a+0(FP),X0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSPD X0, R9

	MOVB $0, ret+20(FP)
	RET

// func maskFpclassPdMask(k1 uint8, a [2]float64, imm8 byte) uint8
TEXT ·maskFpclassPdMask(SB),7,$0
	MOVB k1+0(FP),R8
	MOVOU a+4(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSPD

	MOVB $0, ret+24(FP)
	RET

// func m256FpclassPdMask(a [4]float64, imm8 byte) uint8
TEXT ·m256FpclassPdMask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSPD Y0, R9

	MOVB $0, ret+36(FP)
	RET

// func m256MaskFpclassPdMask(k1 uint8, a [4]float64, imm8 byte) uint8
TEXT ·m256MaskFpclassPdMask(SB),7,$0
	MOVB k1+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSPD

	MOVB $0, ret+40(FP)
	RET

// func m512FpclassPdMask(a [8]float64, imm8 byte) uint8
TEXT ·m512FpclassPdMask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSPD Z0, R9

	MOVB $0, ret+68(FP)
	RET

// func m512MaskFpclassPdMask(k1 uint8, a [8]float64, imm8 byte) uint8
TEXT ·m512MaskFpclassPdMask(SB),7,$0
	MOVB k1+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSPD

	MOVB $0, ret+72(FP)
	RET

// func fpclassPsMask(a [4]float32, imm8 byte) uint8
TEXT ·fpclassPsMask(SB),7,$0
	MOVOU a+0(FP),X0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSPS X0, R9

	MOVB $0, ret+20(FP)
	RET

// func maskFpclassPsMask(k1 uint8, a [4]float32, imm8 byte) uint8
TEXT ·maskFpclassPsMask(SB),7,$0
	MOVB k1+0(FP),R8
	MOVOU a+4(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSPS

	MOVB $0, ret+24(FP)
	RET

// func m256FpclassPsMask(a [8]float32, imm8 byte) uint8
TEXT ·m256FpclassPsMask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSPS Y0, R9

	MOVB $0, ret+36(FP)
	RET

// func m256MaskFpclassPsMask(k1 uint8, a [8]float32, imm8 byte) uint8
TEXT ·m256MaskFpclassPsMask(SB),7,$0
	MOVB k1+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSPS

	MOVB $0, ret+40(FP)
	RET

// func m512FpclassPsMask(a [16]float32, imm8 byte) uint16
TEXT ·m512FpclassPsMask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSPS Z0, R9

	MOVW $0, ret+68(FP)
	RET

// func m512MaskFpclassPsMask(k1 uint16, a [16]float32, imm8 byte) uint16
TEXT ·m512MaskFpclassPsMask(SB),7,$0
	MOVW k1+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSPS

	MOVW $0, ret+72(FP)
	RET

// func fpclassSdMask(a [2]float64, imm8 byte) uint8
TEXT ·fpclassSdMask(SB),7,$0
	MOVOU a+0(FP),X0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSSD X0, R9

	MOVB $0, ret+20(FP)
	RET

// func maskFpclassSdMask(k1 uint8, a [2]float64, imm8 byte) uint8
TEXT ·maskFpclassSdMask(SB),7,$0
	MOVB k1+0(FP),R8
	MOVOU a+4(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSSD

	MOVB $0, ret+24(FP)
	RET

// func fpclassSsMask(a [4]float32, imm8 byte) uint8
TEXT ·fpclassSsMask(SB),7,$0
	MOVOU a+0(FP),X0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VFPCLASSSS X0, R9

	MOVB $0, ret+20(FP)
	RET

// func maskFpclassSsMask(k1 uint8, a [4]float32, imm8 byte) uint8
TEXT ·maskFpclassSsMask(SB),7,$0
	MOVB k1+0(FP),R8
	MOVOU a+4(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VFPCLASSSS

	MOVB $0, ret+24(FP)
	RET

// func m512Insertf32x8(a [16]float32, b [8]float32, imm8 byte) [16]float32
TEXT ·m512Insertf32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+64(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF32X8

	MOV Z2, ret+100(FP)
	RET

// func m512MaskInsertf32x8(src [16]float32, k uint16, a [16]float32, b [8]float32, imm8 byte) [16]float32
TEXT ·m512MaskInsertf32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+132(FP),Y3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF32X8

	MOV Z4, ret+168(FP)
	RET

// func m512MaskzInsertf32x8(k uint16, a [16]float32, b [8]float32, imm8 byte) [16]float32
TEXT ·m512MaskzInsertf32x8(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+68(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF32X8

	MOV Z3, ret+104(FP)
	RET

// func m256Insertf64x2(a [4]float64, b [2]float64, imm8 byte) [4]float64
TEXT ·m256Insertf64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0
	MOVOU b+32(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF64X2

	MOV Y2, ret+52(FP)
	RET

// func m256MaskInsertf64x2(src [4]float64, k uint8, a [4]float64, b [2]float64, imm8 byte) [4]float64
TEXT ·m256MaskInsertf64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2
	MOVOU b+68(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF64X2

	MOV Y4, ret+88(FP)
	RET

// func m256MaskzInsertf64x2(k uint8, a [4]float64, b [2]float64, imm8 byte) [4]float64
TEXT ·m256MaskzInsertf64x2(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	MOVOU b+36(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF64X2

	MOV Y3, ret+56(FP)
	RET

// func m512Insertf64x2(a [8]float64, b [2]float64, imm8 byte) [8]float64
TEXT ·m512Insertf64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	MOVOU b+64(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF64X2

	MOV Z2, ret+84(FP)
	RET

// func m512MaskInsertf64x2(src [8]float64, k uint8, a [8]float64, b [2]float64, imm8 byte) [8]float64
TEXT ·m512MaskInsertf64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	MOVOU b+132(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF64X2

	MOV Z4, ret+152(FP)
	RET

// func m512MaskzInsertf64x2(k uint8, a [8]float64, b [2]float64, imm8 byte) [8]float64
TEXT ·m512MaskzInsertf64x2(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	MOVOU b+68(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTF64X2

	MOV Z3, ret+88(FP)
	RET

// func m512Inserti32x8(a [64]byte, b [32]byte, imm8 byte) [64]byte
TEXT ·m512Inserti32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV b+64(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI32X8

	MOV Z2, ret+100(FP)
	RET

// func m512MaskInserti32x8(src [64]byte, k uint16, a [64]byte, b [32]byte, imm8 byte) [64]byte
TEXT ·m512MaskInserti32x8(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV b+132(FP),Y3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI32X8

	MOV Z4, ret+168(FP)
	RET

// func m512MaskzInserti32x8(k uint16, a [64]byte, b [32]byte, imm8 byte) [64]byte
TEXT ·m512MaskzInserti32x8(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV b+68(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI32X8

	MOV Z3, ret+104(FP)
	RET

// func m256Inserti64x2(a [32]byte, b [16]byte, imm8 byte) [32]byte
TEXT ·m256Inserti64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0
	MOVOU b+32(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI64X2

	MOV Y2, ret+52(FP)
	RET

// func m256MaskInserti64x2(src [32]byte, k uint8, a [32]byte, b [16]byte, imm8 byte) [32]byte
TEXT ·m256MaskInserti64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2
	MOVOU b+68(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI64X2

	MOV Y4, ret+88(FP)
	RET

// func m256MaskzInserti64x2(k uint8, a [32]byte, b [16]byte, imm8 byte) [32]byte
TEXT ·m256MaskzInserti64x2(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1
	MOVOU b+36(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI64X2

	MOV Y3, ret+56(FP)
	RET

// func m512Inserti64x2(a [64]byte, b [16]byte, imm8 byte) [64]byte
TEXT ·m512Inserti64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	MOVOU b+64(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI64X2

	MOV Z2, ret+84(FP)
	RET

// func m512MaskInserti64x2(src [64]byte, k uint8, a [64]byte, b [16]byte, imm8 byte) [64]byte
TEXT ·m512MaskInserti64x2(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2
	MOVOU b+132(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI64X2

	MOV Z4, ret+152(FP)
	RET

// func m512MaskzInserti64x2(k uint8, a [64]byte, b [16]byte, imm8 byte) [64]byte
TEXT ·m512MaskzInserti64x2(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	MOVOU b+68(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VINSERTI64X2

	MOV Z3, ret+88(FP)
	RET

// func movepi32Mask(a [16]byte) uint8
TEXT ·movepi32Mask(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VPMOVD2M X0

	MOVB $0, ret+16(FP)
	RET

// func m256Movepi32Mask(a [32]byte) uint8
TEXT ·m256Movepi32Mask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VPMOVD2M Y0

	MOVB $0, ret+32(FP)
	RET

// func m512Movepi32Mask(a [64]byte) uint16
TEXT ·m512Movepi32Mask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VPMOVD2M Z0

	MOVW $0, ret+64(FP)
	RET

// func movepi64Mask(a [16]byte) uint8
TEXT ·movepi64Mask(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VPMOVQ2M X0

	MOVB $0, ret+16(FP)
	RET

// func m256Movepi64Mask(a [32]byte) uint8
TEXT ·m256Movepi64Mask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VPMOVQ2M Y0

	MOVB $0, ret+32(FP)
	RET

// func m512Movepi64Mask(a [64]byte) uint8
TEXT ·m512Movepi64Mask(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VPMOVQ2M Z0

	MOVB $0, ret+64(FP)
	RET

// func movmEpi32(k uint8) [16]byte
TEXT ·movmEpi32(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPMOVM2D R8

	MOVOU X0, ret+4(FP)
	RET

// func m256MovmEpi32(k uint8) [32]byte
TEXT ·m256MovmEpi32(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPMOVM2D R8

	MOV Y0, ret+4(FP)
	RET

// func m512MovmEpi32(k uint16) [64]byte
TEXT ·m512MovmEpi32(SB),7,$0
	MOVW k+0(FP),R8

	// TODO: Code missing - could be:
	// VPMOVM2D R8

	MOV Z0, ret+4(FP)
	RET

// func movmEpi64(k uint8) [16]byte
TEXT ·movmEpi64(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPMOVM2Q R8

	MOVOU X0, ret+4(FP)
	RET

// func m256MovmEpi64(k uint8) [32]byte
TEXT ·m256MovmEpi64(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPMOVM2Q R8

	MOV Y0, ret+4(FP)
	RET

// func m512MovmEpi64(k uint8) [64]byte
TEXT ·m512MovmEpi64(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPMOVM2Q R8

	MOV Z0, ret+4(FP)
	RET

// func maskMulloEpi64(src [16]byte, k uint8, a [16]byte, b [16]byte) [16]byte
TEXT ·maskMulloEpi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VPMULLQ

	MOVOU X3, ret+52(FP)
	RET

// func maskzMulloEpi64(k uint8, a [16]byte, b [16]byte) [16]byte
TEXT ·maskzMulloEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VPMULLQ

	MOVOU X2, ret+36(FP)
	RET

// func mulloEpi64(a [16]byte, b [16]byte) [16]byte
TEXT ·mulloEpi64(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1

	// TODO: Code missing - could be:
	// VPMULLQ X0, X1

	MOVOU X1, ret+32(FP)
	RET

// func m256MaskMulloEpi64(src [32]byte, k uint8, a [32]byte, b [32]byte) [32]byte
TEXT ·m256MaskMulloEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VPMULLQ

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzMulloEpi64(k uint8, a [32]byte, b [32]byte) [32]byte
TEXT ·m256MaskzMulloEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VPMULLQ

	MOV Y2, ret+68(FP)
	RET

// func m256MulloEpi64(a [32]byte, b [32]byte) [32]byte
TEXT ·m256MulloEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV b+32(FP),Y1

	// TODO: Code missing - could be:
	// VPMULLQ Y0, Y1

	MOV Y1, ret+64(FP)
	RET

// func m512MaskMulloEpi64(src [64]byte, k uint8, a [64]byte, b [64]byte) [64]byte
TEXT ·m512MaskMulloEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VPMULLQ

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzMulloEpi64(k uint8, a [64]byte, b [64]byte) [64]byte
TEXT ·m512MaskzMulloEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VPMULLQ

	MOV Z2, ret+132(FP)
	RET

// func m512MulloEpi64(a [64]byte, b [64]byte) [64]byte
TEXT ·m512MulloEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VPMULLQ Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func maskOrPd(src [2]float64, k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskOrPd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VORPD

	MOVOU X3, ret+52(FP)
	RET

// func maskzOrPd(k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskzOrPd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VORPD

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskOrPd(src [4]float64, k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskOrPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VORPD

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzOrPd(k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskzOrPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VORPD

	MOV Y2, ret+68(FP)
	RET

// func m512MaskOrPd(src [8]float64, k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskOrPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VORPD

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzOrPd(k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskzOrPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VORPD

	MOV Z2, ret+132(FP)
	RET

// func m512OrPd(a [8]float64, b [8]float64) [8]float64
TEXT ·m512OrPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VORPD Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func maskOrPs(src [4]float32, k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskOrPs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VORPS

	MOVOU X3, ret+52(FP)
	RET

// func maskzOrPs(k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskzOrPs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VORPS

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskOrPs(src [8]float32, k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskOrPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VORPS

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzOrPs(k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskzOrPs(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VORPS

	MOV Y2, ret+68(FP)
	RET

// func m512MaskOrPs(src [16]float32, k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskOrPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VORPS

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzOrPs(k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskzOrPs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VORPS

	MOV Z2, ret+132(FP)
	RET

// func m512OrPs(a [16]float32, b [16]float32) [16]float32
TEXT ·m512OrPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VORPS Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func maskRangePd(src [2]float64, k uint8, a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·maskRangePd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOVOU X4, ret+56(FP)
	RET

// func maskzRangePd(k uint8, a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·maskzRangePd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOVOU X3, ret+40(FP)
	RET

// func rangePd(a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·rangePd(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskRangePd(src [4]float64, k uint8, a [4]float64, b [4]float64, imm8 byte) [4]float64
TEXT ·m256MaskRangePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+68(FP),Y3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Y4, ret+104(FP)
	RET

// func m256MaskzRangePd(k uint8, a [4]float64, b [4]float64, imm8 byte) [4]float64
TEXT ·m256MaskzRangePd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+36(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Y3, ret+72(FP)
	RET

// func m256RangePd(a [4]float64, b [4]float64, imm8 byte) [4]float64
TEXT ·m256RangePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+32(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Y2, ret+68(FP)
	RET

// func m512MaskRangePd(src [8]float64, k uint8, a [8]float64, b [8]float64, imm8 byte) [8]float64
TEXT ·m512MaskRangePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+132(FP),Z3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Z4, ret+200(FP)
	RET

// func m512MaskzRangePd(k uint8, a [8]float64, b [8]float64, imm8 byte) [8]float64
TEXT ·m512MaskzRangePd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Z3, ret+136(FP)
	RET

// func m512RangePd(a [8]float64, b [8]float64, imm8 byte) [8]float64
TEXT ·m512RangePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+64(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Z2, ret+132(FP)
	RET

// func maskRangePs(src [4]float32, k uint8, a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·maskRangePs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOVOU X4, ret+56(FP)
	RET

// func maskzRangePs(k uint8, a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·maskzRangePs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOVOU X3, ret+40(FP)
	RET

// func rangePs(a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·rangePs(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskRangePs(src [8]float32, k uint8, a [8]float32, b [8]float32, imm8 byte) [8]float32
TEXT ·m256MaskRangePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+68(FP),Y3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Y4, ret+104(FP)
	RET

// func m256MaskzRangePs(k uint8, a [8]float32, b [8]float32, imm8 byte) [8]float32
TEXT ·m256MaskzRangePs(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+36(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Y3, ret+72(FP)
	RET

// func m256RangePs(a [8]float32, b [8]float32, imm8 byte) [8]float32
TEXT ·m256RangePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+32(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Y2, ret+68(FP)
	RET

// func m512MaskRangePs(src [16]float32, k uint16, a [16]float32, b [16]float32, imm8 byte) [16]float32
TEXT ·m512MaskRangePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+132(FP),Z3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Z4, ret+200(FP)
	RET

// func m512MaskzRangePs(k uint16, a [16]float32, b [16]float32, imm8 byte) [16]float32
TEXT ·m512MaskzRangePs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Z3, ret+136(FP)
	RET

// func m512RangePs(a [16]float32, b [16]float32, imm8 byte) [16]float32
TEXT ·m512RangePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+64(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Z2, ret+132(FP)
	RET

// func m512MaskRangeRoundPd(src [8]float64, k uint8, a [8]float64, b [8]float64, imm8 byte, rounding int) [8]float64
TEXT ·m512MaskRangeRoundPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+132(FP),Z3
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+200(FP),R13

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Z5, ret+208(FP)
	RET

// func m512MaskzRangeRoundPd(k uint8, a [8]float64, b [8]float64, imm8 byte, rounding int) [8]float64
TEXT ·m512MaskzRangeRoundPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+136(FP),R12

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Z4, ret+144(FP)
	RET

// func m512RangeRoundPd(a [8]float64, b [8]float64, imm8 byte, rounding int) [8]float64
TEXT ·m512RangeRoundPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+64(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+132(FP),R11

	// TODO: Code missing - uses instrunction: VRANGEPD

	MOV Z3, ret+140(FP)
	RET

// func m512MaskRangeRoundPs(src [16]float32, k uint16, a [16]float32, b [16]float32, imm8 byte, rounding int) [16]float32
TEXT ·m512MaskRangeRoundPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+132(FP),Z3
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+200(FP),R13

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Z5, ret+208(FP)
	RET

// func m512MaskzRangeRoundPs(k uint16, a [16]float32, b [16]float32, imm8 byte, rounding int) [16]float32
TEXT ·m512MaskzRangeRoundPs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+136(FP),R12

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Z4, ret+144(FP)
	RET

// func m512RangeRoundPs(a [16]float32, b [16]float32, imm8 byte, rounding int) [16]float32
TEXT ·m512RangeRoundPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+64(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+132(FP),R11

	// TODO: Code missing - uses instrunction: VRANGEPS

	MOV Z3, ret+140(FP)
	RET

// func maskRangeRoundSd(src [2]float64, k uint8, a [2]float64, b [2]float64, imm8 byte, rounding int) [2]float64
TEXT ·maskRangeRoundSd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+56(FP),R13

	// TODO: Code missing - uses instrunction: VRANGESD

	MOVOU X5, ret+64(FP)
	RET

// func maskzRangeRoundSd(k uint8, a [2]float64, b [2]float64, imm8 byte, rounding int) [2]float64
TEXT ·maskzRangeRoundSd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+40(FP),R12

	// TODO: Code missing - uses instrunction: VRANGESD

	MOVOU X4, ret+48(FP)
	RET

// func rangeRoundSd(a [2]float64, b [2]float64, imm8 byte, rounding int) [2]float64
TEXT ·rangeRoundSd(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+36(FP),R11

	// TODO: Code missing - uses instrunction: VRANGESD

	MOVOU X3, ret+44(FP)
	RET

// func maskRangeRoundSs(src [4]float32, k uint8, a [4]float32, b [4]float32, imm8 byte, rounding int) [4]float32
TEXT ·maskRangeRoundSs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+56(FP),R13

	// TODO: Code missing - uses instrunction: VRANGESS

	MOVOU X5, ret+64(FP)
	RET

// func maskzRangeRoundSs(k uint8, a [4]float32, b [4]float32, imm8 byte, rounding int) [4]float32
TEXT ·maskzRangeRoundSs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+40(FP),R12

	// TODO: Code missing - uses instrunction: VRANGESS

	MOVOU X4, ret+48(FP)
	RET

// func rangeRoundSs(a [4]float32, b [4]float32, imm8 byte, rounding int) [4]float32
TEXT ·rangeRoundSs(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+36(FP),R11

	// TODO: Code missing - uses instrunction: VRANGESS

	MOVOU X3, ret+44(FP)
	RET

// func maskRangeSd(src [2]float64, k uint8, a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·maskRangeSd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGESD

	MOVOU X4, ret+56(FP)
	RET

// func maskzRangeSd(k uint8, a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·maskzRangeSd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGESD

	MOVOU X3, ret+40(FP)
	RET

// func maskRangeSs(src [4]float32, k uint8, a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·maskRangeSs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGESS

	MOVOU X4, ret+56(FP)
	RET

// func maskzRangeSs(k uint8, a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·maskzRangeSs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VRANGESS

	MOVOU X3, ret+40(FP)
	RET

// func maskReducePd(src [2]float64, k uint8, a [2]float64, imm8 byte) [2]float64
TEXT ·maskReducePd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOVOU X3, ret+40(FP)
	RET

// func maskzReducePd(k uint8, a [2]float64, imm8 byte) [2]float64
TEXT ·maskzReducePd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOVOU X2, ret+24(FP)
	RET

// func reducePd(a [2]float64, imm8 byte) [2]float64
TEXT ·reducePd(SB),7,$0
	MOVOU a+0(FP),X0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VREDUCEPD X0, R9

	MOVOU X1, ret+20(FP)
	RET

// func m256MaskReducePd(src [4]float64, k uint8, a [4]float64, imm8 byte) [4]float64
TEXT ·m256MaskReducePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOV Y3, ret+72(FP)
	RET

// func m256MaskzReducePd(k uint8, a [4]float64, imm8 byte) [4]float64
TEXT ·m256MaskzReducePd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOV Y2, ret+40(FP)
	RET

// func m256ReducePd(a [4]float64, imm8 byte) [4]float64
TEXT ·m256ReducePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+0(FP),Y0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VREDUCEPD Y0, R9

	MOV Y1, ret+36(FP)
	RET

// func m512MaskReducePd(src [8]float64, k uint8, a [8]float64, imm8 byte) [8]float64
TEXT ·m512MaskReducePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOV Z3, ret+136(FP)
	RET

// func m512MaskzReducePd(k uint8, a [8]float64, imm8 byte) [8]float64
TEXT ·m512MaskzReducePd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOV Z2, ret+72(FP)
	RET

// func m512ReducePd(a [8]float64, imm8 byte) [8]float64
TEXT ·m512ReducePd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VREDUCEPD Z0, R9

	MOV Z1, ret+68(FP)
	RET

// func maskReducePs(src [4]float32, k uint8, a [4]float32, imm8 byte) [4]float32
TEXT ·maskReducePs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOVOU X3, ret+40(FP)
	RET

// func maskzReducePs(k uint8, a [4]float32, imm8 byte) [4]float32
TEXT ·maskzReducePs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOVOU X2, ret+24(FP)
	RET

// func reducePs(a [4]float32, imm8 byte) [4]float32
TEXT ·reducePs(SB),7,$0
	MOVOU a+0(FP),X0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VREDUCEPS X0, R9

	MOVOU X1, ret+20(FP)
	RET

// func m256MaskReducePs(src [8]float32, k uint8, a [8]float32, imm8 byte) [8]float32
TEXT ·m256MaskReducePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+36(FP),Y2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOV Y3, ret+72(FP)
	RET

// func m256MaskzReducePs(k uint8, a [8]float32, imm8 byte) [8]float32
TEXT ·m256MaskzReducePs(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOV Y2, ret+40(FP)
	RET

// func m256ReducePs(a [8]float32, imm8 byte) [8]float32
TEXT ·m256ReducePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+0(FP),Y0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VREDUCEPS Y0, R9

	MOV Y1, ret+36(FP)
	RET

// func m512MaskReducePs(src [16]float32, k uint16, a [16]float32, imm8 byte) [16]float32
TEXT ·m512MaskReducePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOV Z3, ret+136(FP)
	RET

// func m512MaskzReducePs(k uint16, a [16]float32, imm8 byte) [16]float32
TEXT ·m512MaskzReducePs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOV Z2, ret+72(FP)
	RET

// func m512ReducePs(a [16]float32, imm8 byte) [16]float32
TEXT ·m512ReducePs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - could be:
	// VREDUCEPS Z0, R9

	MOV Z1, ret+68(FP)
	RET

// func m512MaskReduceRoundPd(src [8]float64, k uint8, a [8]float64, imm8 byte, rounding int) [8]float64
TEXT ·m512MaskReduceRoundPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+136(FP),R12

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOV Z4, ret+144(FP)
	RET

// func m512MaskzReduceRoundPd(k uint8, a [8]float64, imm8 byte, rounding int) [8]float64
TEXT ·m512MaskzReduceRoundPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+72(FP),R11

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOV Z3, ret+80(FP)
	RET

// func m512ReduceRoundPd(a [8]float64, imm8 byte, rounding int) [8]float64
TEXT ·m512ReduceRoundPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VREDUCEPD

	MOV Z2, ret+76(FP)
	RET

// func m512MaskReduceRoundPs(src [16]float32, k uint16, a [16]float32, imm8 byte, rounding int) [16]float32
TEXT ·m512MaskReduceRoundPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+136(FP),R12

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOV Z4, ret+144(FP)
	RET

// func m512MaskzReduceRoundPs(k uint16, a [16]float32, imm8 byte, rounding int) [16]float32
TEXT ·m512MaskzReduceRoundPs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+72(FP),R11

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOV Z3, ret+80(FP)
	RET

// func m512ReduceRoundPs(a [16]float32, imm8 byte, rounding int) [16]float32
TEXT ·m512ReduceRoundPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+68(FP),R10

	// TODO: Code missing - uses instrunction: VREDUCEPS

	MOV Z2, ret+76(FP)
	RET

// func maskReduceRoundSd(src [2]float64, k uint8, a [2]float64, b [2]float64, imm8 byte, rounding int) [2]float64
TEXT ·maskReduceRoundSd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+56(FP),R13

	// TODO: Code missing - uses instrunction: VREDUCESD

	MOVOU X5, ret+64(FP)
	RET

// func maskzReduceRoundSd(k uint8, a [2]float64, b [2]float64, imm8 byte, rounding int) [2]float64
TEXT ·maskzReduceRoundSd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+40(FP),R12

	// TODO: Code missing - uses instrunction: VREDUCESD

	MOVOU X4, ret+48(FP)
	RET

// func reduceRoundSd(a [2]float64, b [2]float64, imm8 byte, rounding int) [2]float64
TEXT ·reduceRoundSd(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+36(FP),R11

	// TODO: Code missing - uses instrunction: VREDUCESD

	MOVOU X3, ret+44(FP)
	RET

// func maskReduceRoundSs(src [4]float32, k uint8, a [4]float32, b [4]float32, imm8 byte, rounding int) [4]float32
TEXT ·maskReduceRoundSs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+56(FP),R13

	// TODO: Code missing - uses instrunction: VREDUCESS

	MOVOU X5, ret+64(FP)
	RET

// func maskzReduceRoundSs(k uint8, a [4]float32, b [4]float32, imm8 byte, rounding int) [4]float32
TEXT ·maskzReduceRoundSs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+40(FP),R12

	// TODO: Code missing - uses instrunction: VREDUCESS

	MOVOU X4, ret+48(FP)
	RET

// func reduceRoundSs(a [4]float32, b [4]float32, imm8 byte, rounding int) [4]float32
TEXT ·reduceRoundSs(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)
	MOVQ rounding+36(FP),R11

	// TODO: Code missing - uses instrunction: VREDUCESS

	MOVOU X3, ret+44(FP)
	RET

// func maskReduceSd(src [2]float64, k uint8, a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·maskReduceSd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCESD

	MOVOU X4, ret+56(FP)
	RET

// func maskzReduceSd(k uint8, a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·maskzReduceSd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCESD

	MOVOU X3, ret+40(FP)
	RET

// func reduceSd(a [2]float64, b [2]float64, imm8 byte) [2]float64
TEXT ·reduceSd(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCESD

	MOVOU X2, ret+36(FP)
	RET

// func maskReduceSs(src [4]float32, k uint8, a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·maskReduceSs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCESS

	MOVOU X4, ret+56(FP)
	RET

// func maskzReduceSs(k uint8, a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·maskzReduceSs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCESS

	MOVOU X3, ret+40(FP)
	RET

// func reduceSs(a [4]float32, b [4]float32, imm8 byte) [4]float32
TEXT ·reduceSs(SB),7,$0
	MOVOU a+0(FP),X0
	MOVOU b+16(FP),X1
	// FIXME: Immediate parameter should be removed (imm8 byte)

	// TODO: Code missing - uses instrunction: VREDUCESS

	MOVOU X2, ret+36(FP)
	RET

// func maskXorPd(src [2]float64, k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskXorPd(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VXORPD

	MOVOU X3, ret+52(FP)
	RET

// func maskzXorPd(k uint8, a [2]float64, b [2]float64) [2]float64
TEXT ·maskzXorPd(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VXORPD

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskXorPd(src [4]float64, k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskXorPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VXORPD

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzXorPd(k uint8, a [4]float64, b [4]float64) [4]float64
TEXT ·m256MaskzXorPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256d
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VXORPD

	MOV Y2, ret+68(FP)
	RET

// func m512MaskXorPd(src [8]float64, k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskXorPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VXORPD

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzXorPd(k uint8, a [8]float64, b [8]float64) [8]float64
TEXT ·m512MaskzXorPd(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VXORPD

	MOV Z2, ret+132(FP)
	RET

// func m512XorPd(a [8]float64, b [8]float64) [8]float64
TEXT ·m512XorPd(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512d
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VXORPD Z0, Z1

	MOV Z1, ret+128(FP)
	RET

// func maskXorPs(src [4]float32, k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskXorPs(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2
	MOVOU b+36(FP),X3

	// TODO: Code missing - uses instrunction: VXORPS

	MOVOU X3, ret+52(FP)
	RET

// func maskzXorPs(k uint8, a [4]float32, b [4]float32) [4]float32
TEXT ·maskzXorPs(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1
	MOVOU b+20(FP),X2

	// TODO: Code missing - uses instrunction: VXORPS

	MOVOU X2, ret+36(FP)
	RET

// func m256MaskXorPs(src [8]float32, k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskXorPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+36(FP),Y2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+68(FP),Y3

	// TODO: Code missing - uses instrunction: VXORPS

	MOV Y3, ret+100(FP)
	RET

// func m256MaskzXorPs(k uint8, a [8]float32, b [8]float32) [8]float32
TEXT ·m256MaskzXorPs(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV a+4(FP),Y1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256
	//	MOV b+36(FP),Y2

	// TODO: Code missing - uses instrunction: VXORPS

	MOV Y2, ret+68(FP)
	RET

// func m512MaskXorPs(src [16]float32, k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskXorPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+68(FP),Z2
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+132(FP),Z3

	// TODO: Code missing - uses instrunction: VXORPS

	MOV Z3, ret+196(FP)
	RET

// func m512MaskzXorPs(k uint16, a [16]float32, b [16]float32) [16]float32
TEXT ·m512MaskzXorPs(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+4(FP),Z1
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+68(FP),Z2

	// TODO: Code missing - uses instrunction: VXORPS

	MOV Z2, ret+132(FP)
	RET

// func m512XorPs(a [16]float32, b [16]float32) [16]float32
TEXT ·m512XorPs(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV a+0(FP),Z0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512
	//	MOV b+64(FP),Z1

	// TODO: Code missing - could be:
	// VXORPS Z0, Z1

	MOV Z1, ret+128(FP)
	RET

