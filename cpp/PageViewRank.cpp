#include <iostream>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <cstdlib>
#include <map>
using namespace std;

int main( int argc, char** argv) 
{
    map<int,int>Map;
    
    //printf("%s \n %s\n", argv[0],argv[1]);
    float start = clock();
    freopen(argv[1],"r",stdin);
    int str;
    int t = 0;
    while( scanf("%d %d",&str, &t) != EOF )
    {
        Map[str] += t;
    }
    float end = clock();
    printf("time = %f\n", (end -start) / CLOCKS_PER_SEC);
    map<int,int>::iterator it = Map.begin();
    int num = 0;
    for(;it!=Map.end();it++)
    {
        if(num > 10)break;
        else num++;
        printf("%d %d\n",(*it).first,(*it).second);
    
    }

    return 0;
}
