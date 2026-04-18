#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    int n = (argc > 1) ? atoi(argv[1]) : 100;

    for (int i = 1; i <= n; i++) {
        if (i % 15 == 0) {
            printf("FizzBuzz\n");
        } else if (i % 3 == 0) {
            printf("Fizz\n");
        } else if (i % 5 == 0) {
            printf("Buzz\n");
        } else {
            printf("%d\n", i);
        }
    }
    return 0;
}
