#include <stdio.h>

int main() {
    int n, i;
    unsigned long long factorial = 1; //use unsigned long long to handle larger factorials
    
    printf("Enter a positive integer: ");
    scanf("%d", &n);
    
    // Check for negative numbers
    if (n < 0) {
        printf("Error: Factorial is not defined for negative numbers.\n");
    }
    // Factorial of 0 is 1
    else if (n == 0) {
        printf("Factorial of 0 = 1\n");
    }
    else {
        // Calculate factorial
        for (i = 1; i <= n; i++) {
            factorial *= i;
        }
        printf("Factorial of %d = %llu\n", n, factorial);
    }
    
    return 0;
}