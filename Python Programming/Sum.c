#include<stdio.h>

void main(){
    int n = 10;
    int sum = 0;

    for(int i = 1;i<=n;i++){
        sum = sum + i;
    }
    printf("Sum is: ");
    printf("%d",sum);
}