global _start: 


; taking input from user and printing it value to the screen



section .text

_start:
	
	mov rax,0x1
	mov rdi,0x1
	mov rsi,var1
	mov rdx,length1
	syscall
	

user_input:
	mov rax,0x0
	mov rdi,0x0
	mov rsi,input_variable
	mov rdx,100
	syscall
	mov rbx,rax

; here read syscall is going to return that how many characther user has entered and it will return inside the rax register
; so why we are moving rax register value to rbx otherwise the rax register value is going to overwritten



label2:
	mov rax,0x1
	mov rdi,0x1
	mov rsi,var2
	mov rdx,length2
	syscall

	

; here now we are going to print the user value that user has entered 

printing_user_value:
	mov rax,0x1
	mov rdi,0x1
	mov rsi,input_variable
	mov rdx,rbx
	syscall




exit_program:  
		
	mov rax,60
	mov rdi,0x0
	syscall







section .data
	var1: db "Enter your name : "
	length1: equ $-var1
	var2: db "Your Name is : "
	length2: equ $-var2


; here we have to create the .bss section because . in this .bss section it is going to contain that variable which value is not known 
; to us. that why they will come to the .bss section

section .bss
	input_variable: resb 100

	; here resb means reserved byte means it is going to take the  input from the user only first 100 charachter and that will data type is byte thats why we ar writin resb 
; 100 means that how many characther bytes we want to take from the user

	
