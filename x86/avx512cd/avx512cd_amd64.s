// func broadcastmbEpi64(k uint8) [16]byte
TEXT ·broadcastmbEpi64(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPBROADCASTMB2Q R8

	MOVOU X0, ret+4(FP)
	RET

// func m256BroadcastmbEpi64(k uint8) [32]byte
TEXT ·m256BroadcastmbEpi64(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPBROADCASTMB2Q R8

	MOV Y0, ret+4(FP)
	RET

// func m512BroadcastmbEpi64(k uint8) [64]byte
TEXT ·m512BroadcastmbEpi64(SB),7,$0
	MOVB k+0(FP),R8

	// TODO: Code missing - could be:
	// VPBROADCASTMB2Q R8

	MOV Z0, ret+4(FP)
	RET

// func broadcastmwEpi32(k uint16) [16]byte
TEXT ·broadcastmwEpi32(SB),7,$0
	MOVW k+0(FP),R8

	// TODO: Code missing - could be:
	// VPBROADCASTMW2D R8

	MOVOU X0, ret+4(FP)
	RET

// func m256BroadcastmwEpi32(k uint16) [32]byte
TEXT ·m256BroadcastmwEpi32(SB),7,$0
	MOVW k+0(FP),R8

	// TODO: Code missing - could be:
	// VPBROADCASTMW2D R8

	MOV Y0, ret+4(FP)
	RET

// func m512BroadcastmwEpi32(k uint16) [64]byte
TEXT ·m512BroadcastmwEpi32(SB),7,$0
	MOVW k+0(FP),R8

	// TODO: Code missing - could be:
	// VPBROADCASTMW2D R8

	MOV Z0, ret+4(FP)
	RET

// func conflictEpi32(a [16]byte) [16]byte
TEXT ·conflictEpi32(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VPCONFLICTD X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskConflictEpi32(src [16]byte, k uint8, a [16]byte) [16]byte
TEXT ·maskConflictEpi32(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VPCONFLICTD

	MOVOU X2, ret+36(FP)
	RET

// func maskzConflictEpi32(k uint8, a [16]byte) [16]byte
TEXT ·maskzConflictEpi32(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VPCONFLICTD R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256ConflictEpi32(a [32]byte) [32]byte
TEXT ·m256ConflictEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VPCONFLICTD Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskConflictEpi32(src [32]byte, k uint8, a [32]byte) [32]byte
TEXT ·m256MaskConflictEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VPCONFLICTD

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzConflictEpi32(k uint8, a [32]byte) [32]byte
TEXT ·m256MaskzConflictEpi32(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VPCONFLICTD R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512ConflictEpi32(a [64]byte) [64]byte
TEXT ·m512ConflictEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VPCONFLICTD Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskConflictEpi32(src [64]byte, k uint16, a [64]byte) [64]byte
TEXT ·m512MaskConflictEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VPCONFLICTD

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzConflictEpi32(k uint16, a [64]byte) [64]byte
TEXT ·m512MaskzConflictEpi32(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VPCONFLICTD R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func conflictEpi64(a [16]byte) [16]byte
TEXT ·conflictEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VPCONFLICTQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskConflictEpi64(src [16]byte, k uint8, a [16]byte) [16]byte
TEXT ·maskConflictEpi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VPCONFLICTQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzConflictEpi64(k uint8, a [16]byte) [16]byte
TEXT ·maskzConflictEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VPCONFLICTQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256ConflictEpi64(a [32]byte) [32]byte
TEXT ·m256ConflictEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VPCONFLICTQ Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskConflictEpi64(src [32]byte, k uint8, a [32]byte) [32]byte
TEXT ·m256MaskConflictEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VPCONFLICTQ

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzConflictEpi64(k uint8, a [32]byte) [32]byte
TEXT ·m256MaskzConflictEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VPCONFLICTQ R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512ConflictEpi64(a [64]byte) [64]byte
TEXT ·m512ConflictEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VPCONFLICTQ Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskConflictEpi64(src [64]byte, k uint8, a [64]byte) [64]byte
TEXT ·m512MaskConflictEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VPCONFLICTQ

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzConflictEpi64(k uint8, a [64]byte) [64]byte
TEXT ·m512MaskzConflictEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VPCONFLICTQ R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func lzcntEpi32(a [16]byte) [16]byte
TEXT ·lzcntEpi32(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VPLZCNTD X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskLzcntEpi32(src [16]byte, k uint8, a [16]byte) [16]byte
TEXT ·maskLzcntEpi32(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VPLZCNTD

	MOVOU X2, ret+36(FP)
	RET

// func maskzLzcntEpi32(k uint8, a [16]byte) [16]byte
TEXT ·maskzLzcntEpi32(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VPLZCNTD R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256LzcntEpi32(a [32]byte) [32]byte
TEXT ·m256LzcntEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VPLZCNTD Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskLzcntEpi32(src [32]byte, k uint8, a [32]byte) [32]byte
TEXT ·m256MaskLzcntEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VPLZCNTD

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzLzcntEpi32(k uint8, a [32]byte) [32]byte
TEXT ·m256MaskzLzcntEpi32(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VPLZCNTD R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512LzcntEpi32(a [64]byte) [64]byte
TEXT ·m512LzcntEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VPLZCNTD Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskLzcntEpi32(src [64]byte, k uint16, a [64]byte) [64]byte
TEXT ·m512MaskLzcntEpi32(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVW k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VPLZCNTD

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzLzcntEpi32(k uint16, a [64]byte) [64]byte
TEXT ·m512MaskzLzcntEpi32(SB),7,$0
	MOVW k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VPLZCNTD R8, Z1

	MOV Z1, ret+68(FP)
	RET

// func lzcntEpi64(a [16]byte) [16]byte
TEXT ·lzcntEpi64(SB),7,$0
	MOVOU a+0(FP),X0

	// TODO: Code missing - could be:
	// VPLZCNTQ X0, X0

	MOVOU X0, ret+16(FP)
	RET

// func maskLzcntEpi64(src [16]byte, k uint8, a [16]byte) [16]byte
TEXT ·maskLzcntEpi64(SB),7,$0
	MOVOU src+0(FP),X0
	MOVB k+16(FP),R9
	MOVOU a+20(FP),X2

	// TODO: Code missing - uses instrunction: VPLZCNTQ

	MOVOU X2, ret+36(FP)
	RET

// func maskzLzcntEpi64(k uint8, a [16]byte) [16]byte
TEXT ·maskzLzcntEpi64(SB),7,$0
	MOVB k+0(FP),R8
	MOVOU a+4(FP),X1

	// TODO: Code missing - could be:
	// VPLZCNTQ R8, X1

	MOVOU X1, ret+20(FP)
	RET

// func m256LzcntEpi64(a [32]byte) [32]byte
TEXT ·m256LzcntEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+0(FP),Y0

	// TODO: Code missing - could be:
	// VPLZCNTQ Y0

	MOV Y0, ret+32(FP)
	RET

// func m256MaskLzcntEpi64(src [32]byte, k uint8, a [32]byte) [32]byte
TEXT ·m256MaskLzcntEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV src+0(FP),Y0
	MOVB k+32(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+36(FP),Y2

	// TODO: Code missing - uses instrunction: VPLZCNTQ

	MOV Y2, ret+68(FP)
	RET

// func m256MaskzLzcntEpi64(k uint8, a [32]byte) [32]byte
TEXT ·m256MaskzLzcntEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M256i
	//	MOV a+4(FP),Y1

	// TODO: Code missing - could be:
	// VPLZCNTQ R8, Y1

	MOV Y1, ret+36(FP)
	RET

// func m512LzcntEpi64(a [64]byte) [64]byte
TEXT ·m512LzcntEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+0(FP),Z0

	// TODO: Code missing - could be:
	// VPLZCNTQ Z0

	MOV Z0, ret+64(FP)
	RET

// func m512MaskLzcntEpi64(src [64]byte, k uint8, a [64]byte) [64]byte
TEXT ·m512MaskLzcntEpi64(SB),7,$0
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV src+0(FP),Z0
	MOVB k+64(FP),R9
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+68(FP),Z2

	// TODO: Code missing - uses instrunction: VPLZCNTQ

	MOV Z2, ret+132(FP)
	RET

// func m512MaskzLzcntEpi64(k uint8, a [64]byte) [64]byte
TEXT ·m512MaskzLzcntEpi64(SB),7,$0
	MOVB k+0(FP),R8
	// FIXME: Unimplemented. Unknown MOVE postfix for type x86.M512i
	//	MOV a+4(FP),Z1

	// TODO: Code missing - could be:
	// VPLZCNTQ R8, Z1

	MOV Z1, ret+68(FP)
	RET

