.data
char: .asciiz "a"


.text
.globl main
main:

li $v0 11		#ετοιμασου να τυπωσεις string
la $a0, char	#φορτώνουμε τη διευθυνση του char σε εναν καταχωρητη
lb $a0, 0($a0)
syscall


li $v0, 10
syscall