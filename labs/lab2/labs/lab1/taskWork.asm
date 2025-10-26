# Task work for Lab 1
.data
name: .asciiz "Name:    "
me: .asciiz "Tassneem Amin Gamil Amin"
id: .asciiz "ID:      "
me2: .asciiz "no IDs yet"
course: .asciiz "Course:  "
me3: .asciiz "CSE321-Computer-Organization"
newline: .asciiz "\n"
.text
main: 
	li $v0, 4
	la $a0, name
	syscall

	li $v0, 4
	la $a0, me
	syscall

	li $v0, 4
	la $a0, newline
	syscall

	li $v0, 4
	la $a0, id
	syscall

	li $v0, 4
	la $a0, me2
	syscall

	li $v0, 4
	la $a0, newline
	syscall

	li $v0, 4
	la $a0, course
	syscall

	li $v0, 4
	la $a0, me3
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall	

    	li $v0, 10
    	syscall
