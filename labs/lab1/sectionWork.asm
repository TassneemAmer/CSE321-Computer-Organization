# Section work for Lab 1
 .data                                   # data segment
 hello:    .asciiz "Hello World"
 .text                                   # code segment
 main:
    li $v0, 4                           # syscall 4 = print string
    la $a0, hello                       # load address of string
    syscall
    li $v0, 10                          # syscall 10 = exit
    syscall 
