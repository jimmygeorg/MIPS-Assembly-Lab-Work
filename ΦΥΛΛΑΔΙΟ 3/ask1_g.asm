.data
str: .space 100
msg1: .asciiz "Enter your first name"
msg2: .asciiz "Enter your last name"

.text
.globl main
	main:
		li $v0, 8	#��������� �� ��������� string
		li $a1, 100	#���������� �� ������� ����� ��� string
		la $a0, str	#���������� ���� a0 �� ��������� ������ ���� �� ����������� �� string
		syscall
		
		
		li $v0, 11
		la $a0, '\n'
		syscall
		
		li $v0, 4	#��������� �� ���������� �� string
		la $a0, str	#���������� �� ��������� ������ ���� ����� ������������ �� string
		syscall
		
		
		li $v0, 10
		syscall