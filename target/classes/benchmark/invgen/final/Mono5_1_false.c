//false
int Mono5_1_false() {
	int x;
	int y;
	int z;
	x = 0;
	y - 10000000 = 0;
	z - 5000000 = 0;
	while (x < y) {
     invariant: (x + z >= 0) and (x + z - 1 >= 0) and (z - 5000000 <= 0) and (x + z - 5000000 <= 0);
		if (x < 5000000) {
			x = x + 1;
		} else {
			z = z - 1;
			x = x + 1;
		}
	}
//  __VERIFIER_assert(z!=0);
	return z;
}
