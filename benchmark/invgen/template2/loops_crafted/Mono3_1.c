//false
int Mono3_1() {
  int x, y;
  x = 0;
  y = 0;
  while (x < 1000000) {
    if (x < 500000) {
	    y = y + 1;
      x = x + 1;
    } else {
	    y = y - 1;
      x = x + 1;
    } 
  }
//  __VERIFIER_assert(y!=0) ;
  return y;
}