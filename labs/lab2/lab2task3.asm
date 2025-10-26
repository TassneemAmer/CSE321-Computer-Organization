.data
choiceprompt: .asciiz "Choose a number between 1 and 4: "
oneprompt: .asciiz "You choose option 1!"
twoprompt: .asciiz "You choose option 2!"
threeprompt: .asciiz "You choose option 3!"
fourprompt: .asciiz "You choose option 4!"
invalidprompt: .asciiz "Invalid input"

.text
main:

li $v0,4
la $a0, choiceprompt
syscall

li $v0,5
syscall

move $t0,$v0

li $t1,1
li $t2,2
li $t3,3
li $t4,4

beq $t0,$t1, option1
beq $t0,$t2, option2
beq $t0,$t3, option3
beq $t0,$t4, option4
j erroroption

option1:
li $v0,4
la $a0, oneprompt
syscall
j exit

option2:
li $v0,4
la $a0, twoprompt
syscall
j exit

option3:
li $v0,4
la $a0, threeprompt
syscall
j exit

option4:
li $v0,4
la $a0, fourprompt
syscall
j exit

erroroption:
li $v0,4
la $a0, invalidprompt
syscall
j exit

exit:
li $v0, 10
syscall







