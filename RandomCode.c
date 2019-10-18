#include "stdio.h"
#include "stdlib.h"

// AND:"&" 0&0->0; 0&1->0; 1&1->1
// OR:"|"  0|0->0; 0|1->1; 1|1->1
// XOR:"^" 0^0->0; 0^1->1; 1v1->0
int multiplyBy8(int v)
{
	v=(v<<3);
	// TODO: multiply the number by 8
	return v;
}

int setBit6to1(int v)
{
	int x=1;
	x=(x<<6);
	v=(x|v);
	// TODO: set bit 6 to 1
	return v;
}

int setBit3to0(int v)
{
	int x=1;
	x=(x<<3);
	v=(v& (~x));
	// TODO: set bit 3 to 0
	return v;
}
	
int flipBit5(int v)
{
	int x=1;
	x=(x<<5);
	v=(v^x);
	// TODO: flip bit 5 (if it is 0, make it 1.  If 0, make 1)
	return v;
}
	
int ifBit7is0(int v)
{
	int x=1;
	x=(x<<7);
	if ((x&v)==0){
		v=1;
	}
	else{
		v=0;
	}
	// TODO: check to see if bit 7 is a 0 - return 1 if true, 0 if false
	return v;
}

int ifBit3is1(int v)
{
	int x=1;
	x=(x<<3);
	if ((x&v)==0){
		v=0;
	}
	else{
		v=1;
	}
	// check to see if bit 3 is a 1 - return 1 if true, 0 if false
	return v;
}

int unsignedBits0through5(int v)
{
	int x=63;// where x=2^6-1, which is 111111 in binary
	v=(x&v);
	// return the unsigned value in bits 0 through 5
	return v;
}

int unsignedBits6through9(int v)
{
	int x=15;// where x=2^4-1, which is 1111 in binary
	x=(x<<6);// it becomes 1111000000
	v=(x&v);
	v=(v>>6); //Bit Shift to the right for showing only the bit from 6 to 9 
	// return the unsigned value in bits 6 through 9
	return v;
}

int signedBits0through5(int v)
{
	if ((v&63)&(1<<5)==0)
		return(v&63);
	else
		return ~(v&63);
	// return the signed value in bits 0 through 5
	// return v;
}

int signedBits6through9(int v)
{
	if ((v&1023)&(1<<9)==0)
		return(v&0x3c0)>>6;
	else
		return ~((v&0x3c0)>>6);

	// return the signed value in bits 6 through 9
	return v;
}

int setBits4through9(int v, int setValue)
{
	int x=31; //where x is 11111 in binary
	setValue=(setValue&x); //make sure we only want the last 5 bits
	setValue=(setValue<<4); //the prev. 5 bits and 0000
	x=(x<<4); //x now is 111110000
	v=(v&(~x)); //empty the bits from 4 through 9
	v=(v|setValue);

	// set bits 4 through 9 in v to become setValue
	return v;
}




