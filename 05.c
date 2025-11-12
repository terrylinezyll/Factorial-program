//alternative recursion
#include <stdio.h>
int factorial(int n) {
    if (n < 0) {
        return -1; // Error for negative numbers
    } else if (n == 0) {
        return 1; // Base case: factorial of 0 is 1
    } else {
        return n * factorial(n - 1); // Recursive case
    }
}
void main() {
    int n;
    printf("Enter a positive integer: ");
    scanf("%d", &n);
    int result = factorial(n);
    if (result == -1) {
        printf("Error: Factorial is not defined for negative numbers.\n");
    } else {
        printf("Factorial of %d = %d\n", n, result);
    }
}