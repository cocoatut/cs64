# Factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

# Assembly version of:
#   int n, fn=1;
#   cout << "Enter the number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial is:\n" << fn << "\n";
#
.data

	# TODO: Write your initializations here
	wel:
		.asciiz "Enter the number:\n"
	end:
		.asciiz "Factorial is:\n"
#Text Area (i.e. instructions)
.text
main:
	la $a0, wel
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t2,2
	li $t1,1
	li $t3,0
	li $t4,2
	li $t5,0
	beq $t0, $zero, out
	beq $t0, $t1, out

        addi $t3,$t0,-1
        mult $t0,$t3
        mflo $t4
	addi $t0,$t0,-1
loop:
	ble $t3, $t1,out_4
	addi $t3,$t3,-1
	mult $t3,$t4
	mflo $t4
	j loop 
	# TODO: Write your code here
out_4:
	la $a0, end
        li $v0, 4
        syscall
        li $v0, 1
        move $a0,$t4
        syscall
        j exit
out:
	la $a0, end
	li $v0, 4
	syscall
	li $v0, 1
	move $a0,$t1
	syscall
	j exit	
exit:
	# Exit
	li $v0, 10
	syscall
