#include <iostream>
#include <time.h>
#include <stdio.h>
#include <string.h>
#include <cstdlib>
using namespace std;
int num = 10000000;
int base = 3;
int main()
{
    freopen("input_1","w",stdout);
    for(int i = 0; i < num; i++)
    {
        int len = rand() % base + 4;
        for(int j = 0; j < len; j++)
        {
            printf("%c", '1'+rand()%2);
        }
        printf(" %d\n", rand() % 100);
    }
    return 0;
}
