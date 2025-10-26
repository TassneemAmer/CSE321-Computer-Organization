.data

firstNumPrompt:     .asciiz "Enter first number:  "
secondNumPrompt:    .asciiz "Enter second number: "
thirdNumPrompt:     .asciiz "Enter third number:  "
fourthNumPrompt:    .asciiz "Enter fourth number: "
quotientPrompt:     .asciiz "The  quotient is: "
remainderprompt:    .asciiz ", The  remainder is: "

.text

main:
li $v0,4
la $a0, firstNumPrompt
syscall

li $v0,5
syscall
move $t1,$v0

li $v0,4
la $a0, secondNumPrompt
syscall

li $v0,5
syscall
move $t2,$v0

li $v0,4
la $a0, thirdNumPrompt
syscall

li $v0,5
syscall
move $t3,$v0

li $v0,4
la $a0, fourthNumPrompt
syscall

li $v0,5
syscall
move $t4,$v0 


add $s1, $t1, $t2
add $s1, $s1, $t3
add $s1, $s1, $t4
li $t5, 4
div $s1, $t5
mflo $s2
mfhi $s3

li $v0,4
la $a0, quotientPrompt
syscall

li $v0,1
move $a0,$s2
syscall

li $v0,4
la $a0, remainderprompt
syscall

li $v0,1
move $a0,$s3
syscall

exit:
    li $v0, 10
    syscall