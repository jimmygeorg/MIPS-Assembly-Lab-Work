.data
	str: .space 100
	msg: .asciiz "Enter a string"
	msg2: .asciiz "Enter a number"
	num: .word 0
	
.text
.globl main
	main:
	li $v0, 8
	li $a1, 100
	la $a0, str
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, num
	
	
	li $v0, 11	
	la $a0, str	#���������� �� ��������� ��� ���������
	lw $t0, num	#���������� ��� ������
	addi $t0, $t0, -1 #��������� 1 ��� �� �������� ��� �� 0
	add $a0, $a0, $t0 #���������� ���� ���������� ���� ������� �� string ��� ������
	lb $a0, 0($a0)	#���������� �� byte ��� ������������� ����� ��� �����
	syscall
	
	
	li $v0, 10
	syscall
