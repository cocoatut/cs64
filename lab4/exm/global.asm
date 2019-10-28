.data
	myV: .word 42
.text
main:
	la $t0, myV
	lw $t1,1($t0)
	
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 10
	syscall
