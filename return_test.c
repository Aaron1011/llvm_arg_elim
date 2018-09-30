#include <stdio.h>

static int unused_return(int arg) {
    printf("Called with arg: %d\n", arg);
    return 5;
}

int main() {
    unused_return(20);
    printf("Hello from C!\n");
}
