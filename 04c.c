#include <stdio.h>
extern long factorial(long n);

int main() {
    int num;
    
    printf("Enter a number to calculate factorial: ");
    scanf("%d", &num);
    
    if (num < 0) {
        printf("Factorial is not defined for negative numbers.\n");
        return 1;
    }
    
    if (num > 20) {
        printf("Number too large (overflow risk). Please enter <= 20.\n");
        return 1;
    }
    
    long result = factorial(num);
    
    printf("Factorial of %d = %ld\n", num, result);
    
    return 0;
}
