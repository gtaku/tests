#include <stdio.h>

typedef struct list {
    int n;
    struct list *next;
} list;

int main(int argc, char** argv)
{
    list a = {1};
    list b = {2};
    list c = {3};
    a.next = &b;
    b.next = &c;
    printf("%d\n", a.next->next->n); /* 3 */
    return 0;
}

