#include <stdio.h>
 
int func(int a, int b)
{
    return a + b;
}
 
typedef struct {
    int (*myfunc)(int, int);
} S;
 
int main(int argc, char** argv)
{
    int (*func_p)(int, int) = func;
    S s = {func};
    printf("%d\n", (*func_p)(2, 5)); /* 7 */
    printf("%d\n", (*s.myfunc)(6, -10)); /* -4 */
    return 0;
}

