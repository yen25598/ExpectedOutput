// input :: chuoi ki tu tu ban phim                 yuht
// output :: chuoi nguoc lai trong rev.txt.....     thuy
#include <iostream>
#include <fstream>
#include <cstring>
using namespace std;

int test( int b, int c){


	for (int i=0; i<2; i++){
		for (int j=10; j<3; --j){
			c = i + j;
		}
	}

	if( b == c){
			b = 111;
			c = 444;
		} else if ( b < c) {
			c = 222;

		} else{
			c = b;
			c = 333;
		}
	return b + c;
}
