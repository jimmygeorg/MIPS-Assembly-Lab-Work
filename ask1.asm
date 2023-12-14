#��������� ��� �� �������� ��� string ������ �� ���� 15 ���������� ��� �� ��������� ��
#������ ��� ���������� ��� ����������� (Y�������: ������ �� �������� �� string ����� ��
#������ �� ��������� �� ascii ������ 0). 


.data
	str: .space 15
	msg: .asciiz "You entered "
	msg2: .asciiz " characters"

.text
.globl main
	main:
	
	li $v0, 8
	li $a1, 15
	la $a0, str
	syscall
	

	move $s0, $0 #number of characters
	Loop:
		lb $t0, 0($a0)  # Load the current character
        		beqz $t0, Exit  # Exit loop if the current character is null (ASCII 0)

        		addi $s0, $s0, 1  # Increment the number of characters
        		addi $a0, $a0, 1  # Move to the next character in the string

        		j Loop  # Jump back to the beginning of the loop
	Exit:
	
	sub $s0, $s0, 1
	
	li $v0, 4
	la $a0, msg
	syscall 
	
	li $v0, 1
	move $a0, $s0
	syscall

	li $v0, 4
	la $a0, msg2
	syscall
	
	
	
	li $v0, 10
	syscall
