// func readfsbaseU32() uint32
TEXT ·readfsbaseU32(SB),7,$0

	// TODO: Code missing - uses instrunction: RDFSBASE

	MOVL $0, ret+0(FP)
	RET

// func readfsbaseU64() uint64
TEXT ·readfsbaseU64(SB),7,$0

	// TODO: Code missing - uses instrunction: RDFSBASE

	MOVQ $0, ret+0(FP)
	RET

// func readgsbaseU32() uint32
TEXT ·readgsbaseU32(SB),7,$0

	// TODO: Code missing - uses instrunction: RDGSBASE

	MOVL $0, ret+0(FP)
	RET

// func readgsbaseU64() uint64
TEXT ·readgsbaseU64(SB),7,$0

	// TODO: Code missing - uses instrunction: RDGSBASE

	MOVQ $0, ret+0(FP)
	RET

// func writefsbaseU32(a uint32) 
TEXT ·writefsbaseU32(SB),7,$0
	MOVL a+0(FP),R8

	// TODO: Code missing - could be:
	// WRFSBASE R8

	RET

// func writefsbaseU64(a uint64) 
TEXT ·writefsbaseU64(SB),7,$0
	MOVQ a+0(FP),R8

	// TODO: Code missing - could be:
	// WRFSBASE R8

	RET

// func writegsbaseU32(a uint32) 
TEXT ·writegsbaseU32(SB),7,$0
	MOVL a+0(FP),R8

	// TODO: Code missing - could be:
	// WRGSBASE R8

	RET

// func writegsbaseU64(a uint64) 
TEXT ·writegsbaseU64(SB),7,$0
	MOVQ a+0(FP),R8

	// TODO: Code missing - could be:
	// WRGSBASE R8

	RET

