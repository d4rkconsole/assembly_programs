; assembly  program that print hello world to the screen
global _start:



section .data
        ; our all initiliaze variables stays in .data section

        variable1: db "hello world!"


; here we have created our variable which name is variable1 and db means data bytes






section .text
_start: ; _start: is a type of function from where our assembly code start executing


        ; printing hello world  in assembly

        mov rax,0x1 ; value for write syscall store inside rax register
        mov rdi,0x1 ; passing the first argument

        mov rsi,variable1 ; second argument
        mov rdx,0xc  ; third argument
        syscall ; here we are doing write syscall to kernal to print hacking onto screen using assembly


        ; exiting the program

        mov rax,60 ; moving 60 value to rax register
        mov rdi,0x0 ; passing the 1;st argument to the exit syscall

        syscall ; doing exit syscall to the kernal
