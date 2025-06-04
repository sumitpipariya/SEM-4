#include<stdio.h>

int Fact(int n){
    if(n==1){
        return 1;
    }
    else{
        return n*Fact(n-1);
    }
}

void main(){
    int n = 5;
    int f = Fact(n);
    printf("%d",f);
}