#include<stdio.h>

int Power(int n,int m){
    if(m<=1){
        return m;
    }
    else{
        return n*Power(n,m-1);
    }
}

void main(){
    int ans = Power(2,5);
    printf("%d",ans);
}