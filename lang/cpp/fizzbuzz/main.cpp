#include <iostream>
#include <cstdlib>

int main(int argc, char *argv[]) {
    int n = (argc > 1) ? std::atoi(argv[1]) : 100;

    for (int i = 1; i <= n; i++) {
        if (i % 15 == 0) {
            std::cout << "FizzBuzz\n";
        } else if (i % 3 == 0) {
            std::cout << "Fizz\n";
        } else if (i % 5 == 0) {
            std::cout << "Buzz\n";
        } else {
            std::cout << i << "\n";
        }
    }
    return 0;
}
