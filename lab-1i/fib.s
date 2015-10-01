	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r4, r5, r6, lr}

	mov r4, #-1				@ R4 = -1
	mov r5, #1				@ R5 = 1
	mov r6, r0				@ R6 = R0

.Loop:
	cmn r6, #1				@ while (R6 >= 0)
	ble .EndLoop

	add r0, r4, r5			@ R0 = R4 + R5
	mov r4, r5				@ R4 = R5
	mov r5, r0				@ R5 = R0

	subs r6, r6, #1			@ R6 = R6 - 1 (update flags)
	b .Loop					@ goto .Loop

.EndLoop:

	pop {r4, r5, r6, pc}	@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
