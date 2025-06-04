#include<stdio.h>

void main(){
    int a = 2;
    int b = 5;
    int ans = 1;

    for(int i = 1; i <=b; i++){
        ans *= a;
    }
    printf("%d",ans);

}