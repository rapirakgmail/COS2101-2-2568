#include <stdio.h>
//initvalue.cpp 
int main( )
{
    float f= 2.0; //lare f as float 
    int i; //declare i as integer
   
   printf("\nint i = %d,  address = %p , sizeof(i) = %ld", i,  (void*)&i,sizeof(i) );
   printf("\nfloat f = %f, address = %p, sizeof(f)= %ld", f,  (void*)&f,sizeof(f) );
   return 0 ;
}


