
int Mono1_2_true() {
  int x;
  x = 0;
  while (x < 100000000) {
     invariant: (x >= 0) and (x - 10000002 <= 0);
    if (x < 10000000) {
      x = x + 1;
    } else {
      x = x + 2;
    }
  }
  return x;
  //__VERIFIER_assert(x == 100000001) ;
}
