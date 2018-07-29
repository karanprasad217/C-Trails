#define ANSI_ANY "\x1b[33m"
#define ANSI_ANY2 "\x1b[44m"
#define ANSI_DEFAULT "\x1b[0m"
#include<stdio.h>
int main(){
int upper;
float lower,step,temp;
printf(ANSI_ANY2"FAHRANHEIT TO CELSIUS CONVERTER\n"ANSI_DEFAULT);
printf(ANSI_ANY"This program will take the lower bound temperature, upper bound temperature and a step constant from the user.\n\n"ANSI_DEFAULT);
printf("Enter lower bound temperature(in Fahranheit) ::: ");
scanf("%f", &lower);
printf("Enter upper bound temperature(in Fahranheit) ::: ");
scanf("%d", &upper );
printf("Enter the steps ::: ");
scanf("%f", &step);
while(upper>lower){
temp = 5*(lower-32)/9;
printf("\nFahranheit :: %0.4lf <==> Celsius :: %0.4f \n",lower,temp);
lower += step;
}
}

