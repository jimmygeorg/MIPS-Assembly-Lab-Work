.data
    str: .space 15
    msg: .asciiz "Enter a string: "
    msg2: .asciiz "\nReversed: "

.text
    .globl main
	main:
    		li $v0, 4
		la $a0, msg
    		syscall

    		li $v0, 8
    		li $a1, 15
    		la $a0, str
    		syscall
    
    		li $t0, 0 #counter
    		li $t1 '\0' #breakpoint
    		
    		la $t2, str
    		
    		FindZero:	#Search until you find \0
    			lb $t3, 0($t2)
    			beq $t3, $t1, ExitZero
    			addi $t0, $t0, 1
    			addi $t2, $t2, 1    
    			
    			j FindZero		
    		ExitZero:
        		li $v0, 4
		la $a0, msg2
    		syscall

        		
    		Print:
    			beqz $t0, ExitPrint
    			subi $t0, $t0, 1
    			subi $t2, $t2, 1    
    			
    			lb $t4, 0($t2)
    			la $a0, ($t4)
    			li $v0, 11
    			syscall
    				
    			j Print
    		ExitPrint:
    		
    		
    		li $v0, 10
    		syscall
