.data
	numprompt: .asciiz "How many numbers would you like to enter?"
	enterprompt: .asciiz "Enter the number: "
	resultprompt: .asciiz "The average of the entered numbers is:\n" 
	quotientprompt: .asciiz "quotient: "
	remainderprompt: .asciiz "\nremainder: "

.text

main:
	li $v0,4
	la $a0, numprompt
	syscall

	li $v0, 5
	syscall

	move $t0, $v0		#n
	add $t1, $zero,1	#i 
	move $t2, $zero		#sum

	for:

	bgt $t1, $t0, endloop

	li $v0,4
	la $a0, enterprompt
	syscall

	li $v0,5
	syscall
	move $s1, $v0
	add $t2,$t2,$s1
	add $t1,$t1,1

	j for

	endloop:

	li $v0, 4
	la $a0, resultprompt
	syscall

	div $t2, $t0

	mfhi $t3
	mflo $t4

	li $v0,4
	la $a0, quotientprompt
	syscall

	li $v0,1
	move $a0, $t4
	syscall

	li $v0,4
	la $a0, remainderprompt
	syscall

	li $v0,1
	move $a0, $t3
	syscall

exit:
	li $v0, 10
	syscall







