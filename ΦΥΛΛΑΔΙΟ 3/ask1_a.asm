.data
char: .asciiz "a"


.text
.globl main
main:

li $v0 11		#��������� �� �������� string
la $a0, char	#���������� �� ��������� ��� char �� ���� ����������
lb $a0, 0($a0)
syscall


li $v0, 10
syscall