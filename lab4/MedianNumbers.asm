# MedianNumbers.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

.data

	# TODO: Complete these declarations / initializations

	wel: .asciiz "Enter the next number:\n"

	med: .asciiz "Median: "


#Text Area (i.e. instructions)
.text

main:

	# TODO: Write your code here
	li $v0, 4
	la $a0, wel
	syscall

	li $v0, 5
	syscall
	move $t0,$v0
	
	li $v0, 4
        la $a0, wel
        syscall

        li $v0, 5
        syscall
        move $t1,$v0

	li $v0, 4
        la $a0, wel
        syscall

        li $v0, 5
        syscall
        move $t2,$v0 

	bgt $t0, $t1, first
	blt $t0, $t1, second
first:
	bgt $t1, $t2, sec_med
	bgt $t0, $t2, thi_med
	j fir_med
second:
	bgt $t0, $t2, fir_med
	bgt $t1, $t2, thi_med
	j sec_med
fir_med:
	li $v0, 4
	la $a0, med
	syscall
	li $v0,1
	move $a0,$t0
	syscall
	j exit
sec_med:
	li $v0, 4
        la $a0, med
        syscall
        li $v0,1
        move $a0,$t1
        syscall
	j exit
thi_med:
	li $v0, 4
        la $a0, med
        syscall
        li $v0,1
        move $a0,$t2
        syscall
	j exit
exit:
	# Exit
	li $v0, 10
	syscall

