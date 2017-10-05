#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
   int i = 1;
   int total = 0;
   while (i < argc) {
      total = total + atoi(argv[i]);
      i = i + 1;
   }
   printf("%d\n", total);
}
