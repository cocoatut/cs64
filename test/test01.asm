.data
name: .word 42

.text
main:
        la $a0, name
        lw $t1 0($t0)

        li $v0,1
        move $a0,$t1
        syscall

        li $v0,10
        syscall

        li $t1,5
        sw $t1,0($t0)

        li $t1,0
        lw $t1,0($t0)

        li $v0,1
        move $a0,$t1
        syscall

	li $v0,10
	syscall
